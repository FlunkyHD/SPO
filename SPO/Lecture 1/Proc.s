	.file	"Proc.c"
	.text
	.section	.rodata
.LC2:
	.string	"Time elpased is %f seconds\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4000048, %rsp
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	call	clock@PLT
	movq	%rax, -16(%rbp)
	leaq	-4000032(%rbp), %rax
	movq	%rax, %rdi
	call	proc
	call	clock@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -4000040(%rbp)
	movsd	-4000040(%rbp), %xmm0
	leaq	.LC2(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	proc
	.type	proc, @function
proc:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L4
.L5:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -4(%rbp)
	addl	$1, -8(%rbp)
.L4:
	cmpl	$999999, -8(%rbp)
	jle	.L5
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	proc, .-proc
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
