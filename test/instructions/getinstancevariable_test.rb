# frozen_string_literal: true

require "helper"

class TenderJIT
  class GetinstancevariableTest < JITTest
    class Foo
      def initialize
        @a = "a"
      end

      def expand
        @b = "b"
        @c = "c"
        @d = "d"
        @e = "e"
      end

      def read
        @a
      end
    end

    def test_getinstancevariable_embedded
      jit = TenderJIT.new
      jit.compile(Foo.instance_method(:read))
      foo = Foo.new
      jit.enable!
      v = foo.read
      jit.disable!
      assert_equal "a", v
      assert_equal 0, jit.exits
    ensure
      jit.uncompile(Foo.instance_method(:read))
    end

    def test_getinstancevariable_extended
      jit = TenderJIT.new
      jit.compile(Foo.instance_method(:read))
      foo = Foo.new
      foo.expand
      jit.enable!
      v = foo.read
      jit.disable!
      assert_equal "a", v
      assert_equal 0, jit.exits
    ensure
      jit.uncompile(Foo.instance_method(:read))
    end
  end
end
