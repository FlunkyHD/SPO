	.file	"Proc.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"Time elpased is %f seconds\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	call	clock@PLT
	movq	%rax, %rbx
	call	clock@PLT
	pxor	%xmm0, %xmm0
	subq	%rbx, %rax
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	cvtsi2sdq	%rax, %xmm0
	movl	$1, %eax
	divsd	.LC0(%rip), %xmm0
	addsd	.LC1(%rip), %xmm0
	call	__printf_chk@PLT
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.text
	.p2align 4,,15
	.globl	proc
	.type	proc, @function
proc:
.LFB24:
	.cfi_startproc
	movq	%rdi, %rax
	shrq	$2, %rax
	negq	%rax
	andl	$3, %eax
	je	.L9
	cmpl	$1, %eax
	movl	(%rdi), %r10d
	je	.L10
	addl	4(%rdi), %r10d
	cmpl	$3, %eax
	jne	.L11
	addl	8(%rdi), %r10d
	movl	$999997, %r9d
	movl	$3, %esi
.L5:
	movl	$1000000, %r8d
	pxor	%xmm0, %xmm0
	subl	%eax, %r8d
	movl	%eax, %eax
	movl	%r8d, %ecx
	leaq	(%rdi,%rax,4), %rdx
	xorl	%eax, %eax
	shrl	$2, %ecx
	.p2align 4,,10
	.p2align 3
.L7:
	addl	$1, %eax
	paddd	(%rdx), %xmm0
	addq	$16, %rdx
	cmpl	%eax, %ecx
	ja	.L7
	movdqa	%xmm0, %xmm1
	movl	%r9d, %ecx
	psrldq	$8, %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, %eax
	addl	%r10d, %eax
	movl	%r8d, %r10d
	andl	$-4, %r10d
	subl	%r10d, %ecx
	cmpl	%r10d, %r8d
	leal	(%r10,%rsi), %edx
	je	.L4
	movslq	%edx, %rsi
	addl	(%rdi,%rsi,4), %eax
	cmpl	$1, %ecx
	leal	1(%rdx), %esi
	je	.L4
	movslq	%esi, %rsi
	addl	$2, %edx
	addl	(%rdi,%rsi,4), %eax
	cmpl	$2, %ecx
	je	.L4
	movslq	%edx, %rdx
	addl	(%rdi,%rdx,4), %eax
.L4:
	rep ret
.L10:
	movl	$999999, %r9d
	movl	$1, %esi
	jmp	.L5
.L9:
	movl	$1000000, %r9d
	xorl	%esi, %esi
	xorl	%r10d, %r10d
	jmp	.L5
.L11:
	movl	$999998, %r9d
	movl	$2, %esi
	jmp	.L5
	.cfi_endproc
.LFE24:
	.size	proc, .-proc
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1093567616
	.align 8
.LC1:
	.long	0
	.long	0
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
