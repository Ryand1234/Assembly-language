section .data

section .text
	global _start

_start:
	nop
	mov eax, 5
DoMore:	dec eax
	jnz DoMore
	nop
