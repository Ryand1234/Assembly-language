section .text
	global _start
_start:
	mov eax, 5
DoMore:	dec eax
	jnz DoMore
