

SECTION .data
msg: db "hello World", 10
len: equ $ - msg

SECTION .text

	global	_start
_start:
	nop
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, len
	int 80H

	mov eax, 1
	mov ebx, 0
	int 80H

