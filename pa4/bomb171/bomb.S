
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000400b38 <_init>:
  400b38:	48 83 ec 08          	sub    $0x8,%rsp
  400b3c:	48 8b 05 b5 34 20 00 	mov    0x2034b5(%rip),%rax        # 603ff8 <__gmon_start__>
  400b43:	48 85 c0             	test   %rax,%rax
  400b46:	74 05                	je     400b4d <_init+0x15>
  400b48:	e8 f3 01 00 00       	callq  400d40 <__gmon_start__@plt>
  400b4d:	48 83 c4 08          	add    $0x8,%rsp
  400b51:	c3                   	retq   

Disassembly of section .plt:

0000000000400b60 <.plt>:
  400b60:	ff 35 a2 34 20 00    	pushq  0x2034a2(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b66:	ff 25 a4 34 20 00    	jmpq   *0x2034a4(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b70 <getenv@plt>:
  400b70:	ff 25 a2 34 20 00    	jmpq   *0x2034a2(%rip)        # 604018 <getenv@GLIBC_2.2.5>
  400b76:	68 00 00 00 00       	pushq  $0x0
  400b7b:	e9 e0 ff ff ff       	jmpq   400b60 <.plt>

0000000000400b80 <strcasecmp@plt>:
  400b80:	ff 25 9a 34 20 00    	jmpq   *0x20349a(%rip)        # 604020 <strcasecmp@GLIBC_2.2.5>
  400b86:	68 01 00 00 00       	pushq  $0x1
  400b8b:	e9 d0 ff ff ff       	jmpq   400b60 <.plt>

0000000000400b90 <__errno_location@plt>:
  400b90:	ff 25 92 34 20 00    	jmpq   *0x203492(%rip)        # 604028 <__errno_location@GLIBC_2.2.5>
  400b96:	68 02 00 00 00       	pushq  $0x2
  400b9b:	e9 c0 ff ff ff       	jmpq   400b60 <.plt>

0000000000400ba0 <strcpy@plt>:
  400ba0:	ff 25 8a 34 20 00    	jmpq   *0x20348a(%rip)        # 604030 <strcpy@GLIBC_2.2.5>
  400ba6:	68 03 00 00 00       	pushq  $0x3
  400bab:	e9 b0 ff ff ff       	jmpq   400b60 <.plt>

0000000000400bb0 <puts@plt>:
  400bb0:	ff 25 82 34 20 00    	jmpq   *0x203482(%rip)        # 604038 <puts@GLIBC_2.2.5>
  400bb6:	68 04 00 00 00       	pushq  $0x4
  400bbb:	e9 a0 ff ff ff       	jmpq   400b60 <.plt>

0000000000400bc0 <write@plt>:
  400bc0:	ff 25 7a 34 20 00    	jmpq   *0x20347a(%rip)        # 604040 <write@GLIBC_2.2.5>
  400bc6:	68 05 00 00 00       	pushq  $0x5
  400bcb:	e9 90 ff ff ff       	jmpq   400b60 <.plt>

0000000000400bd0 <__stack_chk_fail@plt>:
  400bd0:	ff 25 72 34 20 00    	jmpq   *0x203472(%rip)        # 604048 <__stack_chk_fail@GLIBC_2.4>
  400bd6:	68 06 00 00 00       	pushq  $0x6
  400bdb:	e9 80 ff ff ff       	jmpq   400b60 <.plt>

0000000000400be0 <alarm@plt>:
  400be0:	ff 25 6a 34 20 00    	jmpq   *0x20346a(%rip)        # 604050 <alarm@GLIBC_2.2.5>
  400be6:	68 07 00 00 00       	pushq  $0x7
  400beb:	e9 70 ff ff ff       	jmpq   400b60 <.plt>

0000000000400bf0 <close@plt>:
  400bf0:	ff 25 62 34 20 00    	jmpq   *0x203462(%rip)        # 604058 <close@GLIBC_2.2.5>
  400bf6:	68 08 00 00 00       	pushq  $0x8
  400bfb:	e9 60 ff ff ff       	jmpq   400b60 <.plt>

0000000000400c00 <read@plt>:
  400c00:	ff 25 5a 34 20 00    	jmpq   *0x20345a(%rip)        # 604060 <read@GLIBC_2.2.5>
  400c06:	68 09 00 00 00       	pushq  $0x9
  400c0b:	e9 50 ff ff ff       	jmpq   400b60 <.plt>

0000000000400c10 <__libc_start_main@plt>:
  400c10:	ff 25 52 34 20 00    	jmpq   *0x203452(%rip)        # 604068 <__libc_start_main@GLIBC_2.2.5>
  400c16:	68 0a 00 00 00       	pushq  $0xa
  400c1b:	e9 40 ff ff ff       	jmpq   400b60 <.plt>

0000000000400c20 <fgets@plt>:
  400c20:	ff 25 4a 34 20 00    	jmpq   *0x20344a(%rip)        # 604070 <fgets@GLIBC_2.2.5>
  400c26:	68 0b 00 00 00       	pushq  $0xb
  400c2b:	e9 30 ff ff ff       	jmpq   400b60 <.plt>

0000000000400c30 <signal@plt>:
  400c30:	ff 25 42 34 20 00    	jmpq   *0x203442(%rip)        # 604078 <signal@GLIBC_2.2.5>
  400c36:	68 0c 00 00 00       	pushq  $0xc
  400c3b:	e9 20 ff ff ff       	jmpq   400b60 <.plt>

0000000000400c40 <gethostbyname@plt>:
  400c40:	ff 25 3a 34 20 00    	jmpq   *0x20343a(%rip)        # 604080 <gethostbyname@GLIBC_2.2.5>
  400c46:	68 0d 00 00 00       	pushq  $0xd
  400c4b:	e9 10 ff ff ff       	jmpq   400b60 <.plt>

0000000000400c50 <__memmove_chk@plt>:
  400c50:	ff 25 32 34 20 00    	jmpq   *0x203432(%rip)        # 604088 <__memmove_chk@GLIBC_2.3.4>
  400c56:	68 0e 00 00 00       	pushq  $0xe
  400c5b:	e9 00 ff ff ff       	jmpq   400b60 <.plt>

0000000000400c60 <strtol@plt>:
  400c60:	ff 25 2a 34 20 00    	jmpq   *0x20342a(%rip)        # 604090 <strtol@GLIBC_2.2.5>
  400c66:	68 0f 00 00 00       	pushq  $0xf
  400c6b:	e9 f0 fe ff ff       	jmpq   400b60 <.plt>

0000000000400c70 <malloc@plt>:
  400c70:	ff 25 22 34 20 00    	jmpq   *0x203422(%rip)        # 604098 <malloc@GLIBC_2.2.5>
  400c76:	68 10 00 00 00       	pushq  $0x10
  400c7b:	e9 e0 fe ff ff       	jmpq   400b60 <.plt>

0000000000400c80 <fflush@plt>:
  400c80:	ff 25 1a 34 20 00    	jmpq   *0x20341a(%rip)        # 6040a0 <fflush@GLIBC_2.2.5>
  400c86:	68 11 00 00 00       	pushq  $0x11
  400c8b:	e9 d0 fe ff ff       	jmpq   400b60 <.plt>

0000000000400c90 <__isoc99_sscanf@plt>:
  400c90:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 6040a8 <__isoc99_sscanf@GLIBC_2.7>
  400c96:	68 12 00 00 00       	pushq  $0x12
  400c9b:	e9 c0 fe ff ff       	jmpq   400b60 <.plt>

0000000000400ca0 <__printf_chk@plt>:
  400ca0:	ff 25 0a 34 20 00    	jmpq   *0x20340a(%rip)        # 6040b0 <__printf_chk@GLIBC_2.3.4>
  400ca6:	68 13 00 00 00       	pushq  $0x13
  400cab:	e9 b0 fe ff ff       	jmpq   400b60 <.plt>

0000000000400cb0 <fopen@plt>:
  400cb0:	ff 25 02 34 20 00    	jmpq   *0x203402(%rip)        # 6040b8 <fopen@GLIBC_2.2.5>
  400cb6:	68 14 00 00 00       	pushq  $0x14
  400cbb:	e9 a0 fe ff ff       	jmpq   400b60 <.plt>

0000000000400cc0 <gethostname@plt>:
  400cc0:	ff 25 fa 33 20 00    	jmpq   *0x2033fa(%rip)        # 6040c0 <gethostname@GLIBC_2.2.5>
  400cc6:	68 15 00 00 00       	pushq  $0x15
  400ccb:	e9 90 fe ff ff       	jmpq   400b60 <.plt>

0000000000400cd0 <exit@plt>:
  400cd0:	ff 25 f2 33 20 00    	jmpq   *0x2033f2(%rip)        # 6040c8 <exit@GLIBC_2.2.5>
  400cd6:	68 16 00 00 00       	pushq  $0x16
  400cdb:	e9 80 fe ff ff       	jmpq   400b60 <.plt>

0000000000400ce0 <connect@plt>:
  400ce0:	ff 25 ea 33 20 00    	jmpq   *0x2033ea(%rip)        # 6040d0 <connect@GLIBC_2.2.5>
  400ce6:	68 17 00 00 00       	pushq  $0x17
  400ceb:	e9 70 fe ff ff       	jmpq   400b60 <.plt>

0000000000400cf0 <__fprintf_chk@plt>:
  400cf0:	ff 25 e2 33 20 00    	jmpq   *0x2033e2(%rip)        # 6040d8 <__fprintf_chk@GLIBC_2.3.4>
  400cf6:	68 18 00 00 00       	pushq  $0x18
  400cfb:	e9 60 fe ff ff       	jmpq   400b60 <.plt>

0000000000400d00 <sleep@plt>:
  400d00:	ff 25 da 33 20 00    	jmpq   *0x2033da(%rip)        # 6040e0 <sleep@GLIBC_2.2.5>
  400d06:	68 19 00 00 00       	pushq  $0x19
  400d0b:	e9 50 fe ff ff       	jmpq   400b60 <.plt>

0000000000400d10 <__ctype_b_loc@plt>:
  400d10:	ff 25 d2 33 20 00    	jmpq   *0x2033d2(%rip)        # 6040e8 <__ctype_b_loc@GLIBC_2.3>
  400d16:	68 1a 00 00 00       	pushq  $0x1a
  400d1b:	e9 40 fe ff ff       	jmpq   400b60 <.plt>

0000000000400d20 <__sprintf_chk@plt>:
  400d20:	ff 25 ca 33 20 00    	jmpq   *0x2033ca(%rip)        # 6040f0 <__sprintf_chk@GLIBC_2.3.4>
  400d26:	68 1b 00 00 00       	pushq  $0x1b
  400d2b:	e9 30 fe ff ff       	jmpq   400b60 <.plt>

0000000000400d30 <socket@plt>:
  400d30:	ff 25 c2 33 20 00    	jmpq   *0x2033c2(%rip)        # 6040f8 <socket@GLIBC_2.2.5>
  400d36:	68 1c 00 00 00       	pushq  $0x1c
  400d3b:	e9 20 fe ff ff       	jmpq   400b60 <.plt>

Disassembly of section .plt.got:

0000000000400d40 <__gmon_start__@plt>:
  400d40:	ff 25 b2 32 20 00    	jmpq   *0x2032b2(%rip)        # 603ff8 <__gmon_start__>
  400d46:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400d50 <_start>:
  400d50:	31 ed                	xor    %ebp,%ebp
  400d52:	49 89 d1             	mov    %rdx,%r9
  400d55:	5e                   	pop    %rsi
  400d56:	48 89 e2             	mov    %rsp,%rdx
  400d59:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400d5d:	50                   	push   %rax
  400d5e:	54                   	push   %rsp
  400d5f:	49 c7 c0 10 26 40 00 	mov    $0x402610,%r8
  400d66:	48 c7 c1 a0 25 40 00 	mov    $0x4025a0,%rcx
  400d6d:	48 c7 c7 46 0e 40 00 	mov    $0x400e46,%rdi
  400d74:	e8 97 fe ff ff       	callq  400c10 <__libc_start_main@plt>
  400d79:	f4                   	hlt    
  400d7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400d80 <deregister_tm_clones>:
  400d80:	b8 87 4b 60 00       	mov    $0x604b87,%eax
  400d85:	55                   	push   %rbp
  400d86:	48 2d 80 4b 60 00    	sub    $0x604b80,%rax
  400d8c:	48 83 f8 0e          	cmp    $0xe,%rax
  400d90:	48 89 e5             	mov    %rsp,%rbp
  400d93:	76 1b                	jbe    400db0 <deregister_tm_clones+0x30>
  400d95:	b8 00 00 00 00       	mov    $0x0,%eax
  400d9a:	48 85 c0             	test   %rax,%rax
  400d9d:	74 11                	je     400db0 <deregister_tm_clones+0x30>
  400d9f:	5d                   	pop    %rbp
  400da0:	bf 80 4b 60 00       	mov    $0x604b80,%edi
  400da5:	ff e0                	jmpq   *%rax
  400da7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400dae:	00 00 
  400db0:	5d                   	pop    %rbp
  400db1:	c3                   	retq   
  400db2:	0f 1f 40 00          	nopl   0x0(%rax)
  400db6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400dbd:	00 00 00 

0000000000400dc0 <register_tm_clones>:
  400dc0:	be 80 4b 60 00       	mov    $0x604b80,%esi
  400dc5:	55                   	push   %rbp
  400dc6:	48 81 ee 80 4b 60 00 	sub    $0x604b80,%rsi
  400dcd:	48 c1 fe 03          	sar    $0x3,%rsi
  400dd1:	48 89 e5             	mov    %rsp,%rbp
  400dd4:	48 89 f0             	mov    %rsi,%rax
  400dd7:	48 c1 e8 3f          	shr    $0x3f,%rax
  400ddb:	48 01 c6             	add    %rax,%rsi
  400dde:	48 d1 fe             	sar    %rsi
  400de1:	74 15                	je     400df8 <register_tm_clones+0x38>
  400de3:	b8 00 00 00 00       	mov    $0x0,%eax
  400de8:	48 85 c0             	test   %rax,%rax
  400deb:	74 0b                	je     400df8 <register_tm_clones+0x38>
  400ded:	5d                   	pop    %rbp
  400dee:	bf 80 4b 60 00       	mov    $0x604b80,%edi
  400df3:	ff e0                	jmpq   *%rax
  400df5:	0f 1f 00             	nopl   (%rax)
  400df8:	5d                   	pop    %rbp
  400df9:	c3                   	retq   
  400dfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400e00 <__do_global_dtors_aux>:
  400e00:	80 3d a1 3d 20 00 00 	cmpb   $0x0,0x203da1(%rip)        # 604ba8 <completed.7594>
  400e07:	75 11                	jne    400e1a <__do_global_dtors_aux+0x1a>
  400e09:	55                   	push   %rbp
  400e0a:	48 89 e5             	mov    %rsp,%rbp
  400e0d:	e8 6e ff ff ff       	callq  400d80 <deregister_tm_clones>
  400e12:	5d                   	pop    %rbp
  400e13:	c6 05 8e 3d 20 00 01 	movb   $0x1,0x203d8e(%rip)        # 604ba8 <completed.7594>
  400e1a:	f3 c3                	repz retq 
  400e1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400e20 <frame_dummy>:
  400e20:	bf 20 3e 60 00       	mov    $0x603e20,%edi
  400e25:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400e29:	75 05                	jne    400e30 <frame_dummy+0x10>
  400e2b:	eb 93                	jmp    400dc0 <register_tm_clones>
  400e2d:	0f 1f 00             	nopl   (%rax)
  400e30:	b8 00 00 00 00       	mov    $0x0,%eax
  400e35:	48 85 c0             	test   %rax,%rax
  400e38:	74 f1                	je     400e2b <frame_dummy+0xb>
  400e3a:	55                   	push   %rbp
  400e3b:	48 89 e5             	mov    %rsp,%rbp
  400e3e:	ff d0                	callq  *%rax
  400e40:	5d                   	pop    %rbp
  400e41:	e9 7a ff ff ff       	jmpq   400dc0 <register_tm_clones>

0000000000400e46 <main>:
  400e46:	53                   	push   %rbx
  400e47:	83 ff 01             	cmp    $0x1,%edi
  400e4a:	75 10                	jne    400e5c <main+0x16>
  400e4c:	48 8b 05 3d 3d 20 00 	mov    0x203d3d(%rip),%rax        # 604b90 <stdin@@GLIBC_2.2.5>
  400e53:	48 89 05 56 3d 20 00 	mov    %rax,0x203d56(%rip)        # 604bb0 <infile>
  400e5a:	eb 63                	jmp    400ebf <main+0x79>
  400e5c:	48 89 f3             	mov    %rsi,%rbx
  400e5f:	83 ff 02             	cmp    $0x2,%edi
  400e62:	75 3a                	jne    400e9e <main+0x58>
  400e64:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400e68:	be 24 26 40 00       	mov    $0x402624,%esi
  400e6d:	e8 3e fe ff ff       	callq  400cb0 <fopen@plt>
  400e72:	48 89 05 37 3d 20 00 	mov    %rax,0x203d37(%rip)        # 604bb0 <infile>
  400e79:	48 85 c0             	test   %rax,%rax
  400e7c:	75 41                	jne    400ebf <main+0x79>
  400e7e:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  400e82:	48 8b 13             	mov    (%rbx),%rdx
  400e85:	be 26 26 40 00       	mov    $0x402626,%esi
  400e8a:	bf 01 00 00 00       	mov    $0x1,%edi
  400e8f:	e8 0c fe ff ff       	callq  400ca0 <__printf_chk@plt>
  400e94:	bf 08 00 00 00       	mov    $0x8,%edi
  400e99:	e8 32 fe ff ff       	callq  400cd0 <exit@plt>
  400e9e:	48 8b 16             	mov    (%rsi),%rdx
  400ea1:	be 43 26 40 00       	mov    $0x402643,%esi
  400ea6:	bf 01 00 00 00       	mov    $0x1,%edi
  400eab:	b8 00 00 00 00       	mov    $0x0,%eax
  400eb0:	e8 eb fd ff ff       	callq  400ca0 <__printf_chk@plt>
  400eb5:	bf 08 00 00 00       	mov    $0x8,%edi
  400eba:	e8 11 fe ff ff       	callq  400cd0 <exit@plt>
  400ebf:	e8 12 07 00 00       	callq  4015d6 <initialize_bomb>
  400ec4:	bf b8 26 40 00       	mov    $0x4026b8,%edi
  400ec9:	e8 e2 fc ff ff       	callq  400bb0 <puts@plt>
  400ece:	bf f8 26 40 00       	mov    $0x4026f8,%edi
  400ed3:	e8 d8 fc ff ff       	callq  400bb0 <puts@plt>
  400ed8:	e8 de 09 00 00       	callq  4018bb <read_line>
  400edd:	48 89 c7             	mov    %rax,%rdi
  400ee0:	e8 ec 00 00 00       	callq  400fd1 <phase_1>
  400ee5:	e8 f7 0a 00 00       	callq  4019e1 <phase_defused>
  400eea:	bf 28 27 40 00       	mov    $0x402728,%edi
  400eef:	e8 bc fc ff ff       	callq  400bb0 <puts@plt>
  400ef4:	e8 c2 09 00 00       	callq  4018bb <read_line>
  400ef9:	48 89 c7             	mov    %rax,%rdi
  400efc:	e8 2e 01 00 00       	callq  40102f <phase_2>
  400f01:	e8 db 0a 00 00       	callq  4019e1 <phase_defused>
  400f06:	bf 5d 26 40 00       	mov    $0x40265d,%edi
  400f0b:	e8 a0 fc ff ff       	callq  400bb0 <puts@plt>
  400f10:	e8 a6 09 00 00       	callq  4018bb <read_line>
  400f15:	48 89 c7             	mov    %rax,%rdi
  400f18:	e8 2e 01 00 00       	callq  40104b <phase_3>
  400f1d:	e8 bf 0a 00 00       	callq  4019e1 <phase_defused>
  400f22:	bf 7b 26 40 00       	mov    $0x40267b,%edi
  400f27:	e8 84 fc ff ff       	callq  400bb0 <puts@plt>
  400f2c:	e8 8a 09 00 00       	callq  4018bb <read_line>
  400f31:	48 89 c7             	mov    %rax,%rdi
  400f34:	e8 8e 01 00 00       	callq  4010c7 <phase_4>
  400f39:	e8 a3 0a 00 00       	callq  4019e1 <phase_defused>
  400f3e:	bf 58 27 40 00       	mov    $0x402758,%edi
  400f43:	e8 68 fc ff ff       	callq  400bb0 <puts@plt>
  400f48:	e8 6e 09 00 00       	callq  4018bb <read_line>
  400f4d:	48 89 c7             	mov    %rax,%rdi
  400f50:	e8 dd 01 00 00       	callq  401132 <phase_5>
  400f55:	e8 87 0a 00 00       	callq  4019e1 <phase_defused>
  400f5a:	bf 8c 26 40 00       	mov    $0x40268c,%edi
  400f5f:	e8 4c fc ff ff       	callq  400bb0 <puts@plt>
  400f64:	e8 52 09 00 00       	callq  4018bb <read_line>
  400f69:	48 89 c7             	mov    %rax,%rdi
  400f6c:	e8 2d 03 00 00       	callq  40129e <phase_6>
  400f71:	e8 6b 0a 00 00       	callq  4019e1 <phase_defused>
  400f76:	bf 80 27 40 00       	mov    $0x402780,%edi
  400f7b:	e8 30 fc ff ff       	callq  400bb0 <puts@plt>
  400f80:	e8 36 09 00 00       	callq  4018bb <read_line>
  400f85:	48 89 c7             	mov    %rax,%rdi
  400f88:	e8 84 03 00 00       	callq  401311 <phase_7>
  400f8d:	e8 4f 0a 00 00       	callq  4019e1 <phase_defused>
  400f92:	bf a0 27 40 00       	mov    $0x4027a0,%edi
  400f97:	e8 14 fc ff ff       	callq  400bb0 <puts@plt>
  400f9c:	e8 1a 09 00 00       	callq  4018bb <read_line>
  400fa1:	48 89 c7             	mov    %rax,%rdi
  400fa4:	e8 38 04 00 00       	callq  4013e1 <phase_8>
  400fa9:	e8 33 0a 00 00       	callq  4019e1 <phase_defused>
  400fae:	bf aa 26 40 00       	mov    $0x4026aa,%edi
  400fb3:	e8 f8 fb ff ff       	callq  400bb0 <puts@plt>
  400fb8:	e8 fe 08 00 00       	callq  4018bb <read_line>
  400fbd:	48 89 c7             	mov    %rax,%rdi
  400fc0:	e8 d7 04 00 00       	callq  40149c <phase_9>
  400fc5:	e8 17 0a 00 00       	callq  4019e1 <phase_defused>
  400fca:	b8 00 00 00 00       	mov    $0x0,%eax
  400fcf:	5b                   	pop    %rbx
  400fd0:	c3                   	retq   

0000000000400fd1 <phase_1>:
  400fd1:	48 83 ec 18          	sub    $0x18,%rsp
  400fd5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400fdc:	00 00 
  400fde:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  400fe3:	31 c0                	xor    %eax,%eax
  400fe5:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
  400fec:	00 
  400fed:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
  400ff2:	be 70 2a 40 00       	mov    $0x402a70,%esi
  400ff7:	e8 94 fc ff ff       	callq  400c90 <__isoc99_sscanf@plt>
  400ffc:	83 f8 01             	cmp    $0x1,%eax
  400fff:	74 05                	je     401006 <phase_1+0x35>
  401001:	e8 40 08 00 00       	callq  401846 <explode_bomb>
  401006:	81 7c 24 04 bf 01 00 	cmpl   $0x1bf,0x4(%rsp)
  40100d:	00 
  40100e:	74 05                	je     401015 <phase_1+0x44>
  401010:	e8 31 08 00 00       	callq  401846 <explode_bomb>
  401015:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  40101a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401021:	00 00 
  401023:	74 05                	je     40102a <phase_1+0x59>
  401025:	e8 a6 fb ff ff       	callq  400bd0 <__stack_chk_fail@plt>
  40102a:	48 83 c4 18          	add    $0x18,%rsp
  40102e:	c3                   	retq   

000000000040102f <phase_2>:
  40102f:	48 83 ec 08          	sub    $0x8,%rsp
  401033:	be c8 27 40 00       	mov    $0x4027c8,%esi
  401038:	e8 32 05 00 00       	callq  40156f <strings_not_equal>
  40103d:	85 c0                	test   %eax,%eax
  40103f:	74 05                	je     401046 <phase_2+0x17>
  401041:	e8 00 08 00 00       	callq  401846 <explode_bomb>
  401046:	48 83 c4 08          	add    $0x8,%rsp
  40104a:	c3                   	retq   

000000000040104b <phase_3>:
  40104b:	53                   	push   %rbx
  40104c:	48 89 fb             	mov    %rdi,%rbx
  40104f:	bf 00 28 40 00       	mov    $0x402800,%edi
  401054:	e8 f8 04 00 00       	callq  401551 <string_length>
  401059:	8d 78 01             	lea    0x1(%rax),%edi
  40105c:	48 63 ff             	movslq %edi,%rdi
  40105f:	e8 0c fc ff ff       	callq  400c70 <malloc@plt>
  401064:	48 ba 59 6f 75 20 63 	movabs $0x206e616320756f59,%rdx
  40106b:	61 6e 20 
  40106e:	48 89 10             	mov    %rdx,(%rax)
  401071:	48 b9 52 75 73 73 69 	movabs $0x6620616973737552,%rcx
  401078:	61 20 66 
  40107b:	48 89 48 08          	mov    %rcx,0x8(%rax)
  40107f:	48 be 72 6f 6d 20 6c 	movabs $0x646e616c206d6f72,%rsi
  401086:	61 6e 64 
  401089:	48 89 70 10          	mov    %rsi,0x10(%rax)
  40108d:	48 ba 20 68 65 72 65 	movabs $0x6e69206572656820,%rdx
  401094:	20 69 6e 
  401097:	48 89 50 18          	mov    %rdx,0x18(%rax)
  40109b:	48 b9 20 41 6c 61 73 	movabs $0x2e616b73616c4120,%rcx
  4010a2:	6b 61 2e 
  4010a5:	48 89 48 20          	mov    %rcx,0x20(%rax)
  4010a9:	c6 40 28 00          	movb   $0x0,0x28(%rax)
  4010ad:	c6 40 27 46          	movb   $0x46,0x27(%rax)
  4010b1:	48 89 c6             	mov    %rax,%rsi
  4010b4:	48 89 df             	mov    %rbx,%rdi
  4010b7:	e8 b3 04 00 00       	callq  40156f <strings_not_equal>
  4010bc:	85 c0                	test   %eax,%eax
  4010be:	74 05                	je     4010c5 <phase_3+0x7a>
  4010c0:	e8 81 07 00 00       	callq  401846 <explode_bomb>
  4010c5:	5b                   	pop    %rbx
  4010c6:	c3                   	retq   

00000000004010c7 <phase_4>:
  4010c7:	55                   	push   %rbp
  4010c8:	53                   	push   %rbx
  4010c9:	48 83 ec 28          	sub    $0x28,%rsp
  4010cd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4010d4:	00 00 
  4010d6:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4010db:	31 c0                	xor    %eax,%eax
  4010dd:	48 89 e6             	mov    %rsp,%rsi
  4010e0:	e8 97 07 00 00       	callq  40187c <read_six_numbers>
  4010e5:	83 3c 24 00          	cmpl   $0x0,(%rsp)
  4010e9:	79 05                	jns    4010f0 <phase_4+0x29>
  4010eb:	e8 56 07 00 00       	callq  401846 <explode_bomb>
  4010f0:	48 89 e5             	mov    %rsp,%rbp
  4010f3:	bb 1e 00 00 00       	mov    $0x1e,%ebx
  4010f8:	89 d8                	mov    %ebx,%eax
  4010fa:	03 45 00             	add    0x0(%rbp),%eax
  4010fd:	39 45 04             	cmp    %eax,0x4(%rbp)
  401100:	74 05                	je     401107 <phase_4+0x40>
  401102:	e8 3f 07 00 00       	callq  401846 <explode_bomb>
  401107:	48 83 c5 04          	add    $0x4,%rbp
  40110b:	83 c3 1e             	add    $0x1e,%ebx
  40110e:	81 fb b4 00 00 00    	cmp    $0xb4,%ebx
  401114:	75 e2                	jne    4010f8 <phase_4+0x31>
  401116:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  40111b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401122:	00 00 
  401124:	74 05                	je     40112b <phase_4+0x64>
  401126:	e8 a5 fa ff ff       	callq  400bd0 <__stack_chk_fail@plt>
  40112b:	48 83 c4 28          	add    $0x28,%rsp
  40112f:	5b                   	pop    %rbx
  401130:	5d                   	pop    %rbp
  401131:	c3                   	retq   

0000000000401132 <phase_5>:
  401132:	41 56                	push   %r14
  401134:	41 55                	push   %r13
  401136:	41 54                	push   %r12
  401138:	55                   	push   %rbp
  401139:	53                   	push   %rbx
  40113a:	48 83 ec 60          	sub    $0x60,%rsp
  40113e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401145:	00 00 
  401147:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  40114c:	31 c0                	xor    %eax,%eax
  40114e:	48 89 e6             	mov    %rsp,%rsi
  401151:	e8 26 07 00 00       	callq  40187c <read_six_numbers>
  401156:	49 89 e4             	mov    %rsp,%r12
  401159:	49 89 e5             	mov    %rsp,%r13
  40115c:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401162:	4c 89 ed             	mov    %r13,%rbp
  401165:	41 8b 45 00          	mov    0x0(%r13),%eax
  401169:	83 e8 01             	sub    $0x1,%eax
  40116c:	83 f8 05             	cmp    $0x5,%eax
  40116f:	76 05                	jbe    401176 <phase_5+0x44>
  401171:	e8 d0 06 00 00       	callq  401846 <explode_bomb>
  401176:	41 83 c6 01          	add    $0x1,%r14d
  40117a:	41 83 fe 06          	cmp    $0x6,%r14d
  40117e:	74 21                	je     4011a1 <phase_5+0x6f>
  401180:	44 89 f3             	mov    %r14d,%ebx
  401183:	48 63 c3             	movslq %ebx,%rax
  401186:	8b 04 84             	mov    (%rsp,%rax,4),%eax
  401189:	39 45 00             	cmp    %eax,0x0(%rbp)
  40118c:	75 05                	jne    401193 <phase_5+0x61>
  40118e:	e8 b3 06 00 00       	callq  401846 <explode_bomb>
  401193:	83 c3 01             	add    $0x1,%ebx
  401196:	83 fb 05             	cmp    $0x5,%ebx
  401199:	7e e8                	jle    401183 <phase_5+0x51>
  40119b:	49 83 c5 04          	add    $0x4,%r13
  40119f:	eb c1                	jmp    401162 <phase_5+0x30>
  4011a1:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  4011a6:	ba 07 00 00 00       	mov    $0x7,%edx
  4011ab:	89 d0                	mov    %edx,%eax
  4011ad:	41 2b 04 24          	sub    (%r12),%eax
  4011b1:	41 89 04 24          	mov    %eax,(%r12)
  4011b5:	49 83 c4 04          	add    $0x4,%r12
  4011b9:	4c 39 e1             	cmp    %r12,%rcx
  4011bc:	75 ed                	jne    4011ab <phase_5+0x79>
  4011be:	be 00 00 00 00       	mov    $0x0,%esi
  4011c3:	eb 1a                	jmp    4011df <phase_5+0xad>
  4011c5:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  4011c9:	83 c0 01             	add    $0x1,%eax
  4011cc:	39 c8                	cmp    %ecx,%eax
  4011ce:	75 f5                	jne    4011c5 <phase_5+0x93>
  4011d0:	48 89 54 74 20       	mov    %rdx,0x20(%rsp,%rsi,2)
  4011d5:	48 83 c6 04          	add    $0x4,%rsi
  4011d9:	48 83 fe 18          	cmp    $0x18,%rsi
  4011dd:	74 14                	je     4011f3 <phase_5+0xc1>
  4011df:	8b 0c 34             	mov    (%rsp,%rsi,1),%ecx
  4011e2:	b8 01 00 00 00       	mov    $0x1,%eax
  4011e7:	ba 00 43 60 00       	mov    $0x604300,%edx
  4011ec:	83 f9 01             	cmp    $0x1,%ecx
  4011ef:	7f d4                	jg     4011c5 <phase_5+0x93>
  4011f1:	eb dd                	jmp    4011d0 <phase_5+0x9e>
  4011f3:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
  4011f8:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  4011fd:	48 8d 74 24 48       	lea    0x48(%rsp),%rsi
  401202:	48 89 d9             	mov    %rbx,%rcx
  401205:	48 8b 50 08          	mov    0x8(%rax),%rdx
  401209:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  40120d:	48 83 c0 08          	add    $0x8,%rax
  401211:	48 89 d1             	mov    %rdx,%rcx
  401214:	48 39 c6             	cmp    %rax,%rsi
  401217:	75 ec                	jne    401205 <phase_5+0xd3>
  401219:	48 c7 42 08 00 00 00 	movq   $0x0,0x8(%rdx)
  401220:	00 
  401221:	bd 05 00 00 00       	mov    $0x5,%ebp
  401226:	48 8b 43 08          	mov    0x8(%rbx),%rax
  40122a:	8b 00                	mov    (%rax),%eax
  40122c:	39 03                	cmp    %eax,(%rbx)
  40122e:	7d 05                	jge    401235 <phase_5+0x103>
  401230:	e8 11 06 00 00       	callq  401846 <explode_bomb>
  401235:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  401239:	83 ed 01             	sub    $0x1,%ebp
  40123c:	75 e8                	jne    401226 <phase_5+0xf4>
  40123e:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  401243:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40124a:	00 00 
  40124c:	74 05                	je     401253 <phase_5+0x121>
  40124e:	e8 7d f9 ff ff       	callq  400bd0 <__stack_chk_fail@plt>
  401253:	48 83 c4 60          	add    $0x60,%rsp
  401257:	5b                   	pop    %rbx
  401258:	5d                   	pop    %rbp
  401259:	41 5c                	pop    %r12
  40125b:	41 5d                	pop    %r13
  40125d:	41 5e                	pop    %r14
  40125f:	c3                   	retq   

0000000000401260 <fun6>:
  401260:	48 83 ec 08          	sub    $0x8,%rsp
  401264:	89 d0                	mov    %edx,%eax
  401266:	29 f0                	sub    %esi,%eax
  401268:	89 c1                	mov    %eax,%ecx
  40126a:	c1 e9 1f             	shr    $0x1f,%ecx
  40126d:	01 c8                	add    %ecx,%eax
  40126f:	d1 f8                	sar    %eax
  401271:	8d 0c 30             	lea    (%rax,%rsi,1),%ecx
  401274:	39 f9                	cmp    %edi,%ecx
  401276:	7e 0c                	jle    401284 <fun6+0x24>
  401278:	8d 51 ff             	lea    -0x1(%rcx),%edx
  40127b:	e8 e0 ff ff ff       	callq  401260 <fun6>
  401280:	01 c0                	add    %eax,%eax
  401282:	eb 15                	jmp    401299 <fun6+0x39>
  401284:	b8 00 00 00 00       	mov    $0x0,%eax
  401289:	39 f9                	cmp    %edi,%ecx
  40128b:	7d 0c                	jge    401299 <fun6+0x39>
  40128d:	8d 71 01             	lea    0x1(%rcx),%esi
  401290:	e8 cb ff ff ff       	callq  401260 <fun6>
  401295:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  401299:	48 83 c4 08          	add    $0x8,%rsp
  40129d:	c3                   	retq   

000000000040129e <phase_6>:
  40129e:	48 83 ec 18          	sub    $0x18,%rsp
  4012a2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4012a9:	00 00 
  4012ab:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4012b0:	31 c0                	xor    %eax,%eax
  4012b2:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
  4012b7:	48 89 e2             	mov    %rsp,%rdx
  4012ba:	be 6d 2a 40 00       	mov    $0x402a6d,%esi
  4012bf:	e8 cc f9 ff ff       	callq  400c90 <__isoc99_sscanf@plt>
  4012c4:	83 f8 02             	cmp    $0x2,%eax
  4012c7:	75 06                	jne    4012cf <phase_6+0x31>
  4012c9:	83 3c 24 0e          	cmpl   $0xe,(%rsp)
  4012cd:	76 05                	jbe    4012d4 <phase_6+0x36>
  4012cf:	e8 72 05 00 00       	callq  401846 <explode_bomb>
  4012d4:	ba 0e 00 00 00       	mov    $0xe,%edx
  4012d9:	be 00 00 00 00       	mov    $0x0,%esi
  4012de:	8b 3c 24             	mov    (%rsp),%edi
  4012e1:	e8 7a ff ff ff       	callq  401260 <fun6>
  4012e6:	83 f8 04             	cmp    $0x4,%eax
  4012e9:	75 07                	jne    4012f2 <phase_6+0x54>
  4012eb:	83 7c 24 04 04       	cmpl   $0x4,0x4(%rsp)
  4012f0:	74 05                	je     4012f7 <phase_6+0x59>
  4012f2:	e8 4f 05 00 00       	callq  401846 <explode_bomb>
  4012f7:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4012fc:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401303:	00 00 
  401305:	74 05                	je     40130c <phase_6+0x6e>
  401307:	e8 c4 f8 ff ff       	callq  400bd0 <__stack_chk_fail@plt>
  40130c:	48 83 c4 18          	add    $0x18,%rsp
  401310:	c3                   	retq   

0000000000401311 <phase_7>:
  401311:	48 83 ec 18          	sub    $0x18,%rsp
  401315:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40131c:	00 00 
  40131e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401323:	31 c0                	xor    %eax,%eax
  401325:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
  40132a:	48 89 e2             	mov    %rsp,%rdx
  40132d:	be 6d 2a 40 00       	mov    $0x402a6d,%esi
  401332:	e8 59 f9 ff ff       	callq  400c90 <__isoc99_sscanf@plt>
  401337:	83 f8 01             	cmp    $0x1,%eax
  40133a:	7f 05                	jg     401341 <phase_7+0x30>
  40133c:	e8 05 05 00 00       	callq  401846 <explode_bomb>
  401341:	83 3c 24 07          	cmpl   $0x7,(%rsp)
  401345:	77 65                	ja     4013ac <phase_7+0x9b>
  401347:	8b 04 24             	mov    (%rsp),%eax
  40134a:	ff 24 c5 30 28 40 00 	jmpq   *0x402830(,%rax,8)
  401351:	b8 c7 02 00 00       	mov    $0x2c7,%eax
  401356:	eb 05                	jmp    40135d <phase_7+0x4c>
  401358:	b8 00 00 00 00       	mov    $0x0,%eax
  40135d:	2d bd 03 00 00       	sub    $0x3bd,%eax
  401362:	eb 05                	jmp    401369 <phase_7+0x58>
  401364:	b8 00 00 00 00       	mov    $0x0,%eax
  401369:	05 e1 03 00 00       	add    $0x3e1,%eax
  40136e:	eb 05                	jmp    401375 <phase_7+0x64>
  401370:	b8 00 00 00 00       	mov    $0x0,%eax
  401375:	2d 8d 03 00 00       	sub    $0x38d,%eax
  40137a:	eb 05                	jmp    401381 <phase_7+0x70>
  40137c:	b8 00 00 00 00       	mov    $0x0,%eax
  401381:	05 8d 03 00 00       	add    $0x38d,%eax
  401386:	eb 05                	jmp    40138d <phase_7+0x7c>
  401388:	b8 00 00 00 00       	mov    $0x0,%eax
  40138d:	2d 8d 03 00 00       	sub    $0x38d,%eax
  401392:	eb 05                	jmp    401399 <phase_7+0x88>
  401394:	b8 00 00 00 00       	mov    $0x0,%eax
  401399:	05 8d 03 00 00       	add    $0x38d,%eax
  40139e:	eb 05                	jmp    4013a5 <phase_7+0x94>
  4013a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4013a5:	2d 8d 03 00 00       	sub    $0x38d,%eax
  4013aa:	eb 0a                	jmp    4013b6 <phase_7+0xa5>
  4013ac:	e8 95 04 00 00       	callq  401846 <explode_bomb>
  4013b1:	b8 00 00 00 00       	mov    $0x0,%eax
  4013b6:	83 3c 24 05          	cmpl   $0x5,(%rsp)
  4013ba:	7f 06                	jg     4013c2 <phase_7+0xb1>
  4013bc:	3b 44 24 04          	cmp    0x4(%rsp),%eax
  4013c0:	74 05                	je     4013c7 <phase_7+0xb6>
  4013c2:	e8 7f 04 00 00       	callq  401846 <explode_bomb>
  4013c7:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4013cc:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4013d3:	00 00 
  4013d5:	74 05                	je     4013dc <phase_7+0xcb>
  4013d7:	e8 f4 f7 ff ff       	callq  400bd0 <__stack_chk_fail@plt>
  4013dc:	48 83 c4 18          	add    $0x18,%rsp
  4013e0:	c3                   	retq   

00000000004013e1 <phase_8>:
  4013e1:	53                   	push   %rbx
  4013e2:	48 83 ec 10          	sub    $0x10,%rsp
  4013e6:	48 89 fb             	mov    %rdi,%rbx
  4013e9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4013f0:	00 00 
  4013f2:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4013f7:	31 c0                	xor    %eax,%eax
  4013f9:	e8 53 01 00 00       	callq  401551 <string_length>
  4013fe:	83 f8 06             	cmp    $0x6,%eax
  401401:	74 05                	je     401408 <phase_8+0x27>
  401403:	e8 3e 04 00 00       	callq  401846 <explode_bomb>
  401408:	b8 00 00 00 00       	mov    $0x0,%eax
  40140d:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
  401411:	83 e2 0f             	and    $0xf,%edx
  401414:	0f b6 92 70 28 40 00 	movzbl 0x402870(%rdx),%edx
  40141b:	88 14 04             	mov    %dl,(%rsp,%rax,1)
  40141e:	48 83 c0 01          	add    $0x1,%rax
  401422:	48 83 f8 06          	cmp    $0x6,%rax
  401426:	75 e5                	jne    40140d <phase_8+0x2c>
  401428:	c6 44 24 06 00       	movb   $0x0,0x6(%rsp)
  40142d:	be bf 27 40 00       	mov    $0x4027bf,%esi
  401432:	48 89 e7             	mov    %rsp,%rdi
  401435:	e8 35 01 00 00       	callq  40156f <strings_not_equal>
  40143a:	85 c0                	test   %eax,%eax
  40143c:	74 05                	je     401443 <phase_8+0x62>
  40143e:	e8 03 04 00 00       	callq  401846 <explode_bomb>
  401443:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  401448:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40144f:	00 00 
  401451:	74 05                	je     401458 <phase_8+0x77>
  401453:	e8 78 f7 ff ff       	callq  400bd0 <__stack_chk_fail@plt>
  401458:	48 83 c4 10          	add    $0x10,%rsp
  40145c:	5b                   	pop    %rbx
  40145d:	c3                   	retq   

000000000040145e <fun9>:
  40145e:	48 83 ec 08          	sub    $0x8,%rsp
  401462:	48 85 ff             	test   %rdi,%rdi
  401465:	74 2b                	je     401492 <fun9+0x34>
  401467:	8b 17                	mov    (%rdi),%edx
  401469:	39 f2                	cmp    %esi,%edx
  40146b:	7e 0d                	jle    40147a <fun9+0x1c>
  40146d:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  401471:	e8 e8 ff ff ff       	callq  40145e <fun9>
  401476:	01 c0                	add    %eax,%eax
  401478:	eb 1d                	jmp    401497 <fun9+0x39>
  40147a:	b8 00 00 00 00       	mov    $0x0,%eax
  40147f:	39 f2                	cmp    %esi,%edx
  401481:	74 14                	je     401497 <fun9+0x39>
  401483:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  401487:	e8 d2 ff ff ff       	callq  40145e <fun9>
  40148c:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  401490:	eb 05                	jmp    401497 <fun9+0x39>
  401492:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401497:	48 83 c4 08          	add    $0x8,%rsp
  40149b:	c3                   	retq   

000000000040149c <phase_9>:
  40149c:	53                   	push   %rbx
  40149d:	ba 0a 00 00 00       	mov    $0xa,%edx
  4014a2:	be 00 00 00 00       	mov    $0x0,%esi
  4014a7:	e8 b4 f7 ff ff       	callq  400c60 <strtol@plt>
  4014ac:	48 89 c3             	mov    %rax,%rbx
  4014af:	8d 40 ff             	lea    -0x1(%rax),%eax
  4014b2:	3d ec 03 00 00       	cmp    $0x3ec,%eax
  4014b7:	76 05                	jbe    4014be <phase_9+0x22>
  4014b9:	e8 88 03 00 00       	callq  401846 <explode_bomb>
  4014be:	89 de                	mov    %ebx,%esi
  4014c0:	bf 20 41 60 00       	mov    $0x604120,%edi
  4014c5:	e8 94 ff ff ff       	callq  40145e <fun9>
  4014ca:	83 f8 06             	cmp    $0x6,%eax
  4014cd:	74 05                	je     4014d4 <phase_9+0x38>
  4014cf:	e8 72 03 00 00       	callq  401846 <explode_bomb>
  4014d4:	5b                   	pop    %rbx
  4014d5:	c3                   	retq   

00000000004014d6 <sig_handler>:
  4014d6:	48 83 ec 08          	sub    $0x8,%rsp
  4014da:	bf 80 28 40 00       	mov    $0x402880,%edi
  4014df:	e8 cc f6 ff ff       	callq  400bb0 <puts@plt>
  4014e4:	bf 03 00 00 00       	mov    $0x3,%edi
  4014e9:	e8 12 f8 ff ff       	callq  400d00 <sleep@plt>
  4014ee:	be e9 29 40 00       	mov    $0x4029e9,%esi
  4014f3:	bf 01 00 00 00       	mov    $0x1,%edi
  4014f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4014fd:	e8 9e f7 ff ff       	callq  400ca0 <__printf_chk@plt>
  401502:	48 8b 3d 77 36 20 00 	mov    0x203677(%rip),%rdi        # 604b80 <stdout@@GLIBC_2.2.5>
  401509:	e8 72 f7 ff ff       	callq  400c80 <fflush@plt>
  40150e:	bf 01 00 00 00       	mov    $0x1,%edi
  401513:	e8 e8 f7 ff ff       	callq  400d00 <sleep@plt>
  401518:	bf f1 29 40 00       	mov    $0x4029f1,%edi
  40151d:	e8 8e f6 ff ff       	callq  400bb0 <puts@plt>
  401522:	bf 10 00 00 00       	mov    $0x10,%edi
  401527:	e8 a4 f7 ff ff       	callq  400cd0 <exit@plt>

000000000040152c <invalid_phase>:
  40152c:	48 83 ec 08          	sub    $0x8,%rsp
  401530:	48 89 fa             	mov    %rdi,%rdx
  401533:	be f9 29 40 00       	mov    $0x4029f9,%esi
  401538:	bf 01 00 00 00       	mov    $0x1,%edi
  40153d:	b8 00 00 00 00       	mov    $0x0,%eax
  401542:	e8 59 f7 ff ff       	callq  400ca0 <__printf_chk@plt>
  401547:	bf 08 00 00 00       	mov    $0x8,%edi
  40154c:	e8 7f f7 ff ff       	callq  400cd0 <exit@plt>

0000000000401551 <string_length>:
  401551:	80 3f 00             	cmpb   $0x0,(%rdi)
  401554:	74 13                	je     401569 <string_length+0x18>
  401556:	b8 00 00 00 00       	mov    $0x0,%eax
  40155b:	48 83 c7 01          	add    $0x1,%rdi
  40155f:	83 c0 01             	add    $0x1,%eax
  401562:	80 3f 00             	cmpb   $0x0,(%rdi)
  401565:	75 f4                	jne    40155b <string_length+0xa>
  401567:	f3 c3                	repz retq 
  401569:	b8 00 00 00 00       	mov    $0x0,%eax
  40156e:	c3                   	retq   

000000000040156f <strings_not_equal>:
  40156f:	41 54                	push   %r12
  401571:	55                   	push   %rbp
  401572:	53                   	push   %rbx
  401573:	48 89 fb             	mov    %rdi,%rbx
  401576:	48 89 f5             	mov    %rsi,%rbp
  401579:	e8 d3 ff ff ff       	callq  401551 <string_length>
  40157e:	41 89 c4             	mov    %eax,%r12d
  401581:	48 89 ef             	mov    %rbp,%rdi
  401584:	e8 c8 ff ff ff       	callq  401551 <string_length>
  401589:	ba 01 00 00 00       	mov    $0x1,%edx
  40158e:	41 39 c4             	cmp    %eax,%r12d
  401591:	75 3c                	jne    4015cf <strings_not_equal+0x60>
  401593:	0f b6 03             	movzbl (%rbx),%eax
  401596:	84 c0                	test   %al,%al
  401598:	74 22                	je     4015bc <strings_not_equal+0x4d>
  40159a:	3a 45 00             	cmp    0x0(%rbp),%al
  40159d:	74 07                	je     4015a6 <strings_not_equal+0x37>
  40159f:	eb 22                	jmp    4015c3 <strings_not_equal+0x54>
  4015a1:	3a 45 00             	cmp    0x0(%rbp),%al
  4015a4:	75 24                	jne    4015ca <strings_not_equal+0x5b>
  4015a6:	48 83 c3 01          	add    $0x1,%rbx
  4015aa:	48 83 c5 01          	add    $0x1,%rbp
  4015ae:	0f b6 03             	movzbl (%rbx),%eax
  4015b1:	84 c0                	test   %al,%al
  4015b3:	75 ec                	jne    4015a1 <strings_not_equal+0x32>
  4015b5:	ba 00 00 00 00       	mov    $0x0,%edx
  4015ba:	eb 13                	jmp    4015cf <strings_not_equal+0x60>
  4015bc:	ba 00 00 00 00       	mov    $0x0,%edx
  4015c1:	eb 0c                	jmp    4015cf <strings_not_equal+0x60>
  4015c3:	ba 01 00 00 00       	mov    $0x1,%edx
  4015c8:	eb 05                	jmp    4015cf <strings_not_equal+0x60>
  4015ca:	ba 01 00 00 00       	mov    $0x1,%edx
  4015cf:	89 d0                	mov    %edx,%eax
  4015d1:	5b                   	pop    %rbx
  4015d2:	5d                   	pop    %rbp
  4015d3:	41 5c                	pop    %r12
  4015d5:	c3                   	retq   

00000000004015d6 <initialize_bomb>:
  4015d6:	53                   	push   %rbx
  4015d7:	48 81 ec 50 20 00 00 	sub    $0x2050,%rsp
  4015de:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4015e5:	00 00 
  4015e7:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
  4015ee:	00 
  4015ef:	31 c0                	xor    %eax,%eax
  4015f1:	be d6 14 40 00       	mov    $0x4014d6,%esi
  4015f6:	bf 02 00 00 00       	mov    $0x2,%edi
  4015fb:	e8 30 f6 ff ff       	callq  400c30 <signal@plt>
  401600:	be 40 00 00 00       	mov    $0x40,%esi
  401605:	48 89 e7             	mov    %rsp,%rdi
  401608:	e8 b3 f6 ff ff       	callq  400cc0 <gethostname@plt>
  40160d:	85 c0                	test   %eax,%eax
  40160f:	75 13                	jne    401624 <initialize_bomb+0x4e>
  401611:	48 8b 3d 68 31 20 00 	mov    0x203168(%rip),%rdi        # 604780 <host_table>
  401618:	bb 88 47 60 00       	mov    $0x604788,%ebx
  40161d:	48 85 ff             	test   %rdi,%rdi
  401620:	75 16                	jne    401638 <initialize_bomb+0x62>
  401622:	eb 52                	jmp    401676 <initialize_bomb+0xa0>
  401624:	bf b8 28 40 00       	mov    $0x4028b8,%edi
  401629:	e8 82 f5 ff ff       	callq  400bb0 <puts@plt>
  40162e:	bf 08 00 00 00       	mov    $0x8,%edi
  401633:	e8 98 f6 ff ff       	callq  400cd0 <exit@plt>
  401638:	48 89 e6             	mov    %rsp,%rsi
  40163b:	e8 40 f5 ff ff       	callq  400b80 <strcasecmp@plt>
  401640:	85 c0                	test   %eax,%eax
  401642:	74 4e                	je     401692 <initialize_bomb+0xbc>
  401644:	48 83 c3 08          	add    $0x8,%rbx
  401648:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
  40164c:	48 85 ff             	test   %rdi,%rdi
  40164f:	75 e7                	jne    401638 <initialize_bomb+0x62>
  401651:	eb 23                	jmp    401676 <initialize_bomb+0xa0>
  401653:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
  401658:	be 0a 2a 40 00       	mov    $0x402a0a,%esi
  40165d:	bf 01 00 00 00       	mov    $0x1,%edi
  401662:	b8 00 00 00 00       	mov    $0x0,%eax
  401667:	e8 34 f6 ff ff       	callq  400ca0 <__printf_chk@plt>
  40166c:	bf 08 00 00 00       	mov    $0x8,%edi
  401671:	e8 5a f6 ff ff       	callq  400cd0 <exit@plt>
  401676:	bf f0 28 40 00       	mov    $0x4028f0,%edi
  40167b:	e8 30 f5 ff ff       	callq  400bb0 <puts@plt>
  401680:	48 89 e7             	mov    %rsp,%rdi
  401683:	e8 28 f5 ff ff       	callq  400bb0 <puts@plt>
  401688:	bf 08 00 00 00       	mov    $0x8,%edi
  40168d:	e8 3e f6 ff ff       	callq  400cd0 <exit@plt>
  401692:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  401697:	e8 b9 0c 00 00       	callq  402355 <init_driver>
  40169c:	85 c0                	test   %eax,%eax
  40169e:	78 b3                	js     401653 <initialize_bomb+0x7d>
  4016a0:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
  4016a7:	00 
  4016a8:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4016af:	00 00 
  4016b1:	74 05                	je     4016b8 <initialize_bomb+0xe2>
  4016b3:	e8 18 f5 ff ff       	callq  400bd0 <__stack_chk_fail@plt>
  4016b8:	48 81 c4 50 20 00 00 	add    $0x2050,%rsp
  4016bf:	5b                   	pop    %rbx
  4016c0:	c3                   	retq   

00000000004016c1 <initialize_bomb_solve>:
  4016c1:	f3 c3                	repz retq 

00000000004016c3 <blank_line>:
  4016c3:	55                   	push   %rbp
  4016c4:	53                   	push   %rbx
  4016c5:	48 83 ec 08          	sub    $0x8,%rsp
  4016c9:	48 89 fd             	mov    %rdi,%rbp
  4016cc:	eb 17                	jmp    4016e5 <blank_line+0x22>
  4016ce:	e8 3d f6 ff ff       	callq  400d10 <__ctype_b_loc@plt>
  4016d3:	48 83 c5 01          	add    $0x1,%rbp
  4016d7:	48 0f be db          	movsbq %bl,%rbx
  4016db:	48 8b 00             	mov    (%rax),%rax
  4016de:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  4016e3:	74 0f                	je     4016f4 <blank_line+0x31>
  4016e5:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  4016e9:	84 db                	test   %bl,%bl
  4016eb:	75 e1                	jne    4016ce <blank_line+0xb>
  4016ed:	b8 01 00 00 00       	mov    $0x1,%eax
  4016f2:	eb 05                	jmp    4016f9 <blank_line+0x36>
  4016f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4016f9:	48 83 c4 08          	add    $0x8,%rsp
  4016fd:	5b                   	pop    %rbx
  4016fe:	5d                   	pop    %rbp
  4016ff:	c3                   	retq   

0000000000401700 <skip>:
  401700:	53                   	push   %rbx
  401701:	48 63 05 a4 34 20 00 	movslq 0x2034a4(%rip),%rax        # 604bac <num_input_strings>
  401708:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  40170c:	48 c1 e7 04          	shl    $0x4,%rdi
  401710:	48 81 c7 c0 4b 60 00 	add    $0x604bc0,%rdi
  401717:	48 8b 15 92 34 20 00 	mov    0x203492(%rip),%rdx        # 604bb0 <infile>
  40171e:	be 50 00 00 00       	mov    $0x50,%esi
  401723:	e8 f8 f4 ff ff       	callq  400c20 <fgets@plt>
  401728:	48 89 c3             	mov    %rax,%rbx
  40172b:	48 85 c0             	test   %rax,%rax
  40172e:	74 0c                	je     40173c <skip+0x3c>
  401730:	48 89 c7             	mov    %rax,%rdi
  401733:	e8 8b ff ff ff       	callq  4016c3 <blank_line>
  401738:	85 c0                	test   %eax,%eax
  40173a:	75 c5                	jne    401701 <skip+0x1>
  40173c:	48 89 d8             	mov    %rbx,%rax
  40173f:	5b                   	pop    %rbx
  401740:	c3                   	retq   

0000000000401741 <send_msg>:
  401741:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401748:	41 89 f8             	mov    %edi,%r8d
  40174b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401752:	00 00 
  401754:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  40175b:	00 
  40175c:	31 c0                	xor    %eax,%eax
  40175e:	8b 35 48 34 20 00    	mov    0x203448(%rip),%esi        # 604bac <num_input_strings>
  401764:	8d 46 ff             	lea    -0x1(%rsi),%eax
  401767:	48 98                	cltq   
  401769:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  40176d:	48 c1 e2 04          	shl    $0x4,%rdx
  401771:	48 81 c2 c0 4b 60 00 	add    $0x604bc0,%rdx
  401778:	b8 00 00 00 00       	mov    $0x0,%eax
  40177d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401784:	48 89 d7             	mov    %rdx,%rdi
  401787:	f2 ae                	repnz scas %es:(%rdi),%al
  401789:	48 f7 d1             	not    %rcx
  40178c:	48 83 c1 63          	add    $0x63,%rcx
  401790:	48 81 f9 00 20 00 00 	cmp    $0x2000,%rcx
  401797:	76 19                	jbe    4017b2 <send_msg+0x71>
  401799:	be 28 29 40 00       	mov    $0x402928,%esi
  40179e:	bf 01 00 00 00       	mov    $0x1,%edi
  4017a3:	e8 f8 f4 ff ff       	callq  400ca0 <__printf_chk@plt>
  4017a8:	bf 08 00 00 00       	mov    $0x8,%edi
  4017ad:	e8 1e f5 ff ff       	callq  400cd0 <exit@plt>
  4017b2:	45 85 c0             	test   %r8d,%r8d
  4017b5:	41 b9 2c 2a 40 00    	mov    $0x402a2c,%r9d
  4017bb:	b8 24 2a 40 00       	mov    $0x402a24,%eax
  4017c0:	4c 0f 45 c8          	cmovne %rax,%r9
  4017c4:	52                   	push   %rdx
  4017c5:	56                   	push   %rsi
  4017c6:	44 8b 05 93 2f 20 00 	mov    0x202f93(%rip),%r8d        # 604760 <bomb_id>
  4017cd:	b9 35 2a 40 00       	mov    $0x402a35,%ecx
  4017d2:	ba 00 20 00 00       	mov    $0x2000,%edx
  4017d7:	be 01 00 00 00       	mov    $0x1,%esi
  4017dc:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4017e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4017e6:	e8 35 f5 ff ff       	callq  400d20 <__sprintf_chk@plt>
  4017eb:	48 8d 8c 24 10 20 00 	lea    0x2010(%rsp),%rcx
  4017f2:	00 
  4017f3:	ba 00 00 00 00       	mov    $0x0,%edx
  4017f8:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  4017fd:	bf 60 43 60 00       	mov    $0x604360,%edi
  401802:	e8 23 0d 00 00       	callq  40252a <driver_post>
  401807:	48 83 c4 10          	add    $0x10,%rsp
  40180b:	85 c0                	test   %eax,%eax
  40180d:	79 17                	jns    401826 <send_msg+0xe5>
  40180f:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  401816:	00 
  401817:	e8 94 f3 ff ff       	callq  400bb0 <puts@plt>
  40181c:	bf 00 00 00 00       	mov    $0x0,%edi
  401821:	e8 aa f4 ff ff       	callq  400cd0 <exit@plt>
  401826:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  40182d:	00 
  40182e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401835:	00 00 
  401837:	74 05                	je     40183e <send_msg+0xfd>
  401839:	e8 92 f3 ff ff       	callq  400bd0 <__stack_chk_fail@plt>
  40183e:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  401845:	c3                   	retq   

0000000000401846 <explode_bomb>:
  401846:	48 83 ec 08          	sub    $0x8,%rsp
  40184a:	bf 41 2a 40 00       	mov    $0x402a41,%edi
  40184f:	e8 5c f3 ff ff       	callq  400bb0 <puts@plt>
  401854:	bf 4a 2a 40 00       	mov    $0x402a4a,%edi
  401859:	e8 52 f3 ff ff       	callq  400bb0 <puts@plt>
  40185e:	bf 00 00 00 00       	mov    $0x0,%edi
  401863:	e8 d9 fe ff ff       	callq  401741 <send_msg>
  401868:	bf 50 29 40 00       	mov    $0x402950,%edi
  40186d:	e8 3e f3 ff ff       	callq  400bb0 <puts@plt>
  401872:	bf 08 00 00 00       	mov    $0x8,%edi
  401877:	e8 54 f4 ff ff       	callq  400cd0 <exit@plt>

000000000040187c <read_six_numbers>:
  40187c:	48 83 ec 08          	sub    $0x8,%rsp
  401880:	48 89 f2             	mov    %rsi,%rdx
  401883:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  401887:	48 8d 46 14          	lea    0x14(%rsi),%rax
  40188b:	50                   	push   %rax
  40188c:	48 8d 46 10          	lea    0x10(%rsi),%rax
  401890:	50                   	push   %rax
  401891:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  401895:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  401899:	be 61 2a 40 00       	mov    $0x402a61,%esi
  40189e:	b8 00 00 00 00       	mov    $0x0,%eax
  4018a3:	e8 e8 f3 ff ff       	callq  400c90 <__isoc99_sscanf@plt>
  4018a8:	48 83 c4 10          	add    $0x10,%rsp
  4018ac:	83 f8 05             	cmp    $0x5,%eax
  4018af:	7f 05                	jg     4018b6 <read_six_numbers+0x3a>
  4018b1:	e8 90 ff ff ff       	callq  401846 <explode_bomb>
  4018b6:	48 83 c4 08          	add    $0x8,%rsp
  4018ba:	c3                   	retq   

00000000004018bb <read_line>:
  4018bb:	48 83 ec 08          	sub    $0x8,%rsp
  4018bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4018c4:	e8 37 fe ff ff       	callq  401700 <skip>
  4018c9:	48 85 c0             	test   %rax,%rax
  4018cc:	75 6e                	jne    40193c <read_line+0x81>
  4018ce:	48 8b 05 bb 32 20 00 	mov    0x2032bb(%rip),%rax        # 604b90 <stdin@@GLIBC_2.2.5>
  4018d5:	48 39 05 d4 32 20 00 	cmp    %rax,0x2032d4(%rip)        # 604bb0 <infile>
  4018dc:	75 14                	jne    4018f2 <read_line+0x37>
  4018de:	bf 73 2a 40 00       	mov    $0x402a73,%edi
  4018e3:	e8 c8 f2 ff ff       	callq  400bb0 <puts@plt>
  4018e8:	bf 08 00 00 00       	mov    $0x8,%edi
  4018ed:	e8 de f3 ff ff       	callq  400cd0 <exit@plt>
  4018f2:	bf 91 2a 40 00       	mov    $0x402a91,%edi
  4018f7:	e8 74 f2 ff ff       	callq  400b70 <getenv@plt>
  4018fc:	48 85 c0             	test   %rax,%rax
  4018ff:	74 0a                	je     40190b <read_line+0x50>
  401901:	bf 00 00 00 00       	mov    $0x0,%edi
  401906:	e8 c5 f3 ff ff       	callq  400cd0 <exit@plt>
  40190b:	48 8b 05 7e 32 20 00 	mov    0x20327e(%rip),%rax        # 604b90 <stdin@@GLIBC_2.2.5>
  401912:	48 89 05 97 32 20 00 	mov    %rax,0x203297(%rip)        # 604bb0 <infile>
  401919:	b8 00 00 00 00       	mov    $0x0,%eax
  40191e:	e8 dd fd ff ff       	callq  401700 <skip>
  401923:	48 85 c0             	test   %rax,%rax
  401926:	75 14                	jne    40193c <read_line+0x81>
  401928:	bf 73 2a 40 00       	mov    $0x402a73,%edi
  40192d:	e8 7e f2 ff ff       	callq  400bb0 <puts@plt>
  401932:	bf 00 00 00 00       	mov    $0x0,%edi
  401937:	e8 94 f3 ff ff       	callq  400cd0 <exit@plt>
  40193c:	8b 35 6a 32 20 00    	mov    0x20326a(%rip),%esi        # 604bac <num_input_strings>
  401942:	48 63 c6             	movslq %esi,%rax
  401945:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401949:	48 c1 e2 04          	shl    $0x4,%rdx
  40194d:	48 81 c2 c0 4b 60 00 	add    $0x604bc0,%rdx
  401954:	b8 00 00 00 00       	mov    $0x0,%eax
  401959:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401960:	48 89 d7             	mov    %rdx,%rdi
  401963:	f2 ae                	repnz scas %es:(%rdi),%al
  401965:	48 f7 d1             	not    %rcx
  401968:	48 83 e9 01          	sub    $0x1,%rcx
  40196c:	83 f9 4e             	cmp    $0x4e,%ecx
  40196f:	7e 46                	jle    4019b7 <read_line+0xfc>
  401971:	bf 9c 2a 40 00       	mov    $0x402a9c,%edi
  401976:	e8 35 f2 ff ff       	callq  400bb0 <puts@plt>
  40197b:	8b 05 2b 32 20 00    	mov    0x20322b(%rip),%eax        # 604bac <num_input_strings>
  401981:	8d 50 01             	lea    0x1(%rax),%edx
  401984:	89 15 22 32 20 00    	mov    %edx,0x203222(%rip)        # 604bac <num_input_strings>
  40198a:	48 98                	cltq   
  40198c:	48 6b c0 50          	imul   $0x50,%rax,%rax
  401990:	48 bf 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rdi
  401997:	75 6e 63 
  40199a:	48 89 b8 c0 4b 60 00 	mov    %rdi,0x604bc0(%rax)
  4019a1:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
  4019a8:	2a 2a 00 
  4019ab:	48 89 b8 c8 4b 60 00 	mov    %rdi,0x604bc8(%rax)
  4019b2:	e8 8f fe ff ff       	callq  401846 <explode_bomb>
  4019b7:	83 e9 01             	sub    $0x1,%ecx
  4019ba:	48 63 c9             	movslq %ecx,%rcx
  4019bd:	48 63 c6             	movslq %esi,%rax
  4019c0:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4019c4:	48 c1 e0 04          	shl    $0x4,%rax
  4019c8:	c6 84 01 c0 4b 60 00 	movb   $0x0,0x604bc0(%rcx,%rax,1)
  4019cf:	00 
  4019d0:	8d 46 01             	lea    0x1(%rsi),%eax
  4019d3:	89 05 d3 31 20 00    	mov    %eax,0x2031d3(%rip)        # 604bac <num_input_strings>
  4019d9:	48 89 d0             	mov    %rdx,%rax
  4019dc:	48 83 c4 08          	add    $0x8,%rsp
  4019e0:	c3                   	retq   

00000000004019e1 <phase_defused>:
  4019e1:	48 83 ec 08          	sub    $0x8,%rsp
  4019e5:	bf 01 00 00 00       	mov    $0x1,%edi
  4019ea:	e8 52 fd ff ff       	callq  401741 <send_msg>
  4019ef:	83 3d b6 31 20 00 09 	cmpl   $0x9,0x2031b6(%rip)        # 604bac <num_input_strings>
  4019f6:	75 14                	jne    401a0c <phase_defused+0x2b>
  4019f8:	bf 78 29 40 00       	mov    $0x402978,%edi
  4019fd:	e8 ae f1 ff ff       	callq  400bb0 <puts@plt>
  401a02:	bf a8 29 40 00       	mov    $0x4029a8,%edi
  401a07:	e8 a4 f1 ff ff       	callq  400bb0 <puts@plt>
  401a0c:	48 83 c4 08          	add    $0x8,%rsp
  401a10:	c3                   	retq   

0000000000401a11 <sigalrm_handler>:
  401a11:	48 83 ec 08          	sub    $0x8,%rsp
  401a15:	b9 00 00 00 00       	mov    $0x0,%ecx
  401a1a:	ba 10 2f 40 00       	mov    $0x402f10,%edx
  401a1f:	be 01 00 00 00       	mov    $0x1,%esi
  401a24:	48 8b 3d 75 31 20 00 	mov    0x203175(%rip),%rdi        # 604ba0 <stderr@@GLIBC_2.2.5>
  401a2b:	b8 00 00 00 00       	mov    $0x0,%eax
  401a30:	e8 bb f2 ff ff       	callq  400cf0 <__fprintf_chk@plt>
  401a35:	bf 01 00 00 00       	mov    $0x1,%edi
  401a3a:	e8 91 f2 ff ff       	callq  400cd0 <exit@plt>

0000000000401a3f <rio_readlineb>:
  401a3f:	41 56                	push   %r14
  401a41:	41 55                	push   %r13
  401a43:	41 54                	push   %r12
  401a45:	55                   	push   %rbp
  401a46:	53                   	push   %rbx
  401a47:	48 83 ec 10          	sub    $0x10,%rsp
  401a4b:	48 89 fb             	mov    %rdi,%rbx
  401a4e:	49 89 f5             	mov    %rsi,%r13
  401a51:	49 89 d6             	mov    %rdx,%r14
  401a54:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a5b:	00 00 
  401a5d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401a62:	31 c0                	xor    %eax,%eax
  401a64:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  401a6a:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
  401a6e:	48 83 fa 01          	cmp    $0x1,%rdx
  401a72:	77 2c                	ja     401aa0 <rio_readlineb+0x61>
  401a74:	eb 6d                	jmp    401ae3 <rio_readlineb+0xa4>
  401a76:	ba 00 20 00 00       	mov    $0x2000,%edx
  401a7b:	48 89 ee             	mov    %rbp,%rsi
  401a7e:	8b 3b                	mov    (%rbx),%edi
  401a80:	e8 7b f1 ff ff       	callq  400c00 <read@plt>
  401a85:	89 43 04             	mov    %eax,0x4(%rbx)
  401a88:	85 c0                	test   %eax,%eax
  401a8a:	79 0c                	jns    401a98 <rio_readlineb+0x59>
  401a8c:	e8 ff f0 ff ff       	callq  400b90 <__errno_location@plt>
  401a91:	83 38 04             	cmpl   $0x4,(%rax)
  401a94:	74 0a                	je     401aa0 <rio_readlineb+0x61>
  401a96:	eb 6c                	jmp    401b04 <rio_readlineb+0xc5>
  401a98:	85 c0                	test   %eax,%eax
  401a9a:	74 71                	je     401b0d <rio_readlineb+0xce>
  401a9c:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  401aa0:	8b 43 04             	mov    0x4(%rbx),%eax
  401aa3:	85 c0                	test   %eax,%eax
  401aa5:	7e cf                	jle    401a76 <rio_readlineb+0x37>
  401aa7:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  401aab:	0f b6 0a             	movzbl (%rdx),%ecx
  401aae:	88 4c 24 07          	mov    %cl,0x7(%rsp)
  401ab2:	48 83 c2 01          	add    $0x1,%rdx
  401ab6:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  401aba:	83 e8 01             	sub    $0x1,%eax
  401abd:	89 43 04             	mov    %eax,0x4(%rbx)
  401ac0:	49 83 c5 01          	add    $0x1,%r13
  401ac4:	41 88 4d ff          	mov    %cl,-0x1(%r13)
  401ac8:	80 f9 0a             	cmp    $0xa,%cl
  401acb:	75 0a                	jne    401ad7 <rio_readlineb+0x98>
  401acd:	eb 14                	jmp    401ae3 <rio_readlineb+0xa4>
  401acf:	41 83 fc 01          	cmp    $0x1,%r12d
  401ad3:	75 0e                	jne    401ae3 <rio_readlineb+0xa4>
  401ad5:	eb 16                	jmp    401aed <rio_readlineb+0xae>
  401ad7:	41 83 c4 01          	add    $0x1,%r12d
  401adb:	49 63 c4             	movslq %r12d,%rax
  401ade:	4c 39 f0             	cmp    %r14,%rax
  401ae1:	72 bd                	jb     401aa0 <rio_readlineb+0x61>
  401ae3:	41 c6 45 00 00       	movb   $0x0,0x0(%r13)
  401ae8:	49 63 c4             	movslq %r12d,%rax
  401aeb:	eb 05                	jmp    401af2 <rio_readlineb+0xb3>
  401aed:	b8 00 00 00 00       	mov    $0x0,%eax
  401af2:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  401af7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  401afe:	00 00 
  401b00:	74 22                	je     401b24 <rio_readlineb+0xe5>
  401b02:	eb 1b                	jmp    401b1f <rio_readlineb+0xe0>
  401b04:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401b0b:	eb 05                	jmp    401b12 <rio_readlineb+0xd3>
  401b0d:	b8 00 00 00 00       	mov    $0x0,%eax
  401b12:	85 c0                	test   %eax,%eax
  401b14:	74 b9                	je     401acf <rio_readlineb+0x90>
  401b16:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401b1d:	eb d3                	jmp    401af2 <rio_readlineb+0xb3>
  401b1f:	e8 ac f0 ff ff       	callq  400bd0 <__stack_chk_fail@plt>
  401b24:	48 83 c4 10          	add    $0x10,%rsp
  401b28:	5b                   	pop    %rbx
  401b29:	5d                   	pop    %rbp
  401b2a:	41 5c                	pop    %r12
  401b2c:	41 5d                	pop    %r13
  401b2e:	41 5e                	pop    %r14
  401b30:	c3                   	retq   

0000000000401b31 <submitr>:
  401b31:	41 57                	push   %r15
  401b33:	41 56                	push   %r14
  401b35:	41 55                	push   %r13
  401b37:	41 54                	push   %r12
  401b39:	55                   	push   %rbp
  401b3a:	53                   	push   %rbx
  401b3b:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  401b42:	48 89 fd             	mov    %rdi,%rbp
  401b45:	41 89 f5             	mov    %esi,%r13d
  401b48:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  401b4d:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
  401b52:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  401b57:	4c 89 cb             	mov    %r9,%rbx
  401b5a:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
  401b61:	00 
  401b62:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401b69:	00 00 
  401b6b:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  401b72:	00 
  401b73:	31 c0                	xor    %eax,%eax
  401b75:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  401b7c:	00 
  401b7d:	ba 00 00 00 00       	mov    $0x0,%edx
  401b82:	be 01 00 00 00       	mov    $0x1,%esi
  401b87:	bf 02 00 00 00       	mov    $0x2,%edi
  401b8c:	e8 9f f1 ff ff       	callq  400d30 <socket@plt>
  401b91:	85 c0                	test   %eax,%eax
  401b93:	79 50                	jns    401be5 <submitr+0xb4>
  401b95:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401b9c:	3a 20 43 
  401b9f:	49 89 07             	mov    %rax,(%r15)
  401ba2:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401ba9:	20 75 6e 
  401bac:	49 89 47 08          	mov    %rax,0x8(%r15)
  401bb0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401bb7:	74 6f 20 
  401bba:	49 89 47 10          	mov    %rax,0x10(%r15)
  401bbe:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  401bc5:	65 20 73 
  401bc8:	49 89 47 18          	mov    %rax,0x18(%r15)
  401bcc:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
  401bd3:	65 
  401bd4:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
  401bdb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401be0:	e9 15 06 00 00       	jmpq   4021fa <submitr+0x6c9>
  401be5:	41 89 c4             	mov    %eax,%r12d
  401be8:	48 89 ef             	mov    %rbp,%rdi
  401beb:	e8 50 f0 ff ff       	callq  400c40 <gethostbyname@plt>
  401bf0:	48 85 c0             	test   %rax,%rax
  401bf3:	75 6b                	jne    401c60 <submitr+0x12f>
  401bf5:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  401bfc:	3a 20 44 
  401bff:	49 89 07             	mov    %rax,(%r15)
  401c02:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  401c09:	20 75 6e 
  401c0c:	49 89 47 08          	mov    %rax,0x8(%r15)
  401c10:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401c17:	74 6f 20 
  401c1a:	49 89 47 10          	mov    %rax,0x10(%r15)
  401c1e:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  401c25:	76 65 20 
  401c28:	49 89 47 18          	mov    %rax,0x18(%r15)
  401c2c:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  401c33:	72 20 61 
  401c36:	49 89 47 20          	mov    %rax,0x20(%r15)
  401c3a:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
  401c41:	65 
  401c42:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
  401c49:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
  401c4e:	44 89 e7             	mov    %r12d,%edi
  401c51:	e8 9a ef ff ff       	callq  400bf0 <close@plt>
  401c56:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401c5b:	e9 9a 05 00 00       	jmpq   4021fa <submitr+0x6c9>
  401c60:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  401c67:	00 00 
  401c69:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  401c70:	00 00 
  401c72:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  401c79:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401c7d:	48 8b 40 18          	mov    0x18(%rax),%rax
  401c81:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  401c86:	b9 0c 00 00 00       	mov    $0xc,%ecx
  401c8b:	48 8b 30             	mov    (%rax),%rsi
  401c8e:	e8 bd ef ff ff       	callq  400c50 <__memmove_chk@plt>
  401c93:	66 41 c1 cd 08       	ror    $0x8,%r13w
  401c98:	66 44 89 6c 24 32    	mov    %r13w,0x32(%rsp)
  401c9e:	ba 10 00 00 00       	mov    $0x10,%edx
  401ca3:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  401ca8:	44 89 e7             	mov    %r12d,%edi
  401cab:	e8 30 f0 ff ff       	callq  400ce0 <connect@plt>
  401cb0:	85 c0                	test   %eax,%eax
  401cb2:	79 5d                	jns    401d11 <submitr+0x1e0>
  401cb4:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  401cbb:	3a 20 55 
  401cbe:	49 89 07             	mov    %rax,(%r15)
  401cc1:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  401cc8:	20 74 6f 
  401ccb:	49 89 47 08          	mov    %rax,0x8(%r15)
  401ccf:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  401cd6:	65 63 74 
  401cd9:	49 89 47 10          	mov    %rax,0x10(%r15)
  401cdd:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  401ce4:	68 65 20 
  401ce7:	49 89 47 18          	mov    %rax,0x18(%r15)
  401ceb:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
  401cf2:	76 
  401cf3:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
  401cfa:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
  401cff:	44 89 e7             	mov    %r12d,%edi
  401d02:	e8 e9 ee ff ff       	callq  400bf0 <close@plt>
  401d07:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401d0c:	e9 e9 04 00 00       	jmpq   4021fa <submitr+0x6c9>
  401d11:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
  401d18:	b8 00 00 00 00       	mov    $0x0,%eax
  401d1d:	4c 89 c9             	mov    %r9,%rcx
  401d20:	48 89 df             	mov    %rbx,%rdi
  401d23:	f2 ae                	repnz scas %es:(%rdi),%al
  401d25:	48 f7 d1             	not    %rcx
  401d28:	48 89 ce             	mov    %rcx,%rsi
  401d2b:	4c 89 c9             	mov    %r9,%rcx
  401d2e:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  401d33:	f2 ae                	repnz scas %es:(%rdi),%al
  401d35:	49 89 c8             	mov    %rcx,%r8
  401d38:	4c 89 c9             	mov    %r9,%rcx
  401d3b:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  401d40:	f2 ae                	repnz scas %es:(%rdi),%al
  401d42:	48 f7 d1             	not    %rcx
  401d45:	48 89 ca             	mov    %rcx,%rdx
  401d48:	4c 89 c9             	mov    %r9,%rcx
  401d4b:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  401d50:	f2 ae                	repnz scas %es:(%rdi),%al
  401d52:	4c 29 c2             	sub    %r8,%rdx
  401d55:	48 29 ca             	sub    %rcx,%rdx
  401d58:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  401d5d:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
  401d62:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  401d68:	76 73                	jbe    401ddd <submitr+0x2ac>
  401d6a:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  401d71:	3a 20 52 
  401d74:	49 89 07             	mov    %rax,(%r15)
  401d77:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  401d7e:	20 73 74 
  401d81:	49 89 47 08          	mov    %rax,0x8(%r15)
  401d85:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  401d8c:	74 6f 6f 
  401d8f:	49 89 47 10          	mov    %rax,0x10(%r15)
  401d93:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  401d9a:	65 2e 20 
  401d9d:	49 89 47 18          	mov    %rax,0x18(%r15)
  401da1:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  401da8:	61 73 65 
  401dab:	49 89 47 20          	mov    %rax,0x20(%r15)
  401daf:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  401db6:	49 54 52 
  401db9:	49 89 47 28          	mov    %rax,0x28(%r15)
  401dbd:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  401dc4:	55 46 00 
  401dc7:	49 89 47 30          	mov    %rax,0x30(%r15)
  401dcb:	44 89 e7             	mov    %r12d,%edi
  401dce:	e8 1d ee ff ff       	callq  400bf0 <close@plt>
  401dd3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401dd8:	e9 1d 04 00 00       	jmpq   4021fa <submitr+0x6c9>
  401ddd:	48 8d 94 24 50 40 00 	lea    0x4050(%rsp),%rdx
  401de4:	00 
  401de5:	b9 00 04 00 00       	mov    $0x400,%ecx
  401dea:	b8 00 00 00 00       	mov    $0x0,%eax
  401def:	48 89 d7             	mov    %rdx,%rdi
  401df2:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401df5:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401dfc:	48 89 df             	mov    %rbx,%rdi
  401dff:	f2 ae                	repnz scas %es:(%rdi),%al
  401e01:	48 89 c8             	mov    %rcx,%rax
  401e04:	48 f7 d0             	not    %rax
  401e07:	48 83 e8 01          	sub    $0x1,%rax
  401e0b:	85 c0                	test   %eax,%eax
  401e0d:	0f 84 90 04 00 00    	je     4022a3 <submitr+0x772>
  401e13:	8d 40 ff             	lea    -0x1(%rax),%eax
  401e16:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
  401e1b:	48 89 d5             	mov    %rdx,%rbp
  401e1e:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
  401e25:	00 20 00 
  401e28:	44 0f b6 03          	movzbl (%rbx),%r8d
  401e2c:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
  401e30:	3c 35                	cmp    $0x35,%al
  401e32:	77 06                	ja     401e3a <submitr+0x309>
  401e34:	49 0f a3 c5          	bt     %rax,%r13
  401e38:	72 0d                	jb     401e47 <submitr+0x316>
  401e3a:	44 89 c0             	mov    %r8d,%eax
  401e3d:	83 e0 df             	and    $0xffffffdf,%eax
  401e40:	83 e8 41             	sub    $0x41,%eax
  401e43:	3c 19                	cmp    $0x19,%al
  401e45:	77 0a                	ja     401e51 <submitr+0x320>
  401e47:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  401e4b:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401e4f:	eb 6c                	jmp    401ebd <submitr+0x38c>
  401e51:	41 80 f8 20          	cmp    $0x20,%r8b
  401e55:	75 0a                	jne    401e61 <submitr+0x330>
  401e57:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401e5b:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401e5f:	eb 5c                	jmp    401ebd <submitr+0x38c>
  401e61:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  401e65:	3c 5f                	cmp    $0x5f,%al
  401e67:	76 0a                	jbe    401e73 <submitr+0x342>
  401e69:	41 80 f8 09          	cmp    $0x9,%r8b
  401e6d:	0f 85 a3 03 00 00    	jne    402216 <submitr+0x6e5>
  401e73:	45 0f b6 c0          	movzbl %r8b,%r8d
  401e77:	b9 e0 2f 40 00       	mov    $0x402fe0,%ecx
  401e7c:	ba 08 00 00 00       	mov    $0x8,%edx
  401e81:	be 01 00 00 00       	mov    $0x1,%esi
  401e86:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
  401e8d:	00 
  401e8e:	b8 00 00 00 00       	mov    $0x0,%eax
  401e93:	e8 88 ee ff ff       	callq  400d20 <__sprintf_chk@plt>
  401e98:	0f b6 84 24 50 80 00 	movzbl 0x8050(%rsp),%eax
  401e9f:	00 
  401ea0:	88 45 00             	mov    %al,0x0(%rbp)
  401ea3:	0f b6 84 24 51 80 00 	movzbl 0x8051(%rsp),%eax
  401eaa:	00 
  401eab:	88 45 01             	mov    %al,0x1(%rbp)
  401eae:	0f b6 84 24 52 80 00 	movzbl 0x8052(%rsp),%eax
  401eb5:	00 
  401eb6:	88 45 02             	mov    %al,0x2(%rbp)
  401eb9:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  401ebd:	48 83 c3 01          	add    $0x1,%rbx
  401ec1:	49 39 de             	cmp    %rbx,%r14
  401ec4:	0f 85 5e ff ff ff    	jne    401e28 <submitr+0x2f7>
  401eca:	e9 d4 03 00 00       	jmpq   4022a3 <submitr+0x772>
  401ecf:	48 89 da             	mov    %rbx,%rdx
  401ed2:	48 89 ee             	mov    %rbp,%rsi
  401ed5:	44 89 e7             	mov    %r12d,%edi
  401ed8:	e8 e3 ec ff ff       	callq  400bc0 <write@plt>
  401edd:	48 85 c0             	test   %rax,%rax
  401ee0:	7f 0f                	jg     401ef1 <submitr+0x3c0>
  401ee2:	e8 a9 ec ff ff       	callq  400b90 <__errno_location@plt>
  401ee7:	83 38 04             	cmpl   $0x4,(%rax)
  401eea:	75 12                	jne    401efe <submitr+0x3cd>
  401eec:	b8 00 00 00 00       	mov    $0x0,%eax
  401ef1:	48 01 c5             	add    %rax,%rbp
  401ef4:	48 29 c3             	sub    %rax,%rbx
  401ef7:	75 d6                	jne    401ecf <submitr+0x39e>
  401ef9:	4d 85 ed             	test   %r13,%r13
  401efc:	79 5f                	jns    401f5d <submitr+0x42c>
  401efe:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401f05:	3a 20 43 
  401f08:	49 89 07             	mov    %rax,(%r15)
  401f0b:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401f12:	20 75 6e 
  401f15:	49 89 47 08          	mov    %rax,0x8(%r15)
  401f19:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401f20:	74 6f 20 
  401f23:	49 89 47 10          	mov    %rax,0x10(%r15)
  401f27:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  401f2e:	20 74 6f 
  401f31:	49 89 47 18          	mov    %rax,0x18(%r15)
  401f35:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
  401f3c:	73 65 72 
  401f3f:	49 89 47 20          	mov    %rax,0x20(%r15)
  401f43:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
  401f4a:	00 
  401f4b:	44 89 e7             	mov    %r12d,%edi
  401f4e:	e8 9d ec ff ff       	callq  400bf0 <close@plt>
  401f53:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f58:	e9 9d 02 00 00       	jmpq   4021fa <submitr+0x6c9>
  401f5d:	44 89 64 24 40       	mov    %r12d,0x40(%rsp)
  401f62:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
  401f69:	00 
  401f6a:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
  401f6f:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  401f74:	ba 00 20 00 00       	mov    $0x2000,%edx
  401f79:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  401f80:	00 
  401f81:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  401f86:	e8 b4 fa ff ff       	callq  401a3f <rio_readlineb>
  401f8b:	48 85 c0             	test   %rax,%rax
  401f8e:	7f 74                	jg     402004 <submitr+0x4d3>
  401f90:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401f97:	3a 20 43 
  401f9a:	49 89 07             	mov    %rax,(%r15)
  401f9d:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401fa4:	20 75 6e 
  401fa7:	49 89 47 08          	mov    %rax,0x8(%r15)
  401fab:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401fb2:	74 6f 20 
  401fb5:	49 89 47 10          	mov    %rax,0x10(%r15)
  401fb9:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  401fc0:	66 69 72 
  401fc3:	49 89 47 18          	mov    %rax,0x18(%r15)
  401fc7:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  401fce:	61 64 65 
  401fd1:	49 89 47 20          	mov    %rax,0x20(%r15)
  401fd5:	48 b8 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rax
  401fdc:	6d 20 73 
  401fdf:	49 89 47 28          	mov    %rax,0x28(%r15)
  401fe3:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
  401fea:	65 
  401feb:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
  401ff2:	44 89 e7             	mov    %r12d,%edi
  401ff5:	e8 f6 eb ff ff       	callq  400bf0 <close@plt>
  401ffa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401fff:	e9 f6 01 00 00       	jmpq   4021fa <submitr+0x6c9>
  402004:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  40200b:	00 
  40200c:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402011:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402018:	00 
  402019:	be e7 2f 40 00       	mov    $0x402fe7,%esi
  40201e:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402025:	00 
  402026:	b8 00 00 00 00       	mov    $0x0,%eax
  40202b:	e8 60 ec ff ff       	callq  400c90 <__isoc99_sscanf@plt>
  402030:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402035:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  40203c:	0f 84 be 00 00 00    	je     402100 <submitr+0x5cf>
  402042:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  402049:	00 
  40204a:	b9 38 2f 40 00       	mov    $0x402f38,%ecx
  40204f:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402056:	be 01 00 00 00       	mov    $0x1,%esi
  40205b:	4c 89 ff             	mov    %r15,%rdi
  40205e:	b8 00 00 00 00       	mov    $0x0,%eax
  402063:	e8 b8 ec ff ff       	callq  400d20 <__sprintf_chk@plt>
  402068:	44 89 e7             	mov    %r12d,%edi
  40206b:	e8 80 eb ff ff       	callq  400bf0 <close@plt>
  402070:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402075:	e9 80 01 00 00       	jmpq   4021fa <submitr+0x6c9>
  40207a:	ba 00 20 00 00       	mov    $0x2000,%edx
  40207f:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402086:	00 
  402087:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40208c:	e8 ae f9 ff ff       	callq  401a3f <rio_readlineb>
  402091:	48 85 c0             	test   %rax,%rax
  402094:	7f 6a                	jg     402100 <submitr+0x5cf>
  402096:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40209d:	3a 20 43 
  4020a0:	49 89 07             	mov    %rax,(%r15)
  4020a3:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4020aa:	20 75 6e 
  4020ad:	49 89 47 08          	mov    %rax,0x8(%r15)
  4020b1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4020b8:	74 6f 20 
  4020bb:	49 89 47 10          	mov    %rax,0x10(%r15)
  4020bf:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  4020c6:	68 65 61 
  4020c9:	49 89 47 18          	mov    %rax,0x18(%r15)
  4020cd:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4020d4:	66 72 6f 
  4020d7:	49 89 47 20          	mov    %rax,0x20(%r15)
  4020db:	48 b8 6d 20 73 65 72 	movabs $0x726576726573206d,%rax
  4020e2:	76 65 72 
  4020e5:	49 89 47 28          	mov    %rax,0x28(%r15)
  4020e9:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
  4020ee:	44 89 e7             	mov    %r12d,%edi
  4020f1:	e8 fa ea ff ff       	callq  400bf0 <close@plt>
  4020f6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4020fb:	e9 fa 00 00 00       	jmpq   4021fa <submitr+0x6c9>
  402100:	80 bc 24 50 20 00 00 	cmpb   $0xd,0x2050(%rsp)
  402107:	0d 
  402108:	0f 85 6c ff ff ff    	jne    40207a <submitr+0x549>
  40210e:	80 bc 24 51 20 00 00 	cmpb   $0xa,0x2051(%rsp)
  402115:	0a 
  402116:	0f 85 5e ff ff ff    	jne    40207a <submitr+0x549>
  40211c:	80 bc 24 52 20 00 00 	cmpb   $0x0,0x2052(%rsp)
  402123:	00 
  402124:	0f 85 50 ff ff ff    	jne    40207a <submitr+0x549>
  40212a:	ba 00 20 00 00       	mov    $0x2000,%edx
  40212f:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402136:	00 
  402137:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40213c:	e8 fe f8 ff ff       	callq  401a3f <rio_readlineb>
  402141:	48 85 c0             	test   %rax,%rax
  402144:	7f 70                	jg     4021b6 <submitr+0x685>
  402146:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40214d:	3a 20 43 
  402150:	49 89 07             	mov    %rax,(%r15)
  402153:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40215a:	20 75 6e 
  40215d:	49 89 47 08          	mov    %rax,0x8(%r15)
  402161:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402168:	74 6f 20 
  40216b:	49 89 47 10          	mov    %rax,0x10(%r15)
  40216f:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402176:	73 74 61 
  402179:	49 89 47 18          	mov    %rax,0x18(%r15)
  40217d:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402184:	65 73 73 
  402187:	49 89 47 20          	mov    %rax,0x20(%r15)
  40218b:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402192:	72 6f 6d 
  402195:	49 89 47 28          	mov    %rax,0x28(%r15)
  402199:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  4021a0:	65 72 00 
  4021a3:	49 89 47 30          	mov    %rax,0x30(%r15)
  4021a7:	44 89 e7             	mov    %r12d,%edi
  4021aa:	e8 41 ea ff ff       	callq  400bf0 <close@plt>
  4021af:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4021b4:	eb 44                	jmp    4021fa <submitr+0x6c9>
  4021b6:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4021bd:	00 
  4021be:	4c 89 ff             	mov    %r15,%rdi
  4021c1:	e8 da e9 ff ff       	callq  400ba0 <strcpy@plt>
  4021c6:	44 89 e7             	mov    %r12d,%edi
  4021c9:	e8 22 ea ff ff       	callq  400bf0 <close@plt>
  4021ce:	41 0f b6 17          	movzbl (%r15),%edx
  4021d2:	b8 4f 00 00 00       	mov    $0x4f,%eax
  4021d7:	29 d0                	sub    %edx,%eax
  4021d9:	75 15                	jne    4021f0 <submitr+0x6bf>
  4021db:	41 0f b6 57 01       	movzbl 0x1(%r15),%edx
  4021e0:	b8 4b 00 00 00       	mov    $0x4b,%eax
  4021e5:	29 d0                	sub    %edx,%eax
  4021e7:	75 07                	jne    4021f0 <submitr+0x6bf>
  4021e9:	41 0f b6 47 02       	movzbl 0x2(%r15),%eax
  4021ee:	f7 d8                	neg    %eax
  4021f0:	85 c0                	test   %eax,%eax
  4021f2:	0f 95 c0             	setne  %al
  4021f5:	0f b6 c0             	movzbl %al,%eax
  4021f8:	f7 d8                	neg    %eax
  4021fa:	48 8b 8c 24 58 a0 00 	mov    0xa058(%rsp),%rcx
  402201:	00 
  402202:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402209:	00 00 
  40220b:	0f 84 0a 01 00 00    	je     40231b <submitr+0x7ea>
  402211:	e9 00 01 00 00       	jmpq   402316 <submitr+0x7e5>
  402216:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40221d:	3a 20 52 
  402220:	49 89 07             	mov    %rax,(%r15)
  402223:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  40222a:	20 73 74 
  40222d:	49 89 47 08          	mov    %rax,0x8(%r15)
  402231:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402238:	63 6f 6e 
  40223b:	49 89 47 10          	mov    %rax,0x10(%r15)
  40223f:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402246:	20 61 6e 
  402249:	49 89 47 18          	mov    %rax,0x18(%r15)
  40224d:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402254:	67 61 6c 
  402257:	49 89 47 20          	mov    %rax,0x20(%r15)
  40225b:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402262:	6e 70 72 
  402265:	49 89 47 28          	mov    %rax,0x28(%r15)
  402269:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402270:	6c 65 20 
  402273:	49 89 47 30          	mov    %rax,0x30(%r15)
  402277:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  40227e:	63 74 65 
  402281:	49 89 47 38          	mov    %rax,0x38(%r15)
  402285:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
  40228c:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
  402291:	44 89 e7             	mov    %r12d,%edi
  402294:	e8 57 e9 ff ff       	callq  400bf0 <close@plt>
  402299:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40229e:	e9 57 ff ff ff       	jmpq   4021fa <submitr+0x6c9>
  4022a3:	48 8d 9c 24 50 20 00 	lea    0x2050(%rsp),%rbx
  4022aa:	00 
  4022ab:	48 8d 84 24 50 40 00 	lea    0x4050(%rsp),%rax
  4022b2:	00 
  4022b3:	50                   	push   %rax
  4022b4:	ff 74 24 20          	pushq  0x20(%rsp)
  4022b8:	4c 8b 4c 24 20       	mov    0x20(%rsp),%r9
  4022bd:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  4022c2:	b9 68 2f 40 00       	mov    $0x402f68,%ecx
  4022c7:	ba 00 20 00 00       	mov    $0x2000,%edx
  4022cc:	be 01 00 00 00       	mov    $0x1,%esi
  4022d1:	48 89 df             	mov    %rbx,%rdi
  4022d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4022d9:	e8 42 ea ff ff       	callq  400d20 <__sprintf_chk@plt>
  4022de:	b8 00 00 00 00       	mov    $0x0,%eax
  4022e3:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4022ea:	48 89 df             	mov    %rbx,%rdi
  4022ed:	f2 ae                	repnz scas %es:(%rdi),%al
  4022ef:	48 89 c8             	mov    %rcx,%rax
  4022f2:	48 f7 d0             	not    %rax
  4022f5:	4c 8d 68 ff          	lea    -0x1(%rax),%r13
  4022f9:	48 83 c4 10          	add    $0x10,%rsp
  4022fd:	4c 89 eb             	mov    %r13,%rbx
  402300:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  402307:	00 
  402308:	4d 85 ed             	test   %r13,%r13
  40230b:	0f 85 be fb ff ff    	jne    401ecf <submitr+0x39e>
  402311:	e9 47 fc ff ff       	jmpq   401f5d <submitr+0x42c>
  402316:	e8 b5 e8 ff ff       	callq  400bd0 <__stack_chk_fail@plt>
  40231b:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402322:	5b                   	pop    %rbx
  402323:	5d                   	pop    %rbp
  402324:	41 5c                	pop    %r12
  402326:	41 5d                	pop    %r13
  402328:	41 5e                	pop    %r14
  40232a:	41 5f                	pop    %r15
  40232c:	c3                   	retq   

000000000040232d <init_timeout>:
  40232d:	85 ff                	test   %edi,%edi
  40232f:	74 22                	je     402353 <init_timeout+0x26>
  402331:	53                   	push   %rbx
  402332:	89 fb                	mov    %edi,%ebx
  402334:	be 11 1a 40 00       	mov    $0x401a11,%esi
  402339:	bf 0e 00 00 00       	mov    $0xe,%edi
  40233e:	e8 ed e8 ff ff       	callq  400c30 <signal@plt>
  402343:	85 db                	test   %ebx,%ebx
  402345:	bf 00 00 00 00       	mov    $0x0,%edi
  40234a:	0f 49 fb             	cmovns %ebx,%edi
  40234d:	e8 8e e8 ff ff       	callq  400be0 <alarm@plt>
  402352:	5b                   	pop    %rbx
  402353:	f3 c3                	repz retq 

0000000000402355 <init_driver>:
  402355:	55                   	push   %rbp
  402356:	53                   	push   %rbx
  402357:	48 83 ec 28          	sub    $0x28,%rsp
  40235b:	48 89 fd             	mov    %rdi,%rbp
  40235e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402365:	00 00 
  402367:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40236c:	31 c0                	xor    %eax,%eax
  40236e:	be 01 00 00 00       	mov    $0x1,%esi
  402373:	bf 0d 00 00 00       	mov    $0xd,%edi
  402378:	e8 b3 e8 ff ff       	callq  400c30 <signal@plt>
  40237d:	be 01 00 00 00       	mov    $0x1,%esi
  402382:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402387:	e8 a4 e8 ff ff       	callq  400c30 <signal@plt>
  40238c:	be 01 00 00 00       	mov    $0x1,%esi
  402391:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402396:	e8 95 e8 ff ff       	callq  400c30 <signal@plt>
  40239b:	ba 00 00 00 00       	mov    $0x0,%edx
  4023a0:	be 01 00 00 00       	mov    $0x1,%esi
  4023a5:	bf 02 00 00 00       	mov    $0x2,%edi
  4023aa:	e8 81 e9 ff ff       	callq  400d30 <socket@plt>
  4023af:	85 c0                	test   %eax,%eax
  4023b1:	79 4f                	jns    402402 <init_driver+0xad>
  4023b3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4023ba:	3a 20 43 
  4023bd:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4023c1:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4023c8:	20 75 6e 
  4023cb:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4023cf:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4023d6:	74 6f 20 
  4023d9:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4023dd:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  4023e4:	65 20 73 
  4023e7:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4023eb:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4023f2:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4023f8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023fd:	e9 0c 01 00 00       	jmpq   40250e <init_driver+0x1b9>
  402402:	89 c3                	mov    %eax,%ebx
  402404:	bf f5 2e 40 00       	mov    $0x402ef5,%edi
  402409:	e8 32 e8 ff ff       	callq  400c40 <gethostbyname@plt>
  40240e:	48 85 c0             	test   %rax,%rax
  402411:	75 68                	jne    40247b <init_driver+0x126>
  402413:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40241a:	3a 20 44 
  40241d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402421:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402428:	20 75 6e 
  40242b:	48 89 45 08          	mov    %rax,0x8(%rbp)
  40242f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402436:	74 6f 20 
  402439:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40243d:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402444:	76 65 20 
  402447:	48 89 45 18          	mov    %rax,0x18(%rbp)
  40244b:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402452:	72 20 61 
  402455:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402459:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402460:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402466:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  40246a:	89 df                	mov    %ebx,%edi
  40246c:	e8 7f e7 ff ff       	callq  400bf0 <close@plt>
  402471:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402476:	e9 93 00 00 00       	jmpq   40250e <init_driver+0x1b9>
  40247b:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402482:	00 
  402483:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40248a:	00 00 
  40248c:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402492:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402496:	48 8b 40 18          	mov    0x18(%rax),%rax
  40249a:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  40249f:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4024a4:	48 8b 30             	mov    (%rax),%rsi
  4024a7:	e8 a4 e7 ff ff       	callq  400c50 <__memmove_chk@plt>
  4024ac:	66 c7 44 24 02 4b 01 	movw   $0x14b,0x2(%rsp)
  4024b3:	ba 10 00 00 00       	mov    $0x10,%edx
  4024b8:	48 89 e6             	mov    %rsp,%rsi
  4024bb:	89 df                	mov    %ebx,%edi
  4024bd:	e8 1e e8 ff ff       	callq  400ce0 <connect@plt>
  4024c2:	85 c0                	test   %eax,%eax
  4024c4:	79 32                	jns    4024f8 <init_driver+0x1a3>
  4024c6:	41 b8 f5 2e 40 00    	mov    $0x402ef5,%r8d
  4024cc:	b9 b8 2f 40 00       	mov    $0x402fb8,%ecx
  4024d1:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4024d8:	be 01 00 00 00       	mov    $0x1,%esi
  4024dd:	48 89 ef             	mov    %rbp,%rdi
  4024e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4024e5:	e8 36 e8 ff ff       	callq  400d20 <__sprintf_chk@plt>
  4024ea:	89 df                	mov    %ebx,%edi
  4024ec:	e8 ff e6 ff ff       	callq  400bf0 <close@plt>
  4024f1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024f6:	eb 16                	jmp    40250e <init_driver+0x1b9>
  4024f8:	89 df                	mov    %ebx,%edi
  4024fa:	e8 f1 e6 ff ff       	callq  400bf0 <close@plt>
  4024ff:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402505:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402509:	b8 00 00 00 00       	mov    $0x0,%eax
  40250e:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402513:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  40251a:	00 00 
  40251c:	74 05                	je     402523 <init_driver+0x1ce>
  40251e:	e8 ad e6 ff ff       	callq  400bd0 <__stack_chk_fail@plt>
  402523:	48 83 c4 28          	add    $0x28,%rsp
  402527:	5b                   	pop    %rbx
  402528:	5d                   	pop    %rbp
  402529:	c3                   	retq   

000000000040252a <driver_post>:
  40252a:	53                   	push   %rbx
  40252b:	48 89 cb             	mov    %rcx,%rbx
  40252e:	85 d2                	test   %edx,%edx
  402530:	74 27                	je     402559 <driver_post+0x2f>
  402532:	48 89 f2             	mov    %rsi,%rdx
  402535:	be f8 2f 40 00       	mov    $0x402ff8,%esi
  40253a:	bf 01 00 00 00       	mov    $0x1,%edi
  40253f:	b8 00 00 00 00       	mov    $0x0,%eax
  402544:	e8 57 e7 ff ff       	callq  400ca0 <__printf_chk@plt>
  402549:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40254e:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402552:	b8 00 00 00 00       	mov    $0x0,%eax
  402557:	eb 43                	jmp    40259c <driver_post+0x72>
  402559:	48 85 ff             	test   %rdi,%rdi
  40255c:	74 30                	je     40258e <driver_post+0x64>
  40255e:	80 3f 00             	cmpb   $0x0,(%rdi)
  402561:	74 2b                	je     40258e <driver_post+0x64>
  402563:	48 83 ec 08          	sub    $0x8,%rsp
  402567:	51                   	push   %rcx
  402568:	49 89 f1             	mov    %rsi,%r9
  40256b:	41 b8 0f 30 40 00    	mov    $0x40300f,%r8d
  402571:	48 89 f9             	mov    %rdi,%rcx
  402574:	ba 25 30 40 00       	mov    $0x403025,%edx
  402579:	be 01 4b 00 00       	mov    $0x4b01,%esi
  40257e:	bf f5 2e 40 00       	mov    $0x402ef5,%edi
  402583:	e8 a9 f5 ff ff       	callq  401b31 <submitr>
  402588:	48 83 c4 10          	add    $0x10,%rsp
  40258c:	eb 0e                	jmp    40259c <driver_post+0x72>
  40258e:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402593:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402597:	b8 00 00 00 00       	mov    $0x0,%eax
  40259c:	5b                   	pop    %rbx
  40259d:	c3                   	retq   
  40259e:	66 90                	xchg   %ax,%ax

00000000004025a0 <__libc_csu_init>:
  4025a0:	41 57                	push   %r15
  4025a2:	41 56                	push   %r14
  4025a4:	41 89 ff             	mov    %edi,%r15d
  4025a7:	41 55                	push   %r13
  4025a9:	41 54                	push   %r12
  4025ab:	4c 8d 25 5e 18 20 00 	lea    0x20185e(%rip),%r12        # 603e10 <__frame_dummy_init_array_entry>
  4025b2:	55                   	push   %rbp
  4025b3:	48 8d 2d 5e 18 20 00 	lea    0x20185e(%rip),%rbp        # 603e18 <__init_array_end>
  4025ba:	53                   	push   %rbx
  4025bb:	49 89 f6             	mov    %rsi,%r14
  4025be:	49 89 d5             	mov    %rdx,%r13
  4025c1:	4c 29 e5             	sub    %r12,%rbp
  4025c4:	48 83 ec 08          	sub    $0x8,%rsp
  4025c8:	48 c1 fd 03          	sar    $0x3,%rbp
  4025cc:	e8 67 e5 ff ff       	callq  400b38 <_init>
  4025d1:	48 85 ed             	test   %rbp,%rbp
  4025d4:	74 20                	je     4025f6 <__libc_csu_init+0x56>
  4025d6:	31 db                	xor    %ebx,%ebx
  4025d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4025df:	00 
  4025e0:	4c 89 ea             	mov    %r13,%rdx
  4025e3:	4c 89 f6             	mov    %r14,%rsi
  4025e6:	44 89 ff             	mov    %r15d,%edi
  4025e9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4025ed:	48 83 c3 01          	add    $0x1,%rbx
  4025f1:	48 39 eb             	cmp    %rbp,%rbx
  4025f4:	75 ea                	jne    4025e0 <__libc_csu_init+0x40>
  4025f6:	48 83 c4 08          	add    $0x8,%rsp
  4025fa:	5b                   	pop    %rbx
  4025fb:	5d                   	pop    %rbp
  4025fc:	41 5c                	pop    %r12
  4025fe:	41 5d                	pop    %r13
  402600:	41 5e                	pop    %r14
  402602:	41 5f                	pop    %r15
  402604:	c3                   	retq   
  402605:	90                   	nop
  402606:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40260d:	00 00 00 

0000000000402610 <__libc_csu_fini>:
  402610:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402614 <_fini>:
  402614:	48 83 ec 08          	sub    $0x8,%rsp
  402618:	48 83 c4 08          	add    $0x8,%rsp
  40261c:	c3                   	retq   
