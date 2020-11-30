SECTION .text
	global _start

_start:
	[org 0x7c00]
	mov bx, HELLO_MSG  ; move HELLO_MSG to bx
	call print_string  ; call print_string function
	mov bx , GOODBYE_MSG
	call print_string
	jmp $ 
	%include "../print/print_string.asm" ; include print_string.asm file
	HELLO_MSG:
		db "0x10ef",0
	GOODBYE_MSG:
		db 'Goodbye !',0
	times 510 -( $ - $$ ) db 0
	dw 0xaa55

