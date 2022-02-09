	.file	"ATM.c"
	.text
	.def	scanf;	.scl	3;	.type	32;	.endef
	.seh_proc	scanf
scanf:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rbx
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rbx, %r8
	movq	32(%rbp), %rdx
	movq	%rax, %rcx
	call	__mingw_vfscanf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rbx
	movl	$1, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rbx, %r8
	movq	32(%rbp), %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "\12WELCOME TO SBH\12\0"
.LC1:
	.ascii "1.PRESS 1 FOR CASH WITH DRAW\12\0"
.LC2:
	.ascii "2.PRESS 2 FOR PIN GENERATE\12\0"
	.align 8
.LC3:
	.ascii "3.PRESS 3 FOR STATEMENT REQUEST\12\0"
.LC4:
	.ascii "4.PRESS 4 FOR BILL PAYMENT\12\0"
.LC5:
	.ascii "5.PRESS 5 FOR DONATION\12\0"
	.align 8
.LC6:
	.ascii "6.PRESS 6 FOR BALANCE ENQUIRY\12\0"
.LC7:
	.ascii "ENTER THE NUM WHICH U WANT:\0"
.LC8:
	.ascii "%d\0"
.LC9:
	.ascii "\12PLEASE ENTER THE AMOUNT.\0"
.LC10:
	.ascii "\12PLEASE COLLECT THE CASH.\0"
	.align 8
.LC11:
	.ascii "\12PLEASE ENTER THE AMOUNT IN 500 or 2000\0"
.LC12:
	.ascii "\12PLEASE ENTER THE NEW PIN :\0"
	.align 8
.LC13:
	.ascii "YOUR PIN IS SUCCESSFULLY UPDATED\0"
	.align 8
.LC14:
	.ascii "YOUR PIN SAME AS OLD PIN PLEASE CHANGE IT :\0"
.LC15:
	.ascii "ENTER THE DATE U WANT\0"
.LC16:
	.ascii "YOUR STATEMENT IS.......\0"
.LC17:
	.ascii "YOUR DATA IS.........\0"
.LC18:
	.ascii "PLEASE ENTER THE AMOUNT....\0"
.LC19:
	.ascii "PLEASE COLLECT\0"
	.align 8
.LC20:
	.ascii "PLEASE ENTER THE AMOUNT IN 500 OR 2000\0"
.LC21:
	.ascii "ENTER THE DONATION AMOUNT\0"
.LC22:
	.ascii "ENTER THE LESS AMOUNT\0"
	.align 8
.LC23:
	.ascii "YOUR TRANSACTION IS PROCESSING.....\0"
	.align 8
.LC24:
	.ascii "YOUR TRANSACTION IS SUCCESSFULL\0"
.LC25:
	.ascii "YOUR BALANCE IS 56.54\0"
	.text
	.globl	atm
	.def	atm;	.scl	2;	.type	32;	.endef
	.seh_proc	atm
atm:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	movl	%eax, -4(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$1, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$2, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$3, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$4, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$5, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$6, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC7(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-8(%rbp), %eax
	cmpl	$6, %eax
	ja	.L30
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L8(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L8(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L8:
	.long	.L30-.L8
	.long	.L18-.L8
	.long	.L21-.L8
	.long	.L11-.L8
	.long	.L10-.L8
	.long	.L9-.L8
	.long	.L7-.L8
	.text
.L13:
.L18:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-12(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-12(%rbp), %eax
	cmpl	$500, %eax
	je	.L14
	movl	-12(%rbp), %eax
	cmpl	$2000, %eax
	jne	.L15
.L14:
	leaq	.LC10(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L31
.L15:
	movl	-12(%rbp), %eax
	cmpl	$100, %eax
	je	.L17
	movl	-12(%rbp), %eax
	cmpl	$200, %eax
	jne	.L31
.L17:
	leaq	.LC11(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L18
.L12:
.L21:
	leaq	.LC12(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-16(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	je	.L19
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L32
.L19:
	movl	-16(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jne	.L32
	leaq	.LC14(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L21
.L11:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-20(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-20(%rbp), %eax
	cmpl	$3, %eax
	jne	.L22
	leaq	.LC16(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L6
.L22:
	leaq	.LC17(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L6
.L10:
	leaq	.LC18(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-20(%rbp), %eax
	cmpl	$500, %eax
	je	.L24
	movl	-20(%rbp), %eax
	cmpl	$2000, %eax
	jne	.L25
.L24:
	leaq	.LC19(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L33
.L25:
	movl	-20(%rbp), %eax
	cmpl	$100, %eax
	je	.L27
	movl	-20(%rbp), %eax
	cmpl	$200, %eax
	jne	.L33
.L27:
	leaq	.LC20(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L33
.L9:
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC21(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	-24(%rbp), %eax
	cmpl	$99999, %eax
	jle	.L28
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L6
.L28:
	leaq	.LC23(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC24(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L6
.L7:
	leaq	.LC25(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L6
.L31:
	nop
	jmp	.L30
.L32:
	nop
	jmp	.L30
.L33:
	nop
.L6:
.L30:
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC26:
	.ascii "PLEASE INSERT THE CARD\0"
.LC27:
	.ascii "\12PLEASE ENTER THE PIN :\0"
	.align 8
.LC28:
	.ascii "\12DO YOU WANT CONTINUE ......YES=1 or NO=0 \12\0"
.LC29:
	.ascii "THANKYOU FOR VISITING\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
.L35:
	leaq	.LC26(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC27(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	atm
	leaq	.LC28(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-8(%rbp), %eax
	cmpl	$1, %eax
	jne	.L36
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	atm
	jmp	.L37
.L36:
	leaq	.LC29(%rip), %rax
	movq	%rax, %rcx
	call	printf
.L37:
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 11.2.0"
	.def	__mingw_vfscanf;	.scl	2;	.type	32;	.endef
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
