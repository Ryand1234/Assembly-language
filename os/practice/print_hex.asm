SECTION .text
	global _start
_start:
	mov dx, 0x1fb6
	%include "../print/print_hex.asm"
	call print_hex
	jmp $
	times 510 - ($-$$) db 0
	dw 0xaa55
	