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
	.globl	fibonacci
	.align	2
	.type	fibonacci,%function
fibonacci:                              @ @fibonacci
	.fnstart
.Leh_func_begin0:
@ BB#0:
	sub	r0, r0, #2
	mov	r3, #1
	mov	r2, #0
	stm	r1, {r2, r3}
	cmp	r0, #1
	blt	.LBB0_3
@ BB#1:                                 @ %.lr.ph
	add	r1, r1, #4
.LBB0_2:                                @ =>This Inner Loop Header: Depth=1
	sub	r3, r1, #4
	ldr	r2, [r1]
	ldr	r3, [r3]
	sub	r0, r0, #1
	cmp	r0, #0
	add	r2, r3, r2
	str	r2, [r1, #4]
	add	r1, r1, #4
	bgt	.LBB0_2
.LBB0_3:                                @ %._crit_edge
	mov	r0, #1
	bx	lr
.Ltmp0:
	.size	fibonacci, .Ltmp0-fibonacci
	.cantunwind
	.fnend


	.ident	"Raspbian clang version 3.5.0-10+rpi1 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"
