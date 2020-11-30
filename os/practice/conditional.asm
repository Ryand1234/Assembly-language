SECTION .text
	global _start
_start:

	mov bx, 30 		; bx = 30
	mov ax, 4
	cmp bx, ax
	jle les_eq_th     ; compare if bx is <= 30
	mov ax, 40
	cmp bx, ax      ; compare if bx < 40
	jl les_th
	mov al, 'C'
	jmp end


	les_eq_th:
		mov al, 'A'
		jmp end		; jump to end block
	les_th:
		mov al, 'B'
		jmp end		; jump to end block
	end:
	mov ah, 0x0e
	int 0x10

	jmp $
	times 510 - ($-$$) db 0
	dw 0xaa55