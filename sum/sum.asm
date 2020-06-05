section .data
msg	db	"The sum is"
len	dd	$ - msg
segment .bss
sum resb 1

section .text
	global _start

_start:
	nop
	mov eax, '2'
	sub eax, '0'
	mov ebx, '5'
	sub ebx, '0'
	add eax, ebx
	add eax, '0'
	mov [sum], eax

	mov ebx, 1
	mov eax, 4
	mov ecx, msg
	mov edx, len
	int 80h
	mov ecx, sum
	mov edx, 1
	mov ebx, 1
	mov eax, 4
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h
	nop
