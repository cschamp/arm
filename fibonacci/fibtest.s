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
	.file	"fibtest.c"
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
	.file	1 "fibtest.c"
	.text
	.globl	main
	.align	2
	.type	main,%function
main:                                   @ @main
.Lfunc_begin0:
	.loc	1 10 0                  @ fibtest.c:10:0
	.fnstart
.Leh_func_begin0:
	.cfi_startproc
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
.Ltmp0:
	.cfi_def_cfa_offset 8
.Ltmp1:
	.cfi_offset lr, -4
.Ltmp2:
	.cfi_offset r11, -8
	.setfp	r11, sp
	mov	r11, sp
.Ltmp3:
	.cfi_def_cfa_register r11
	.pad	#40
	sub	sp, sp, #40
	ldr	r2, .LCPI0_0
	ldr	r3, .LCPI0_1
	ldr	r12, .LCPI0_2
	str	r12, [r11, #-4]
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	.loc	1 12 9 prologue_end     @ fibtest.c:12:9
.Ltmp4:
	mov	r0, r2
	mov	r1, r3
	bl	fibonacci
	cmp	r0, #0
	bne	.LBB0_2
@ BB#1:
	ldr	r0, .LCPI0_4
	.loc	1 13 7                  @ fibtest.c:13:7
.Ltmp5:
	bl	printf
	ldr	r1, .LCPI0_3
	.loc	1 14 7                  @ fibtest.c:14:7
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.Ltmp6:
.LBB0_2:
	ldr	r0, .LCPI0_2
	.loc	1 17 9                  @ fibtest.c:17:9
.Ltmp7:
	str	r0, [r11, #-16]
.LBB0_3:                                @ =>This Inner Loop Header: Depth=1
	.loc	1 17 9 discriminator 2  @ fibtest.c:17:9
.Ltmp8:
	ldr	r0, [r11, #-16]
	cmp	r0, #21
	bge	.LBB0_6
.Ltmp9:
@ BB#4:                                 @   in Loop: Header=BB0_3 Depth=1
	ldr	r0, .LCPI0_6
	ldr	r1, .LCPI0_7
	ldr	r2, .LCPI0_8
	.loc	1 18 7                  @ fibtest.c:18:7
	ldr	r3, [r11, #-16]
	ldr	r12, .LCPI0_9
	add	r3, r12, r3, lsl #2
	ldr	r3, [r3]
	str	r1, [sp, #16]           @ 4-byte Spill
	mov	r1, r3
	str	r2, [sp, #12]           @ 4-byte Spill
	bl	printf
	str	r0, [sp, #8]            @ 4-byte Spill
@ BB#5:                                 @   in Loop: Header=BB0_3 Depth=1
	.loc	1 17 29                 @ fibtest.c:17:29
	ldr	r0, [r11, #-16]
	add	r0, r0, #1
	str	r0, [r11, #-16]
	b	.LBB0_3
.Ltmp10:
.LBB0_6:
	ldr	r0, .LCPI0_5
	.loc	1 19 4                  @ fibtest.c:19:4
	bl	printf
	ldr	r1, .LCPI0_2
	.loc	1 20 4                  @ fibtest.c:20:4
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	bl	exit
.Ltmp11:
	.align	2
@ BB#7:
.LCPI0_0:
	.long	21                      @ 0x15
.LCPI0_1:
	.long	sequence
.LCPI0_2:
	.long	0                       @ 0x0
.LCPI0_3:
	.long	4294967295              @ 0xffffffff
.LCPI0_4:
	.long	.L.str
.LCPI0_5:
	.long	.L.str2
.LCPI0_6:
	.long	.L.str1
.LCPI0_7:
	.long	sequence
.LCPI0_8:
	.long	2                       @ 0x2
.LCPI0_9:
	.long	sequence
.Ltmp12:
	.size	main, .Ltmp12-main
.Lfunc_end0:
	.cfi_endproc
	.cantunwind
	.fnend

	.type	sequence,%object        @ @sequence
	.local	sequence
	.comm	sequence,84,4
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"error\n"
	.size	.L.str, 7

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"%d "
	.size	.L.str1, 4

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"\n"
	.size	.L.str2, 2

	.text
.Ldebug_end1:
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Raspbian clang version 3.5.0-10+rpi1 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"
.Linfo_string1:
	.asciz	"fibtest.c"
.Linfo_string2:
	.asciz	"/home/chs/src/arm/fibonacci"
.Linfo_string3:
	.asciz	"sequence"
.Linfo_string4:
	.asciz	"int"
.Linfo_string5:
	.asciz	"sizetype"
.Linfo_string6:
	.asciz	"main"
.Linfo_string7:
	.asciz	"argc"
.Linfo_string8:
	.asciz	"argv"
.Linfo_string9:
	.asciz	"char"
.Linfo_string10:
	.asciz	"i"
	.section	.debug_info,"",%progbits
.L.debug_info_begin0:
	.long	160                     @ Length of Unit
	.short	4                       @ DWARF version number
	.long	.Lsection_abbrev        @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x99 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	.Lline_table_start0     @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.long	.Lfunc_begin0           @ DW_AT_low_pc
.Lset0 = .Lfunc_end0-.Lfunc_begin0      @ DW_AT_high_pc
	.long	.Lset0
	.byte	2                       @ Abbrev [2] 0x26:0x11 DW_TAG_variable
	.long	.Linfo_string3          @ DW_AT_name
	.long	55                      @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	7                       @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	sequence
	.byte	3                       @ Abbrev [3] 0x37:0xc DW_TAG_array_type
	.long	67                      @ DW_AT_type
	.byte	4                       @ Abbrev [4] 0x3c:0x6 DW_TAG_subrange_type
	.long	74                      @ DW_AT_type
	.byte	20                      @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	5                       @ Abbrev [5] 0x43:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	6                       @ Abbrev [6] 0x4a:0x7 DW_TAG_base_type
	.long	.Linfo_string5          @ DW_AT_name
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ DW_AT_encoding
	.byte	7                       @ Abbrev [7] 0x51:0x41 DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
.Lset1 = .Lfunc_end0-.Lfunc_begin0      @ DW_AT_high_pc
	.long	.Lset1
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	.Linfo_string6          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	67                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	8                       @ Abbrev [8] 0x67:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string7          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.long	67                      @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x75:0xe DW_TAG_formal_parameter
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string8          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	9                       @ DW_AT_decl_line
	.long	146                     @ DW_AT_type
	.byte	9                       @ Abbrev [9] 0x83:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string10         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	11                      @ DW_AT_decl_line
	.long	67                      @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0x92:0x5 DW_TAG_pointer_type
	.long	151                     @ DW_AT_type
	.byte	10                      @ Abbrev [10] 0x97:0x5 DW_TAG_pointer_type
	.long	156                     @ DW_AT_type
	.byte	5                       @ Abbrev [5] 0x9c:0x7 DW_TAG_base_type
	.long	.Linfo_string9          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
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
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	3                       @ Abbreviation Code
	.byte	1                       @ DW_TAG_array_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	4                       @ Abbreviation Code
	.byte	33                      @ DW_TAG_subrange_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	47                      @ DW_AT_upper_bound
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	5                       @ Abbreviation Code
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
	.byte	6                       @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	7                       @ Abbreviation Code
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
	.byte	8                       @ Abbreviation Code
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
	.byte	9                       @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
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
	.byte	10                      @ Abbreviation Code
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
	.long	81                      @ DIE offset
	.asciz	"main"                  @ External Name
	.long	38                      @ DIE offset
	.asciz	"sequence"              @ External Name
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
	.long	67                      @ DIE offset
	.asciz	"int"                   @ External Name
	.long	156                     @ DIE offset
	.asciz	"char"                  @ External Name
	.long	0                       @ End Mark
.LpubTypes_end0:
	.cfi_sections .debug_frame

	.ident	"Raspbian clang version 3.5.0-10+rpi1 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"
	.section	.debug_line,"",%progbits
.Lline_table_start0:
