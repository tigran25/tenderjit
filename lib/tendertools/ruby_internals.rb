require "rbconfig"
require "tendertools/mach-o"
require "tendertools/dwarf"
require "tendertools/ar"
require "fiddle"
require "fiddle/struct"

module TenderTools
  class RubyInternals
    class DebugEnumVisitor
      def initialize unit, debug_strs
        @unit       = unit
        @debug_strs = debug_strs
        @all_dies   = unit.die.to_a
      end

      def visit unit, die, acc
        _visit unit, die, [], acc
      end

      private

      def _visit unit, die, stack, acc
        stack.push die

        if respond_to?(die.tag.identifier, true)
          acc = send die.tag.identifier, unit, die, stack, acc
        end
        if die.type
          acc = _visit unit, find_type(die), stack, acc
        end
        die.children.each { |child|
          acc = _visit unit, child, stack, acc
        }

        stack.pop

        acc
      end

      def DW_TAG_enumerator unit, die, stack, acc
        acc[die.name(@debug_strs)] = die.const_value
        acc
      end

      def find_type die
        @all_dies.bsearch { |c_die| die.type <=> c_die.offset }
      end
    end

    def self.find_archive
      File.open(RbConfig.ruby) do |f|
        my_macho = MachO.new f
        my_macho.each do |section|
          if section.symtab?
            return section.nlist.find_all(&:archive?).map(&:archive).uniq.first
          end
        end
      end
    end

    class TypeBuilder
      attr_reader :debug_info, :debug_strs, :debug_abbrev

      Type = Struct.new(:die, :fiddle)

      def initialize debug_info, debug_strs, debug_abbrev
        @debug_info   = debug_info
        @debug_strs   = debug_strs
        @debug_abbrev = debug_abbrev
        @known_types  = []
      end

      def build
        debug_info.compile_units(debug_abbrev.tags).each do |unit|
          top = unit.die
          all_dies = top.to_a
          top.children.each do |die|
            next if die.tag.user?

            find_or_build die, all_dies
          end
        end
        @known_types.compact.each_with_object({}) do |type, hash|
          name = type.die.name(debug_strs)
          hash[name] = type.fiddle if name
        end
      end

      def find_or_build die, all_dies
        object = @known_types[die.offset]
        return object.fiddle if object

        case die.tag.identifier
        when :DW_TAG_structure_type
          fiddle = build_fiddle(die, all_dies, Fiddle::CStruct)
          @known_types[die.offset] = Type.new(die, fiddle)
          fiddle
        when :DW_TAG_union_type
          fiddle = build_fiddle(die, all_dies, Fiddle::CUnion)
          @known_types[die.offset] = Type.new(die, fiddle)
          fiddle
        when :DW_TAG_base_type
        when :DW_TAG_const_type
        when :DW_TAG_array_type
          fiddle = build_array die, all_dies
          @known_types[die.offset] = Type.new(die, fiddle)
          fiddle
        when :DW_TAG_enumeration_type
        when :DW_TAG_restrict_type
        when :DW_TAG_subprogram
        when :DW_TAG_typedef
        when :DW_TAG_pointer_type
        when :DW_TAG_variable
        when :DW_TAG_subroutine_type
        when :DW_TAG_volatile_type
        when :DW_TAG_compile_unit
        when :DW_TAG_formal_parameter
        when :DW_TAG_inlined_subroutine
        when :DW_TAG_subrange_type
        when :DW_TAG_member
        when :DW_TAG_lexical_block
        when :DW_TAG_enumerator
        when :DW_TAG_unspecified_parameters
        when :DW_TAG_label
          # ???
        else
          raise "uknown type #{die.tag.identifier}"
        end

      end

      def build_array die, all_dies
        type = find_member all_dies.bsearch { |c| die.type <=> c.offset }, nil, all_dies
        [type, die.count + 1]
      end

      DWARF_TO_FIDDLE = {
        "int"                    => Fiddle::TYPE_INT,
        "char"                   => Fiddle::TYPE_CHAR,
        "signed char"            => Fiddle::TYPE_CHAR,
        "short"                  => Fiddle::TYPE_SHORT,
        "unsigned short"         => -Fiddle::TYPE_SHORT,
        "unsigned char"          => -Fiddle::TYPE_CHAR,
        "long long int"          => Fiddle::TYPE_LONG_LONG,
        "long long unsigned int" => -Fiddle::TYPE_LONG_LONG,
        "unsigned int"           => -Fiddle::TYPE_INT,
        "long unsigned int"      => -Fiddle::TYPE_LONG,
        "double"                 => Fiddle::TYPE_DOUBLE,
        "long int"               => Fiddle::TYPE_LONG,
        "_Bool"                  => Fiddle::TYPE_CHAR,
      }

      def find_member type_die, member_name, all_dies
        case type_die.tag.identifier
        when :DW_TAG_pointer_type
          Fiddle::TYPE_VOIDP
        when :DW_TAG_base_type
          name = type_die.name(debug_strs)
          DWARF_TO_FIDDLE.fetch name
        when :DW_TAG_const_type, :DW_TAG_volatile_type, :DW_TAG_enumeration_type, :DW_TAG_typedef
          if type_die.type
            sub_type = all_dies.bsearch { |c| type_die.type <=> c.offset }
            find_member sub_type, member_name, all_dies
          else
            raise
          end
        when :DW_TAG_structure_type
          find_or_build type_die, all_dies
        when :DW_TAG_array_type
          find_or_build type_die, all_dies
        when :DW_TAG_union_type
          find_or_build type_die, all_dies
        else
          raise "unknown member type #{type_die.tag.identifier}"
        end
      end

      def build_fiddle die, all_dies, fiddle_type
        return unless die.tag.has_children?

        types = []
        names = []
        die.children.each do |child|
          case child.tag.identifier
          when :DW_TAG_member
            name = child.name(debug_strs)
            raise unless name

            type = all_dies.bsearch { |c| child.type <=> c.offset }
            type = find_member(type, name, all_dies)
            if type.is_a?(Class)
              names << [name, type]
            else
              names << name
            end
            types << type
          when :DW_TAG_structure_type, :DW_TAG_union_type
            # we can ignore sub structures. They should be built out
            # when the named member finds them
            # we can ignore sub structures. They should be built out
            # when the named member finds them
          else
            raise "unhandled type #{child.tag.identifier}"
          end
        end
        Fiddle::CStructBuilder.create(fiddle_type, types, names)
      end
    end

    File.open(find_archive) do |f|
      ar = AR.new f
      ar.each do |object_file|
        next unless object_file.identifier.end_with?(".o")
        next unless %w{ debug.o iseq.o gc.o st.o vm.o }.include?(object_file.identifier)

        f.seek object_file.pos, IO::SEEK_SET
        macho = MachO.new f
        debug_info = macho.find_section("__debug_info")&.as_dwarf || next
        debug_strs = macho.find_section("__debug_str").as_dwarf
        debug_abbrev = macho.find_section("__debug_abbrev").as_dwarf

        case object_file.identifier
        when "debug.o"
          debug_info.compile_units(debug_abbrev.tags).each do |unit|
            unit.die.children.each do |die|
              if die.name(debug_strs) == "ruby_dummy_gdb_enums"
                visitor = DebugEnumVisitor.new(unit, debug_strs)
                CONSTANTS = visitor.visit(unit, unit.die.find_type(die), {})
                break
              end
            end
          end
        when "iseq.o"
          builder = TypeBuilder.new(debug_info, debug_strs, debug_abbrev)
          ISEQ = builder.build
        when "gc.o"
          builder = TypeBuilder.new(debug_info, debug_strs, debug_abbrev)
          GC = builder.build
        when "st.o"
          builder = TypeBuilder.new(debug_info, debug_strs, debug_abbrev)
          ST = builder.build
        when "vm.o"
          builder = TypeBuilder.new(debug_info, debug_strs, debug_abbrev)
          VM = builder.build
        else
        end
      end
    end
  end
end
