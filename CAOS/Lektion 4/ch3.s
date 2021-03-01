
challenge3:     filformat elf64-x86-64


Disassemblering af sektion .init:

0000000000400558 <_init>:
  400558:	48 83 ec 08          	sub    $0x8,%rsp
  40055c:	48 8b 05 95 0a 20 00 	mov    0x200a95(%rip),%rax        # 600ff8 <__gmon_start__>
  400563:	48 85 c0             	test   %rax,%rax
  400566:	74 05                	je     40056d <_init+0x15>
  400568:	e8 83 00 00 00       	callq  4005f0 <__gmon_start__@plt>
  40056d:	48 83 c4 08          	add    $0x8,%rsp
  400571:	c3                   	retq   

Disassemblering af sektion .plt:

0000000000400580 <.plt>:
  400580:	ff 35 82 0a 20 00    	pushq  0x200a82(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400586:	ff 25 84 0a 20 00    	jmpq   *0x200a84(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40058c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400590 <putchar@plt>:
  400590:	ff 25 82 0a 20 00    	jmpq   *0x200a82(%rip)        # 601018 <putchar@GLIBC_2.2.5>
  400596:	68 00 00 00 00       	pushq  $0x0
  40059b:	e9 e0 ff ff ff       	jmpq   400580 <.plt>

00000000004005a0 <strncmp@plt>:
  4005a0:	ff 25 7a 0a 20 00    	jmpq   *0x200a7a(%rip)        # 601020 <strncmp@GLIBC_2.2.5>
  4005a6:	68 01 00 00 00       	pushq  $0x1
  4005ab:	e9 d0 ff ff ff       	jmpq   400580 <.plt>

00000000004005b0 <puts@plt>:
  4005b0:	ff 25 72 0a 20 00    	jmpq   *0x200a72(%rip)        # 601028 <puts@GLIBC_2.2.5>
  4005b6:	68 02 00 00 00       	pushq  $0x2
  4005bb:	e9 c0 ff ff ff       	jmpq   400580 <.plt>

00000000004005c0 <strlen@plt>:
  4005c0:	ff 25 6a 0a 20 00    	jmpq   *0x200a6a(%rip)        # 601030 <strlen@GLIBC_2.2.5>
  4005c6:	68 03 00 00 00       	pushq  $0x3
  4005cb:	e9 b0 ff ff ff       	jmpq   400580 <.plt>

00000000004005d0 <printf@plt>:
  4005d0:	ff 25 62 0a 20 00    	jmpq   *0x200a62(%rip)        # 601038 <printf@GLIBC_2.2.5>
  4005d6:	68 04 00 00 00       	pushq  $0x4
  4005db:	e9 a0 ff ff ff       	jmpq   400580 <.plt>

00000000004005e0 <__libc_start_main@plt>:
  4005e0:	ff 25 5a 0a 20 00    	jmpq   *0x200a5a(%rip)        # 601040 <__libc_start_main@GLIBC_2.2.5>
  4005e6:	68 05 00 00 00       	pushq  $0x5
  4005eb:	e9 90 ff ff ff       	jmpq   400580 <.plt>

00000000004005f0 <__gmon_start__@plt>:
  4005f0:	ff 25 52 0a 20 00    	jmpq   *0x200a52(%rip)        # 601048 <__gmon_start__>
  4005f6:	68 06 00 00 00       	pushq  $0x6
  4005fb:	e9 80 ff ff ff       	jmpq   400580 <.plt>

0000000000400600 <__isoc99_scanf@plt>:
  400600:	ff 25 4a 0a 20 00    	jmpq   *0x200a4a(%rip)        # 601050 <__isoc99_scanf@GLIBC_2.7>
  400606:	68 07 00 00 00       	pushq  $0x7
  40060b:	e9 70 ff ff ff       	jmpq   400580 <.plt>

0000000000400610 <exit@plt>:
  400610:	ff 25 42 0a 20 00    	jmpq   *0x200a42(%rip)        # 601058 <exit@GLIBC_2.2.5>
  400616:	68 08 00 00 00       	pushq  $0x8
  40061b:	e9 60 ff ff ff       	jmpq   400580 <.plt>

Disassemblering af sektion .text:

0000000000400620 <_start>:
  400620:	31 ed                	xor    %ebp,%ebp
  400622:	49 89 d1             	mov    %rdx,%r9
  400625:	5e                   	pop    %rsi
  400626:	48 89 e2             	mov    %rsp,%rdx
  400629:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40062d:	50                   	push   %rax
  40062e:	54                   	push   %rsp
  40062f:	49 c7 c0 10 0a 40 00 	mov    $0x400a10,%r8
  400636:	48 c7 c1 a0 09 40 00 	mov    $0x4009a0,%rcx
  40063d:	48 c7 c7 08 09 40 00 	mov    $0x400908,%rdi
  400644:	e8 97 ff ff ff       	callq  4005e0 <__libc_start_main@plt>
  400649:	f4                   	hlt    
  40064a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400650 <deregister_tm_clones>:
  400650:	b8 07 11 60 00       	mov    $0x601107,%eax
  400655:	55                   	push   %rbp
  400656:	48 2d 00 11 60 00    	sub    $0x601100,%rax
  40065c:	48 83 f8 0e          	cmp    $0xe,%rax
  400660:	48 89 e5             	mov    %rsp,%rbp
  400663:	77 02                	ja     400667 <deregister_tm_clones+0x17>
  400665:	5d                   	pop    %rbp
  400666:	c3                   	retq   
  400667:	b8 00 00 00 00       	mov    $0x0,%eax
  40066c:	48 85 c0             	test   %rax,%rax
  40066f:	74 f4                	je     400665 <deregister_tm_clones+0x15>
  400671:	5d                   	pop    %rbp
  400672:	bf 00 11 60 00       	mov    $0x601100,%edi
  400677:	ff e0                	jmpq   *%rax
  400679:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400680 <register_tm_clones>:
  400680:	b8 00 11 60 00       	mov    $0x601100,%eax
  400685:	55                   	push   %rbp
  400686:	48 2d 00 11 60 00    	sub    $0x601100,%rax
  40068c:	48 c1 f8 03          	sar    $0x3,%rax
  400690:	48 89 e5             	mov    %rsp,%rbp
  400693:	48 89 c2             	mov    %rax,%rdx
  400696:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40069a:	48 01 d0             	add    %rdx,%rax
  40069d:	48 d1 f8             	sar    %rax
  4006a0:	75 02                	jne    4006a4 <register_tm_clones+0x24>
  4006a2:	5d                   	pop    %rbp
  4006a3:	c3                   	retq   
  4006a4:	ba 00 00 00 00       	mov    $0x0,%edx
  4006a9:	48 85 d2             	test   %rdx,%rdx
  4006ac:	74 f4                	je     4006a2 <register_tm_clones+0x22>
  4006ae:	5d                   	pop    %rbp
  4006af:	48 89 c6             	mov    %rax,%rsi
  4006b2:	bf 00 11 60 00       	mov    $0x601100,%edi
  4006b7:	ff e2                	jmpq   *%rdx
  4006b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004006c0 <__do_global_dtors_aux>:
  4006c0:	80 3d 38 0a 20 00 00 	cmpb   $0x0,0x200a38(%rip)        # 6010ff <_edata>
  4006c7:	75 11                	jne    4006da <__do_global_dtors_aux+0x1a>
  4006c9:	55                   	push   %rbp
  4006ca:	48 89 e5             	mov    %rsp,%rbp
  4006cd:	e8 7e ff ff ff       	callq  400650 <deregister_tm_clones>
  4006d2:	5d                   	pop    %rbp
  4006d3:	c6 05 25 0a 20 00 01 	movb   $0x1,0x200a25(%rip)        # 6010ff <_edata>
  4006da:	f3 c3                	repz retq 
  4006dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006e0 <frame_dummy>:
  4006e0:	48 83 3d 38 07 20 00 	cmpq   $0x0,0x200738(%rip)        # 600e20 <__JCR_END__>
  4006e7:	00 
  4006e8:	74 1e                	je     400708 <frame_dummy+0x28>
  4006ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4006ef:	48 85 c0             	test   %rax,%rax
  4006f2:	74 14                	je     400708 <frame_dummy+0x28>
  4006f4:	55                   	push   %rbp
  4006f5:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  4006fa:	48 89 e5             	mov    %rsp,%rbp
  4006fd:	ff d0                	callq  *%rax
  4006ff:	5d                   	pop    %rbp
  400700:	e9 7b ff ff ff       	jmpq   400680 <register_tm_clones>
  400705:	0f 1f 00             	nopl   (%rax)
  400708:	e9 73 ff ff ff       	jmpq   400680 <register_tm_clones>

000000000040070d <tictactoe>:
  40070d:	55                   	push   %rbp
  40070e:	48 89 e5             	mov    %rsp,%rbp
  400711:	bf 28 0a 40 00       	mov    $0x400a28,%edi
  400716:	e8 95 fe ff ff       	callq  4005b0 <puts@plt>
  40071b:	5d                   	pop    %rbp
  40071c:	c3                   	retq   

000000000040071d <x86_assembly>:
  40071d:	55                   	push   %rbp
  40071e:	48 89 e5             	mov    %rsp,%rbp
  400721:	48 81 ec 30 01 00 00 	sub    $0x130,%rsp
  400728:	c7 85 dc fe ff ff 00 	movl   $0x0,-0x124(%rbp)
  40072f:	00 00 00 
  400732:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400739:	eb 11                	jmp    40074c <x86_assembly+0x2f>
  40073b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40073e:	48 98                	cltq   
  400740:	c6 84 05 e0 fe ff ff 	movb   $0x90,-0x120(%rbp,%rax,1)
  400747:	90 
  400748:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40074c:	81 7d fc ff 00 00 00 	cmpl   $0xff,-0x4(%rbp)
  400753:	7e e6                	jle    40073b <x86_assembly+0x1e>
  400755:	c6 45 df c3          	movb   $0xc3,-0x21(%rbp)
  400759:	bf 48 0a 40 00       	mov    $0x400a48,%edi
  40075e:	e8 4d fe ff ff       	callq  4005b0 <puts@plt>
  400763:	bf 88 0a 40 00       	mov    $0x400a88,%edi
  400768:	b8 00 00 00 00       	mov    $0x0,%eax
  40076d:	e8 5e fe ff ff       	callq  4005d0 <printf@plt>
  400772:	bf c1 0a 40 00       	mov    $0x400ac1,%edi
  400777:	b8 00 00 00 00       	mov    $0x0,%eax
  40077c:	e8 4f fe ff ff       	callq  4005d0 <printf@plt>
  400781:	48 8d 85 dc fe ff ff 	lea    -0x124(%rbp),%rax
  400788:	48 89 c6             	mov    %rax,%rsi
  40078b:	bf d1 0a 40 00       	mov    $0x400ad1,%edi
  400790:	b8 00 00 00 00       	mov    $0x0,%eax
  400795:	e8 66 fe ff ff       	callq  400600 <__isoc99_scanf@plt>
  40079a:	bf d8 0a 40 00       	mov    $0x400ad8,%edi
  40079f:	e8 0c fe ff ff       	callq  4005b0 <puts@plt>
  4007a4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4007ab:	eb 25                	jmp    4007d2 <x86_assembly+0xb5>
  4007ad:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  4007b4:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4007b7:	48 98                	cltq   
  4007b9:	48 01 d0             	add    %rdx,%rax
  4007bc:	48 89 c6             	mov    %rax,%rsi
  4007bf:	bf 05 0b 40 00       	mov    $0x400b05,%edi
  4007c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4007c9:	e8 32 fe ff ff       	callq  400600 <__isoc99_scanf@plt>
  4007ce:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4007d2:	8b 85 dc fe ff ff    	mov    -0x124(%rbp),%eax
  4007d8:	39 45 fc             	cmp    %eax,-0x4(%rbp)
  4007db:	7c d0                	jl     4007ad <x86_assembly+0x90>
  4007dd:	8b 85 dc fe ff ff    	mov    -0x124(%rbp),%eax
  4007e3:	48 98                	cltq   
  4007e5:	c6 84 05 e0 fe ff ff 	movb   $0xc3,-0x120(%rbp,%rax,1)
  4007ec:	c3 
  4007ed:	bf 08 0b 40 00       	mov    $0x400b08,%edi
  4007f2:	e8 b9 fd ff ff       	callq  4005b0 <puts@plt>
  4007f7:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  4007fe:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400802:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400806:	ff d0                	callq  *%rax
  400808:	48 89 c0             	mov    %rax,%rax
  40080b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40080f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400813:	48 89 c7             	mov    %rax,%rdi
  400816:	e8 95 fd ff ff       	callq  4005b0 <puts@plt>
  40081b:	c9                   	leaveq 
  40081c:	c3                   	retq   

000000000040081d <global_thermonuclear_war>:
  40081d:	55                   	push   %rbp
  40081e:	48 89 e5             	mov    %rsp,%rbp
  400821:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  400828:	bf 18 0b 40 00       	mov    $0x400b18,%edi
  40082d:	b8 00 00 00 00       	mov    $0x0,%eax
  400832:	e8 99 fd ff ff       	callq  4005d0 <printf@plt>
  400837:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
  40083e:	48 89 c6             	mov    %rax,%rsi
  400841:	bf 3d 0b 40 00       	mov    $0x400b3d,%edi
  400846:	b8 00 00 00 00       	mov    $0x0,%eax
  40084b:	e8 b0 fd ff ff       	callq  400600 <__isoc99_scanf@plt>
  400850:	bf 80 10 60 00       	mov    $0x601080,%edi
  400855:	e8 66 fd ff ff       	callq  4005c0 <strlen@plt>
  40085a:	48 89 c2             	mov    %rax,%rdx
  40085d:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
  400864:	be 80 10 60 00       	mov    $0x601080,%esi
  400869:	48 89 c7             	mov    %rax,%rdi
  40086c:	e8 2f fd ff ff       	callq  4005a0 <strncmp@plt>
  400871:	85 c0                	test   %eax,%eax
  400873:	75 28                	jne    40089d <global_thermonuclear_war+0x80>
  400875:	bf 40 0b 40 00       	mov    $0x400b40,%edi
  40087a:	e8 31 fd ff ff       	callq  4005b0 <puts@plt>
  40087f:	bf 68 0b 40 00       	mov    $0x400b68,%edi
  400884:	e8 27 fd ff ff       	callq  4005b0 <puts@plt>
  400889:	bf 8d 0b 40 00       	mov    $0x400b8d,%edi
  40088e:	e8 1d fd ff ff       	callq  4005b0 <puts@plt>
  400893:	bf 0a 00 00 00       	mov    $0xa,%edi
  400898:	e8 f3 fc ff ff       	callq  400590 <putchar@plt>
  40089d:	bf 8d 10 60 00       	mov    $0x60108d,%edi
  4008a2:	e8 19 fd ff ff       	callq  4005c0 <strlen@plt>
  4008a7:	48 89 c2             	mov    %rax,%rdx
  4008aa:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
  4008b1:	be 8d 10 60 00       	mov    $0x60108d,%esi
  4008b6:	48 89 c7             	mov    %rax,%rdi
  4008b9:	e8 e2 fc ff ff       	callq  4005a0 <strncmp@plt>
  4008be:	85 c0                	test   %eax,%eax
  4008c0:	75 14                	jne    4008d6 <global_thermonuclear_war+0xb9>
  4008c2:	bf 96 0b 40 00       	mov    $0x400b96,%edi
  4008c7:	e8 e4 fc ff ff       	callq  4005b0 <puts@plt>
  4008cc:	bf 00 00 00 00       	mov    $0x0,%edi
  4008d1:	e8 3a fd ff ff       	callq  400610 <exit@plt>
  4008d6:	bf 9f 0b 40 00       	mov    $0x400b9f,%edi
  4008db:	e8 d0 fc ff ff       	callq  4005b0 <puts@plt>
  4008e0:	bf a9 0b 40 00       	mov    $0x400ba9,%edi
  4008e5:	e8 c6 fc ff ff       	callq  4005b0 <puts@plt>
  4008ea:	bf b9 0b 40 00       	mov    $0x400bb9,%edi
  4008ef:	e8 bc fc ff ff       	callq  4005b0 <puts@plt>
  4008f4:	bf d2 0b 40 00       	mov    $0x400bd2,%edi
  4008f9:	e8 b2 fc ff ff       	callq  4005b0 <puts@plt>
  4008fe:	bf 01 00 00 00       	mov    $0x1,%edi
  400903:	e8 08 fd ff ff       	callq  400610 <exit@plt>

0000000000400908 <main>:
  400908:	55                   	push   %rbp
  400909:	48 89 e5             	mov    %rsp,%rbp
  40090c:	48 83 ec 10          	sub    $0x10,%rsp
  400910:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400917:	bf e0 0b 40 00       	mov    $0x400be0,%edi
  40091c:	e8 8f fc ff ff       	callq  4005b0 <puts@plt>
  400921:	be 80 10 60 00       	mov    $0x601080,%esi
  400926:	bf 10 0c 40 00       	mov    $0x400c10,%edi
  40092b:	b8 00 00 00 00       	mov    $0x0,%eax
  400930:	e8 9b fc ff ff       	callq  4005d0 <printf@plt>
  400935:	be a0 10 60 00       	mov    $0x6010a0,%esi
  40093a:	bf 3d 0b 40 00       	mov    $0x400b3d,%edi
  40093f:	b8 00 00 00 00       	mov    $0x0,%eax
  400944:	e8 87 fc ff ff       	callq  4005d0 <printf@plt>
  400949:	48 8d 45 fc          	lea    -0x4(%rbp),%rax
  40094d:	48 89 c6             	mov    %rax,%rsi
  400950:	bf d1 0a 40 00       	mov    $0x400ad1,%edi
  400955:	b8 00 00 00 00       	mov    $0x0,%eax
  40095a:	e8 a1 fc ff ff       	callq  400600 <__isoc99_scanf@plt>
  40095f:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400962:	83 f8 01             	cmp    $0x1,%eax
  400965:	74 15                	je     40097c <main+0x74>
  400967:	83 f8 02             	cmp    $0x2,%eax
  40096a:	74 1c                	je     400988 <main+0x80>
  40096c:	85 c0                	test   %eax,%eax
  40096e:	75 24                	jne    400994 <main+0x8c>
  400970:	b8 00 00 00 00       	mov    $0x0,%eax
  400975:	e8 93 fd ff ff       	callq  40070d <tictactoe>
  40097a:	eb b9                	jmp    400935 <main+0x2d>
  40097c:	b8 00 00 00 00       	mov    $0x0,%eax
  400981:	e8 97 fd ff ff       	callq  40071d <x86_assembly>
  400986:	eb ad                	jmp    400935 <main+0x2d>
  400988:	b8 00 00 00 00       	mov    $0x0,%eax
  40098d:	e8 8b fe ff ff       	callq  40081d <global_thermonuclear_war>
  400992:	eb a1                	jmp    400935 <main+0x2d>
  400994:	b8 00 00 00 00       	mov    $0x0,%eax
  400999:	c9                   	leaveq 
  40099a:	c3                   	retq   
  40099b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004009a0 <__libc_csu_init>:
  4009a0:	41 57                	push   %r15
  4009a2:	41 89 ff             	mov    %edi,%r15d
  4009a5:	41 56                	push   %r14
  4009a7:	49 89 f6             	mov    %rsi,%r14
  4009aa:	41 55                	push   %r13
  4009ac:	49 89 d5             	mov    %rdx,%r13
  4009af:	41 54                	push   %r12
  4009b1:	4c 8d 25 58 04 20 00 	lea    0x200458(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4009b8:	55                   	push   %rbp
  4009b9:	48 8d 2d 58 04 20 00 	lea    0x200458(%rip),%rbp        # 600e18 <__init_array_end>
  4009c0:	53                   	push   %rbx
  4009c1:	4c 29 e5             	sub    %r12,%rbp
  4009c4:	31 db                	xor    %ebx,%ebx
  4009c6:	48 c1 fd 03          	sar    $0x3,%rbp
  4009ca:	48 83 ec 08          	sub    $0x8,%rsp
  4009ce:	e8 85 fb ff ff       	callq  400558 <_init>
  4009d3:	48 85 ed             	test   %rbp,%rbp
  4009d6:	74 1e                	je     4009f6 <__libc_csu_init+0x56>
  4009d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4009df:	00 
  4009e0:	4c 89 ea             	mov    %r13,%rdx
  4009e3:	4c 89 f6             	mov    %r14,%rsi
  4009e6:	44 89 ff             	mov    %r15d,%edi
  4009e9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4009ed:	48 83 c3 01          	add    $0x1,%rbx
  4009f1:	48 39 eb             	cmp    %rbp,%rbx
  4009f4:	75 ea                	jne    4009e0 <__libc_csu_init+0x40>
  4009f6:	48 83 c4 08          	add    $0x8,%rsp
  4009fa:	5b                   	pop    %rbx
  4009fb:	5d                   	pop    %rbp
  4009fc:	41 5c                	pop    %r12
  4009fe:	41 5d                	pop    %r13
  400a00:	41 5e                	pop    %r14
  400a02:	41 5f                	pop    %r15
  400a04:	c3                   	retq   
  400a05:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400a0c:	00 00 00 00 

0000000000400a10 <__libc_csu_fini>:
  400a10:	f3 c3                	repz retq 

Disassemblering af sektion .fini:

0000000000400a14 <_fini>:
  400a14:	48 83 ec 08          	sub    $0x8,%rsp
  400a18:	48 83 c4 08          	add    $0x8,%rsp
  400a1c:	c3                   	retq   
