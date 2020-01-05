module DWARF
  module Constants
    # Table 7.2 Unit Header Types
    # Unit header unit type encodings | Value
    DW_UT_compile       = 0x01
    DW_UT_type          = 0x02
    DW_UT_partial       = 0x03
    DW_UT_skeleton      = 0x04
    DW_UT_split_compile = 0x05
    DW_UT_split_type    = 0x06
    DW_UT_lo_user       = 0x80
    DW_UT_hi_user       = 0xff
    # Table 7.3: Tag encodings
    # Tag name | Value
    DW_TAG_array_type               = 0x01
    DW_TAG_class_type               = 0x02
    DW_TAG_entry_point              = 0x03
    DW_TAG_enumeration_type         = 0x04
    DW_TAG_formal_parameter         = 0x05
    # Reserved                      = 0x06
    # Reserved                      = 0x07
    DW_TAG_imported_declaration     = 0x08
    # Reserved                      = 0x09
    DW_TAG_label                    = 0x0a
    DW_TAG_lexical_block            = 0x0b
    # Reserved                      = 0x0c
    DW_TAG_member                   = 0x0d
    # Reserved                      = 0x0e
    DW_TAG_pointer_type             = 0x0f
    DW_TAG_reference_type           = 0x10
    DW_TAG_compile_unit             = 0x11
    DW_TAG_string_type              = 0x12
    DW_TAG_structure_type           = 0x13
    # Reserved                      = 0x14
    DW_TAG_subroutine_type          = 0x15
    DW_TAG_typedef                  = 0x16
    DW_TAG_union_type               = 0x17
    DW_TAG_unspecified_parameters   = 0x18
    DW_TAG_variant                  = 0x19
    DW_TAG_common_block             = 0x1a
    DW_TAG_common_inclusion         = 0x1b
    DW_TAG_inheritance              = 0x1c
    DW_TAG_inlined_subroutine       = 0x1d
    DW_TAG_module                   = 0x1e
    DW_TAG_ptr_to_member_type       = 0x1f
    DW_TAG_set_type                 = 0x20
    DW_TAG_subrange_type            = 0x21
    DW_TAG_with_stmt                = 0x22
    DW_TAG_access_declaration       = 0x23
    DW_TAG_base_type                = 0x24
    DW_TAG_catch_block              = 0x25
    DW_TAG_const_type               = 0x26
    DW_TAG_constant                 = 0x27
    DW_TAG_enumerator               = 0x28
    DW_TAG_file_type                = 0x29
    DW_TAG_friend                   = 0x2a
    DW_TAG_namelist                 = 0x2b
    DW_TAG_namelist_item            = 0x2c
    DW_TAG_packed_type              = 0x2d
    DW_TAG_subprogram               = 0x2e
    DW_TAG_template_type_parameter  = 0x2f
    DW_TAG_template_value_parameter = 0x30
    DW_TAG_thrown_type              = 0x31
    DW_TAG_try_block                = 0x32
    DW_TAG_variant_part             = 0x33
    DW_TAG_variable                 = 0x34
    DW_TAG_volatile_type            = 0x35
    DW_TAG_dwarf_procedure          = 0x36
    DW_TAG_restrict_type            = 0x37
    DW_TAG_interface_type           = 0x38
    DW_TAG_namespace                = 0x39
    DW_TAG_imported_module          = 0x3a
    DW_TAG_unspecified_type         = 0x3b
    DW_TAG_partial_unit             = 0x3c
    DW_TAG_imported_unit            = 0x3d
    # Reserved                      = 0x3e1
    DW_TAG_condition                = 0x3f
    DW_TAG_shared_type              = 0x40
    DW_TAG_type_unit                = 0x41
    DW_TAG_rvalue_reference_type    = 0x42
    DW_TAG_template_alias           = 0x43
    DW_TAG_coarray_type             = 0x44
    DW_TAG_generic_subrange         = 0x45
    DW_TAG_dynamic_type             = 0x46
    DW_TAG_atomic_type              = 0x47
    DW_TAG_call_site                = 0x48
    DW_TAG_call_site_parameter      = 0x49
    DW_TAG_skeleton_unit            = 0x4a
    DW_TAG_immutable_type           = 0x4b
    DW_TAG_low_user                 = 0x4080
    DW_TAG_hi_user                  = 0xffff
    # Table 7.4: Child determination encodings
    # Children determination name | Value
    DW_CHILDREN_no  = 0x00
    DW_CHILDREN_yes = 0x01
    # Table 7.5: Attribute encodings
    # Attribute name | Value | Classes
    DW_AT_sibling                 = 0x01 # reference
    DW_AT_location                = 0x02 # exprloc, loclist
    DW_AT_name                    = 0x03 # string
    # Reserved                    = 0x04 # not applicable
    # Reserved                    = 0x05 # not applicable
    # Reserved                    = 0x06 # not applicable
    # Reserved                    = 0x07 # not applicable
    # Reserved                    = 0x08 # not applicable
    DW_AT_ordering                = 0x09 # constant
    # Reserved                    = 0x0a # not applicable
    DW_AT_byte_size               = 0x0b # constant, exprloc, reference
    # Reserved                    = 0x0c # constant, exprloc, reference
    DW_AT_bit_size                = 0x0d # constant, exprloc, reference
    # Reserved                    = 0x0e # not applicable
    # Reserved                    = 0x0f # not applicable
    DW_AT_stmt_list               = 0x10 # lineptr
    DW_AT_low_pc                  = 0x11 # address
    DW_AT_high_pc                 = 0x12 # address, constant
    DW_AT_language                = 0x13 # constant
    # Reserved                    = 0x14 # not applicable
    DW_AT_discr                   = 0x15 # reference
    DW_AT_discr_value             = 0x16 # constant
    DW_AT_visibility              = 0x17 # constant
    DW_AT_import                  = 0x18 # reference
    DW_AT_string_length           = 0x19 # exprloc, loclist, reference
    DW_AT_common_reference        = 0x1a # reference
    DW_AT_comp_dir                = 0x1b # string
    DW_AT_const_value             = 0x1c # block, constant, string
    DW_AT_containing_type         = 0x1d # reference
    DW_AT_default_value           = 0x1e # constant, reference, flag
    # Reserved                    = 0x1f # not applicable
    DW_AT_inline                  = 0x20 # constant
    DW_AT_is_optional             = 0x21 # flag
    DW_AT_lower_bound             = 0x22 # constant, exprloc, reference
    # Reserved                    = 0x23 # not applicable
    # Reserved                    = 0x24 # not applicable
    DW_AT_producer                = 0x25 # string
    # Reserved                    = 0x26 # not applicable
    DW_AT_prototyped              = 0x27 # flag
    # Reserved                    = 0x28 # not applicable
    # Reserved                    = 0x29 # not applicable
    DW_AT_return_addr             = 0x2a # exprloc, loclist
    # Reserved                    = 0x2b # not applicable
    DW_AT_start_scope             = 0x2c # constant, rnglist
    # Reserved                    = 0x2d # not applicable
    DW_AT_bit_stride              = 0x2e # constant, exprloc, reference
    DW_AT_upper_bound             = 0x2f # constant, exprloc, reference
    # Reserved                    = 0x30 # not applicable
    DW_AT_abstract_origin         = 0x31 # reference
    DW_AT_accessibility           = 0x32 # constant
    DW_AT_address_class           = 0x33 # constant
    DW_AT_artificial              = 0x34 # flag
    DW_AT_base_types              = 0x35 # reference
    DW_AT_calling_convention      = 0x36 # constant
    DW_AT_count                   = 0x37 # constant, exprloc, reference
    DW_AT_data_member_location    = 0x38 # constant, exprloc, loclist
    DW_AT_decl_column             = 0x39 # constant
    DW_AT_decl_file               = 0x3a # constant
    DW_AT_decl_line               = 0x3b # constant
    DW_AT_declaration             = 0x3c # flag
    DW_AT_discr_list              = 0x3d # block
    DW_AT_encoding                = 0x3e # constant
    DW_AT_external                = 0x3f # flag
    DW_AT_frame_base              = 0x40 # exprloc, loclist
    DW_AT_friend                  = 0x41 # reference
    DW_AT_identifier_case         = 0x42 # constant
    # Reserved                    = 0x433 # macptr
    DW_AT_namelist_item           = 0x44 # reference
    DW_AT_priority                = 0x45 # reference
    DW_AT_segment                 = 0x46 # exprloc, loclist
    DW_AT_specification           = 0x47 # reference
    DW_AT_static_link             = 0x48 # exprloc, loclist
    DW_AT_type                    = 0x49 # reference
    DW_AT_use_location            = 0x4a # exprloc, loclist
    DW_AT_variable_parameter      = 0x4b # flag
    DW_AT_virtuality              = 0x4c # constant
    DW_AT_vtable_elem_location    = 0x4d # exprloc, loclist
    DW_AT_allocated               = 0x4e # constant, exprloc, reference
    DW_AT_associated              = 0x4f # constant, exprloc, reference
    DW_AT_data_location           = 0x50 # exprloc
    DW_AT_byte_stride             = 0x51 # constant, exprloc, reference
    DW_AT_entry_pc                = 0x52 # address, constant
    DW_AT_use_UTF8                = 0x53 # flag
    DW_AT_extension               = 0x54 # reference
    DW_AT_ranges                  = 0x55 # rnglist
    DW_AT_trampoline              = 0x56 # address, flag, reference, string
    DW_AT_call_column             = 0x57 # constant
    DW_AT_call_file               = 0x58 # constant
    DW_AT_call_line               = 0x59 # constant
    DW_AT_description             = 0x5a # string
    DW_AT_binary_scale            = 0x5b # constant
    DW_AT_decimal_scale           = 0x5c # constant
    DW_AT_small                   = 0x5d # reference
    DW_AT_decimal_sign            = 0x5e # constant
    DW_AT_digit_count             = 0x5f # constant
    DW_AT_picture_string          = 0x60 # string
    DW_AT_mutable                 = 0x61 # flag
    DW_AT_threads_scaled          = 0x62 # flag
    DW_AT_explicit                = 0x63 # flag
    DW_AT_object_pointer          = 0x64 # reference
    DW_AT_endianity               = 0x65 # constant
    DW_AT_elemental               = 0x66 # flag
    DW_AT_pure                    = 0x67 # flag
    DW_AT_recursive               = 0x68 # flag
    DW_AT_signature               = 0x69 # reference
    DW_AT_main_subprogram         = 0x6a # flag
    DW_AT_data_bit_offset         = 0x6b # constant
    DW_AT_const_expr              = 0x6c # flag
    DW_AT_enum_class              = 0x6d # flag
    DW_AT_linkage_name            = 0x6e # string
    DW_AT_string_length_bit_size  = 0x6f # constant
    DW_AT_string_length_byte_size = 0x70 # constant
    DW_AT_rank                    = 0x71 # constant, exprloc
    DW_AT_str_offsets_base        = 0x72 # stroffsetsptr
    DW_AT_addr_base               = 0x73 # addrptr
    DW_AT_rnglists_base           = 0x74 # rnglistsptr
    # Reserved                    = 0x75 # Unused
    DW_AT_dwo_name                = 0x76 # string
    DW_AT_reference               = 0x77 # flag
    DW_AT_rvalue_reference        = 0x78 # flag
    DW_AT_macros                  = 0x79 # macptr
    DW_AT_call_all_calls          = 0x7a # flag
    DW_AT_call_all_source_calls   = 0x7b # flag
    DW_AT_call_all_tail_calls     = 0x7c # flag
    DW_AT_call_return_pc          = 0x7d # address
    DW_AT_call_value              = 0x7e # exprloc
    DW_AT_call_origin             = 0x7f # exprloc
    DW_AT_call_parameter          = 0x80 # reference
    DW_AT_call_pc                 = 0x81 # address
    DW_AT_call_tail_call          = 0x82 # flag
    DW_AT_call_target             = 0x83 # exprloc
    DW_AT_call_target_clobbered   = 0x84 # exprloc
    DW_AT_call_data_location      = 0x85 # exprloc
    DW_AT_call_data_value         = 0x86 # exprloc
    DW_AT_noreturn                = 0x87 # flag
    DW_AT_alignment               = 0x88 # constant
    DW_AT_export_symbols          = 0x89 # flag
    DW_AT_deleted                 = 0x8a # flag
    DW_AT_defaulted               = 0x8b # constant
    DW_AT_loclists_base           = 0x8c # loclistsptr
    DW_AT_lo_user                 = 0x2000
    DW_AT_hi_user                 = 0x3fff
    # Table 7.6: Attribute form encodings
    # Form name | Value | Classes
    DW_FORM_addr           = 0x01 # address
    # Reserved             = 0x02
    DW_FORM_block2         = 0x03 # block
    DW_FORM_block4         = 0x04 # block
    DW_FORM_data2          = 0x05 # constant
    DW_FORM_data4          = 0x06 # constant
    DW_FORM_data8          = 0x07 # constant
    DW_FORM_string         = 0x08 # string
    DW_FORM_block          = 0x09 # block
    DW_FORM_block1         = 0x0a # block
    DW_FORM_data1          = 0x0b # constant
    DW_FORM_flag           = 0x0c # flag
    DW_FORM_sdata          = 0x0d # constant
    DW_FORM_strp           = 0x0e # string
    DW_FORM_udata          = 0x0f # constant
    DW_FORM_ref_addr       = 0x10 # reference
    DW_FORM_ref1           = 0x11 # reference
    DW_FORM_ref2           = 0x12 # reference
    DW_FORM_ref4           = 0x13 # reference
    DW_FORM_ref8           = 0x14 # reference
    DW_FORM_ref_udata      = 0x15 # reference
    DW_FORM_indirect       = 0x16 # (see Section 7.5.3 on page 203)
    DW_FORM_sec_offset     = 0x17 # addrptr, lineptr, loclist, loclistsptr, macptr, rnglist, rnglistsptr, stroffsetsptr
    DW_FORM_exprloc        = 0x18 # exprloc
    DW_FORM_flag_present   = 0x19 # flag
    DW_FORM_strx           = 0x1a # string
    DW_FORM_addrx          = 0x1b # address
    DW_FORM_ref_sup4       = 0x1c # reference
    DW_FORM_strp_sup       = 0x1d # string
    DW_FORM_data16         = 0x1e # constant
    DW_FORM_line_strp      = 0x1f # string
    DW_FORM_ref_sig8       = 0x20 # reference
    DW_FORM_implicit_const = 0x21 # constant
    DW_FORM_loclistx       = 0x22 # loclist
    DW_FORM_rnglistx       = 0x23 # rnglist
    DW_FORM_ref_sup8       = 0x24 # reference
    DW_FORM_strx1          = 0x25 # string
    DW_FORM_strx2          = 0x26 # string
    DW_FORM_strx3          = 0x27 # string
    DW_FORM_strx4          = 0x28 # string
    DW_FORM_addrx1         = 0x29 # address
    DW_FORM_addrx2         = 0x2a # address
    DW_FORM_addrx3         = 0x2b # address
    DW_FORM_addrx4         = 0x2c # address
    # Table 7.9: DWARF operation encodings
    # Operation | Code | No. of Operands | Notes
    # Reserved                = 0x01
    # Reserved                = 0x02
    DW_OP_addr                = 0x03 # 1 | constant address (size is target specific)
    # Reserved                = 0x04
    # Reserved                = 0x05
    DW_OP_deref               = 0x06 # 0
    # Reserved                = 0x07
    DW_OP_const1u             = 0x08 # 1 | 1-byte constant
    DW_OP_const1s             = 0x09 # 1 | 1-byte constant
    DW_OP_const2u             = 0x0a # 1 | 2-byte constant
    DW_OP_const2s             = 0x0b # 1 | 2-byte constant
    DW_OP_const4u             = 0x0c # 1 | 4-byte constant
    DW_OP_const4s             = 0x0d # 1 | 4-byte constant
    DW_OP_const8u             = 0x0e # 1 | 8-byte constant
    DW_OP_const8s             = 0x0f # 1 | 8-byte constant
    DW_OP_constu              = 0x10 # 1 | ULEB128 constant
    DW_OP_consts              = 0x11 # 1 | SLEB128 constant
    DW_OP_dup                 = 0x12 # 0
    DW_OP_drop                = 0x13 # 0
    DW_OP_over                = 0x14 # 0
    DW_OP_pick                = 0x15 # 1 | 1-byte stack index
    DW_OP_swap                = 0x16 # 0
    DW_OP_rot                 = 0x17 # 0
    DW_OP_xderef              = 0x18 # 0
    DW_OP_abs                 = 0x19 # 0
    DW_OP_and                 = 0x1a # 0
    DW_OP_div                 = 0x1b # 0
    DW_OP_minus               = 0x1c # 0
    DW_OP_mod                 = 0x1d # 0
    DW_OP_mul                 = 0x1e # 0
    DW_OP_neg                 = 0x1f # 0
    DW_OP_not                 = 0x20 # 0
    DW_OP_or                  = 0x21 # 0
    DW_OP_plus                = 0x22 # 0
    DW_OP_plus_uconst         = 0x23 # 1 | ULEB128 addend
    DW_OP_shl                 = 0x24 # 0
    DW_OP_shr                 = 0x25 # 0
    DW_OP_shra                = 0x26 # 0
    DW_OP_xor                 = 0x27 # 0
    DW_OP_bra                 = 0x28 # 1 | signed 2-byte constant
    DW_OP_eq                  = 0x29 # 0
    DW_OP_ge                  = 0x2a # 0
    DW_OP_gt                  = 0x2b # 0
    DW_OP_le                  = 0x2c # 0
    DW_OP_lt                  = 0x2d # 0
    DW_OP_ne                  = 0x2e # 0
    DW_OP_skip                = 0x2f # 1 | signed 2-byte constant
    DW_OP_lit0                = 0x30 # 0 | literal 0
    DW_OP_lit1                = 0x31 # 0 | literal 1
    DW_OP_lit2                = 0x32 # 0 | literal 2
    DW_OP_lit3                = 0x33 # 0 | literal 3
    DW_OP_lit4                = 0x34 # 0 | literal 4
    DW_OP_lit5                = 0x35 # 0 | literal 5
    DW_OP_lit6                = 0x36 # 0 | literal 6
    DW_OP_lit7                = 0x37 # 0 | literal 7
    DW_OP_lit8                = 0x38 # 0 | literal 8
    DW_OP_lit9                = 0x39 # 0 | literal 9
    DW_OP_lit10               = 0x3a # 0 | literal 10
    DW_OP_lit11               = 0x3b # 0 | literal 11
    DW_OP_lit12               = 0x3c # 0 | literal 12
    DW_OP_lit13               = 0x3d # 0 | literal 13
    DW_OP_lit14               = 0x3e # 0 | literal 14
    DW_OP_lit15               = 0x3f # 0 | literal 15
    DW_OP_lit16               = 0x40 # 0 | literal 16
    DW_OP_lit17               = 0x41 # 0 | literal 17
    DW_OP_lit18               = 0x42 # 0 | literal 18
    DW_OP_lit19               = 0x43 # 0 | literal 19
    DW_OP_lit20               = 0x44 # 0 | literal 20
    DW_OP_lit21               = 0x45 # 0 | literal 21
    DW_OP_lit22               = 0x46 # 0 | literal 22
    DW_OP_lit23               = 0x47 # 0 | literal 23
    DW_OP_lit24               = 0x48 # 0 | literal 24
    DW_OP_lit25               = 0x49 # 0 | literal 25
    DW_OP_lit26               = 0x4a # 0 | literal 26
    DW_OP_lit27               = 0x4b # 0 | literal 27
    DW_OP_lit28               = 0x4c # 0 | literal 28
    DW_OP_lit29               = 0x4d # 0 | literal 29
    DW_OP_lit30               = 0x4e # 0 | literal 30
    DW_OP_lit31               = 0x4f # 0 | literal 31
    DW_OP_reg0                = 0x50 # 0 | reg 0
    DW_OP_reg1                = 0x51 # 0 | reg 1
    DW_OP_reg2                = 0x52 # 0 | reg 2
    DW_OP_reg3                = 0x53 # 0 | reg 3
    DW_OP_reg4                = 0x54 # 0 | reg 4
    DW_OP_reg5                = 0x55 # 0 | reg 5
    DW_OP_reg6                = 0x56 # 0 | reg 6
    DW_OP_reg7                = 0x57 # 0 | reg 7
    DW_OP_reg8                = 0x58 # 0 | reg 8
    DW_OP_reg9                = 0x59 # 0 | reg 9
    DW_OP_reg10               = 0x5a # 0 | reg 10
    DW_OP_reg11               = 0x5b # 0 | reg 11
    DW_OP_reg12               = 0x5c # 0 | reg 12
    DW_OP_reg13               = 0x5d # 0 | reg 13
    DW_OP_reg14               = 0x5e # 0 | reg 14
    DW_OP_reg15               = 0x5f # 0 | reg 15
    DW_OP_reg16               = 0x60 # 0 | reg 16
    DW_OP_reg17               = 0x61 # 0 | reg 17
    DW_OP_reg18               = 0x62 # 0 | reg 18
    DW_OP_reg19               = 0x63 # 0 | reg 19
    DW_OP_reg20               = 0x64 # 0 | reg 20
    DW_OP_reg21               = 0x65 # 0 | reg 21
    DW_OP_reg22               = 0x66 # 0 | reg 22
    DW_OP_reg23               = 0x67 # 0 | reg 23
    DW_OP_reg24               = 0x68 # 0 | reg 24
    DW_OP_reg25               = 0x69 # 0 | reg 25
    DW_OP_reg26               = 0x6a # 0 | reg 26
    DW_OP_reg27               = 0x6b # 0 | reg 27
    DW_OP_reg28               = 0x6c # 0 | reg 28
    DW_OP_reg29               = 0x6d # 0 | reg 29
    DW_OP_reg30               = 0x6e # 0 | reg 30
    DW_OP_reg31               = 0x6f # 0 | reg 31
    DW_OP_breg0               = 0x70 # 1 | base register 0 SLEB128 offset
    DW_OP_breg1               = 0x71 # 1 | base register 1 SLEB128 offset
    DW_OP_breg2               = 0x72 # 1 | base register 2 SLEB128 offset
    DW_OP_breg3               = 0x73 # 1 | base register 3 SLEB128 offset
    DW_OP_breg4               = 0x74 # 1 | base register 4 SLEB128 offset
    DW_OP_breg5               = 0x75 # 1 | base register 5 SLEB128 offset
    DW_OP_breg6               = 0x76 # 1 | base register 6 SLEB128 offset
    DW_OP_breg7               = 0x77 # 1 | base register 7 SLEB128 offset
    DW_OP_breg8               = 0x78 # 1 | base register 8 SLEB128 offset
    DW_OP_breg9               = 0x79 # 1 | base register 9 SLEB128 offset
    DW_OP_breg10              = 0x7a # 1 | base register 10 SLEB128 offset
    DW_OP_breg11              = 0x7b # 1 | base register 11 SLEB128 offset
    DW_OP_breg12              = 0x7c # 1 | base register 12 SLEB128 offset
    DW_OP_breg13              = 0x7d # 1 | base register 13 SLEB128 offset
    DW_OP_breg14              = 0x7e # 1 | base register 14 SLEB128 offset
    DW_OP_breg15              = 0x7f # 1 | base register 15 SLEB128 offset
    DW_OP_breg16              = 0x80 # 1 | base register 16 SLEB128 offset
    DW_OP_breg17              = 0x81 # 1 | base register 17 SLEB128 offset
    DW_OP_breg18              = 0x82 # 1 | base register 18 SLEB128 offset
    DW_OP_breg19              = 0x83 # 1 | base register 19 SLEB128 offset
    DW_OP_breg20              = 0x84 # 1 | base register 20 SLEB128 offset
    DW_OP_breg21              = 0x85 # 1 | base register 21 SLEB128 offset
    DW_OP_breg22              = 0x86 # 1 | base register 22 SLEB128 offset
    DW_OP_breg23              = 0x87 # 1 | base register 23 SLEB128 offset
    DW_OP_breg24              = 0x88 # 1 | base register 24 SLEB128 offset
    DW_OP_breg25              = 0x89 # 1 | base register 25 SLEB128 offset
    DW_OP_breg26              = 0x8a # 1 | base register 26 SLEB128 offset
    DW_OP_breg27              = 0x8b # 1 | base register 27 SLEB128 offset
    DW_OP_breg28              = 0x8c # 1 | base register 28 SLEB128 offset
    DW_OP_breg29              = 0x8d # 1 | base register 29 SLEB128 offset
    DW_OP_breg30              = 0x8e # 1 | base register 30 SLEB128 offset
    DW_OP_breg31              = 0x8f # 1 | base register 31 SLEB128 offset
    DW_OP_regx                = 0x90 # 1 | ULEB128 register
    DW_OP_fbreg               = 0x91 # 1 | SLEB128 offset
    DW_OP_bregx               = 0x92 # 2 | ULEB128 register, SLEB128 offset
    DW_OP_piece               = 0x93 # 1 | ULEB128 size of piece
    DW_OP_deref_size          = 0x94 # 1 | 1-byte size of data retrieved
    DW_OP_xderef_size         = 0x95 # 1 | 1-byte size of data retrieved
    DW_OP_nop                 = 0x96 # 0
    DW_OP_push_object_address = 0x97 # 0
    DW_OP_call2               = 0x98 # 1 | 2-byte offset of DIE
    DW_OP_call4               = 0x99 # 1 | 4-byte offset of DIE
    DW_OP_call_ref            = 0x9a # 1 | 4- or 8-byte offset of DIE
    DW_OP_form_tls_address    = 0x9b # 0
    DW_OP_call_frame_cfa      = 0x9c # 0
    DW_OP_bit_piece           = 0x9d # 2 | ULEB128 size, ULEB128 offset
    DW_OP_implicit_value      = 0x9e # 2 | ULEB128 size, block of that size
    DW_OP_stack_value         = 0x9f # 0
    DW_OP_implicit_pointer    = 0xa0 # 2 | 4- or 8-byte offset of DIE, SLEB128 constant offset
    DW_OP_addrx               = 0xa1 # 1 | ULEB128 indirect address
    DW_OP_constx              = 0xa2 # 1 | ULEB128 indirect constant
    DW_OP_entry_value         = 0xa3 # 2 | ULEB128 size, block of that size
    DW_OP_const_type          = 0xa4 # 3 | ULEB128 type entry offset, 1-byte size, constant value
    DW_OP_regval_type         = 0xa5 # 2 | ULEB128 register number, ULEB128 constant offset
    DW_OP_deref_type          = 0xa6 # 2 | 1-byte size, ULEB128 type entry offset
    DW_OP_xderef_type         = 0xa7 # 2 | 1-byte size, ULEB128 type entry offset
    DW_OP_convert             = 0xa8 # 1 | ULEB128 type entry offset
    DW_OP_reinterpret         = 0xa9 # 1 | ULEB128 type entry offset
    DW_OP_lo_user             = 0xe0
    DW_OP_hi_user             = 0xff
    # Table 7.10: Location list entry encoding values
    # Location list entry encoding name | Value
    DW_LLE_end_of_list      = 0x00
    DW_LLE_base_addressx    = 0x01
    DW_LLE_startx_endx      = 0x02
    DW_LLE_startx_length    = 0x03
    DW_LLE_offset_pair      = 0x04
    DW_LLE_default_location = 0x05
    DW_LLE_base_address     = 0x06
    DW_LLE_start_end        = 0x07
    DW_LLE_start_length     = 0x08
    # Table 7.11: Base type encoding values
    # Base type encoding name | Value
    DW_ATE_address         = 0x01
    DW_ATE_boolean         = 0x02
    DW_ATE_complex_float   = 0x03
    DW_ATE_float           = 0x04
    DW_ATE_signed          = 0x05
    DW_ATE_signed_char     = 0x06
    DW_ATE_unsigned        = 0x07
    DW_ATE_unsigned_char   = 0x08
    DW_ATE_imaginary_float = 0x09
    DW_ATE_packed_decimal  = 0x0a
    DW_ATE_numeric_string  = 0x0b
    DW_ATE_edited          = 0x0c
    DW_ATE_signed_fixed    = 0x0d
    DW_ATE_unsigned_fixed  = 0x0e
    DW_ATE_decimal_float   = 0x0f
    DW_ATE_UTF             = 0x10
    DW_ATE_UCS             = 0x11
    DW_ATE_ASCII           = 0x12
    DW_ATE_lo_user         = 0x80
    DW_ATE_hi_user         = 0xff
    # Table 7.12: Decimal sign encodings
    # Decimal sign code name | Value
    DW_DS_unsigned           = 0x01
    DW_DS_leading_overpunch  = 0x02
    DW_DS_trailing_overpunch = 0x03
    DW_DS_leading_separate   = 0x04
    DW_DS_trailing_separate  = 0x05
    # Table 7.13: Endianity encodings
    # Endian code name | Value
    DW_END_default = 0x00
    DW_END_big     = 0x01
    DW_END_little  = 0x02
    DW_END_lo_user = 0x40
    DW_END_hi_user = 0xff
    # Table 7.14: Accessibility encodings
    # Accessibility code name | Value
    DW_ACCESS_public    = 0x01
    DW_ACCESS_protected = 0x02
    DW_ACCESS_private   = 0x03
    # Table 7.15: Visibility encodings
    # Visibility code name | Value
    DW_VIS_local     = 0x01
    DW_VIS_exported  = 0x02
    DW_VIS_qualified = 0x03
    # Table 7.16: Virtuality encodings
    # Virtuality code name | Value
    DW_VIRTUALITY_none         = 0x00
    DW_VIRTUALITY_virtual      = 0x01
    DW_VIRTUALITY_pure_virtual = 0x02
    # Table 7.17: Language encodings
    # Language name | Value | Default Lower Bound
    DW_LANG_C89            = 0x01 # 0
    DW_LANG_C              = 0x02 # 0
    DW_LANG_Ada83          = 0x03 # 1
    DW_LANG_C_plus_plus    = 0x04 # 0
    DW_LANG_Cobol74        = 0x05 # 1
    DW_LANG_Cobol85        = 0x06 # 1
    DW_LANG_Fortran77      = 0x07 # 1
    DW_LANG_Fortran90      = 0x08 # 1
    DW_LANG_Pascal83       = 0x09 # 1
    DW_LANG_Modula2        = 0x0a # 1
    DW_LANG_Java           = 0x0b # 0
    DW_LANG_C99            = 0x0c # 0
    DW_LANG_Ada95          = 0x0d # 1
    DW_LANG_Fortran95      = 0x0e # 1
    DW_LANG_PLI            = 0x0f # 1
    DW_LANG_ObjC           = 0x10 # 0
    DW_LANG_ObjC_plus_plus = 0x11 # 0
    DW_LANG_UPC            = 0x12 # 0
    DW_LANG_D              = 0x13 # 0
    DW_LANG_Python         = 0x14 # 0
    DW_LANG_OpenCL         = 0x15 # 0
    DW_LANG_Go             = 0x16 # 0
    DW_LANG_Modula3        = 0x17 # 1
    DW_LANG_Haskell        = 0x18 # 0
    DW_LANG_C_plus_plus_03 = 0x19 # 0
    DW_LANG_C_plus_plus_11 = 0x1a # 0
    DW_LANG_OCaml          = 0x1b # 0
    DW_LANG_Rust           = 0x1c # 0
    DW_LANG_C11            = 0x1d # 0
    DW_LANG_Swift          = 0x1e # 0
    DW_LANG_Julia          = 0x1f # 1
    DW_LANG_Dylan          = 0x20 # 0
    DW_LANG_C_plus_plus_14 = 0x21 # 0
    DW_LANG_Fortran03      = 0x22 # 1
    DW_LANG_Fortran08      = 0x23 # 1
    DW_LANG_RenderScript   = 0x24 # 0
    DW_LANG_BLISS          = 0x25 # 0
    DW_LANG_lo_user        = 0x8000
    DW_LANG_hi_user        = 0xffff
    # Table 7.18: Identifier case encodings
    # Identifier case name | Value
    DW_ID_case_sensitive   = 0x00
    DW_ID_up_case          = 0x01
    DW_ID_down_case        = 0x02
    DW_ID_case_insensitive = 0x03
    # Table 7.19: Calling convention encodings
    # Calling convention name | Value
    DW_CC_normal            = 0x01
    DW_CC_program           = 0x02
    DW_CC_nocall            = 0x03
    DW_CC_pass_by_reference = 0x04
    DW_CC_pass_by_value     = 0x05
    DW_CC_lo_user           = 0x40
    DW_CC_hi_user           = 0xff
    # Table 7.20: Inline encodings
    # Inline code name | Value
    DW_INL_not_inlined          = 0x00
    DW_INL_inlined              = 0x01
    DW_INL_declared_not_inlined = 0x02
    DW_INL_declared_inlined     = 0x03
    # Table 7.21: Ordering encodings
    # Ordering name | Value
    DW_ORD_row_major = 0x00
    DW_ORD_col_major = 0x01
  end
end
