section .text
	global _start
_start:

	loop:
		jmp loop
	times 510 - ($-$$) db 0

	dw 0xaa55
