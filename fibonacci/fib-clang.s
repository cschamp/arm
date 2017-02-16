	.text
	.syntax unified
	.cpu	arm1136jf-s
	.eabi_attribute	6, 6	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.fpu	vfpv2
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.file	"fib.c"
	.section	.debug_info,"",%progbits
.Lsection_info:
	.section	.debug_abbrev,"",%progbits
.Lsection_abbrev:
	.section	.debug_line,"",%progbits
.Lsection_line:
	.section	.debug_pubnames,"",%progbits
	.section	.debug_pubtypes,"",%progbits
	.section	.debug_str,"MS",%progbits,1
.Linfo_string:
	.section	.debug_loc,"",%progbits
.Lsection_debug_loc:
	.section	.debug_ranges,"",%progbits
.Ldebug_range:
	.text
	.globl	fibonacci
	.align	2
	.type	fibonacci,%function
fibonacci:                              @ @fibonacci
.Lfunc_begin0:
	.file	1 "fib.c"
	.loc	1 13 0                  @ fib.c:13:0
	.fnstart
.Leh_func_begin0:
	.cfi_startproc
@ BB#0:
	.pad	#8
	sub	sp, sp, #8
.Ltmp0:
	.cfi_def_cfa_offset 8
      ; load r2 with value 1 (.LCPI0_0)
	ldr	r2, .LCPI0_0
      ; load r3 with value 0 (.LCPI0_0)
	ldr	r3, .LCPI0_1
      ; store r0 to stack (SP+4)
	str	r0, [sp, #4]
      ; store r1 to stack (SP+0)
	str	r1, [sp]
	.loc	1 16 4 prologue_end     @ fib.c:16:4
.Ltmp1:
      ; *seq++ = 0;  /* F[0] */
	ldr	r0, [sp]
	add	r1, r0, #4
	str	r1, [sp]
	str	r3, [r0]
	.loc	1 17 4                  @ fib.c:17:4
      ; *seq++ = 1;  /* F[1] */
	ldr	r0, [sp]
	add	r1, r0, #4
	str	r1, [sp]
	str	r2, [r0]
	.loc	1 18 4                  @ fib.c:18:4
      ; n -= 2;
	ldr	r0, [sp, #4]
	sub	r0, r0, #2
	str	r0, [sp, #4]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
      ; load r0 with -f (0xffffffff)
	ldr	r0, .LCPI0_2
	.loc	1 19 4 discriminator 1  @ fib.c:19:4
.Ltmp2:
      ; while (n-- > 0) {
	ldr	r1, [sp, #4]
	add	r0, r1, r0
	str	r0, [sp, #4]
	cmp	r1, #0
	ble	.LBB0_3
.Ltmp3:
@ BB#2:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, .LCPI0_3
	ldr	r1, .LCPI0_4
	.loc	1 20 7                  @ fib.c:20:7
.Ltmp4:
      ;     *seq = *(seq - 1) + *(seq - 2);
	ldr	r2, [sp]
	add	r1, r2, r1
	ldr	r1, [r1]
	ldr	r2, [sp]
	add	r0, r2, r0
	ldr	r0, [r0]
	add	r0, r1, r0
	ldr	r1, [sp]
	str	r0, [r1]
	.loc	1 21 7                  @ fib.c:21:7
      ;     seq++;
	ldr	r0, [sp]
	add	r0, r0, #4
	str	r0, [sp]
	.loc	1 22 4                  @ fib.c:22:4
      ; }
	b	.LBB0_1
.Ltmp5:
.LBB0_3:
	ldr	r0, .LCPI0_0
	.loc	1 24 4                  @ fib.c:24:4
      ; return 1;
	add	sp, sp, #8
	bx	lr
.Ltmp6:
	.align	2
@ BB#4:
.LCPI0_0:
	.long	1                       @ 0x1
.LCPI0_1:
	.long	0                       @ 0x0
.LCPI0_2:
	.long	4294967295              @ 0xffffffff
.LCPI0_3:
	.long	4294967288              @ 0xfffffff8
.LCPI0_4:
	.long	4294967292              @ 0xfffffffc
.Ltmp7:
	.size	fibonacci, .Ltmp7-fibonacci
.Lfunc_end0:
	.cfi_endproc
	.cantunwind
	.fnend

.Ldebug_end0:
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Raspbian clang version 3.5.0-10+rpi1 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"
.Linfo_string1:
	.asciz	"fib.c"
.Linfo_string2:
	.asciz	"/home/chs/src/arm/fibonnaci"
.Linfo_string3:
	.asciz	"fibonacci"
.Linfo_string4:
	.asciz	"int"
.Linfo_string5:
	.asciz	"n"
.Linfo_string6:
	.asciz	"seq"
	.section	.debug_info,"",%progbits
.L.debug_info_begin0:
	.long	98                      @ Length of Unit
	.short	4                       @ DWARF version number
	.long	.Lsection_abbrev        @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x5b DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	.Lline_table_start0     @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.long	.Lfunc_begin0           @ DW_AT_low_pc
.Lset0 = .Lfunc_end0-.Lfunc_begin0      @ DW_AT_high_pc
	.long	.Lset0
	.byte	2                       @ Abbrev [2] 0x26:0x33 DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
.Lset1 = .Lfunc_end0-.Lfunc_begin0      @ DW_AT_high_pc
	.long	.Lset1
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string3          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	89                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	3                       @ Abbrev [3] 0x3c:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	4
	.long	.Linfo_string5          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
	.long	89                      @ DW_AT_type
	.byte	3                       @ Abbrev [3] 0x4a:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string6          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
	.long	96                      @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x59:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ Abbrev [5] 0x60:0x5 DW_TAG_pointer_type
	.long	89                      @ DW_AT_type
	.byte	0                       @ End Of Children Mark
.L.debug_info_end0:
	.section	.debug_abbrev,"",%progbits
	.byte	1                       @ Abbreviation Code
	.byte	17                      @ DW_TAG_compile_unit
	.byte	1                       @ DW_CHILDREN_yes
	.byte	37                      @ DW_AT_producer
	.byte	14                      @ DW_FORM_strp
	.byte	19                      @ DW_AT_language
	.byte	5                       @ DW_FORM_data2
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	16                      @ DW_AT_stmt_list
	.byte	23                      @ DW_FORM_sec_offset
	.byte	27                      @ DW_AT_comp_dir
	.byte	14                      @ DW_FORM_strp
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	2                       @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	39                      @ DW_AT_prototyped
	.byte	25                      @ DW_FORM_flag_present
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	3                       @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	4                       @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	5                       @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	0                       @ EOM(3)
	.section	.debug_ranges,"",%progbits
	.section	.debug_loc,"",%progbits
	.section	.debug_pubnames,"",%progbits
.Lset2 = .LpubNames_end0-.LpubNames_begin0 @ Length of Public Names Info
	.long	.Lset2
.LpubNames_begin0:
	.short	2                       @ DWARF Version
	.long	.L.debug_info_begin0    @ Offset of Compilation Unit Info
.Lset3 = .L.debug_info_end0-.L.debug_info_begin0 @ Compilation Unit Length
	.long	.Lset3
	.long	38                      @ DIE offset
	.asciz	"fibonacci"             @ External Name
	.long	0                       @ End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",%progbits
.Lset4 = .LpubTypes_end0-.LpubTypes_begin0 @ Length of Public Types Info
	.long	.Lset4
.LpubTypes_begin0:
	.short	2                       @ DWARF Version
	.long	.L.debug_info_begin0    @ Offset of Compilation Unit Info
.Lset5 = .L.debug_info_end0-.L.debug_info_begin0 @ Compilation Unit Length
	.long	.Lset5
	.long	89                      @ DIE offset
	.asciz	"int"                   @ External Name
	.long	0                       @ End Mark
.LpubTypes_end0:
	.cfi_sections .debug_frame

	.ident	"Raspbian clang version 3.5.0-10+rpi1 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"
	.section	.debug_line,"",%progbits
.Lline_table_start0:
