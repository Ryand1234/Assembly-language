SECTION .data
msg: db "hello World", 10
len: equ $ - msg
section .text
	global _start
_start:

	mov ah , 0x0e 
	mov bx, h
	add bx, 0x7c00
	mov al, [bx]
	int 0x10
	mov bx, e
	add bx, 0x7c00
	mov al, [bx]
	int 0x10
	mov bx, l
	add bx, 0x7c00
	mov al, [bx]
	int 0x10
	mov bx, l
	add bx, 0x7c00
	mov al, [bx]
	int 0x10
	mov bx, o
	add bx, 0x7c00
	mov al, [bx]
	int 0x10
	jmp $
	e :
	db "E"
	h :
	db "H"
	l :
	db "L"
	o :
	db "O"
	times 510 - ($-$$) db 0

	dw 0xaa55
