print_string:
	pusha          ; push all register to stack
	mov ah, 0x0e   ; command intrupt
	mov al, [bx]   ; move memory index of bx to al
	print:
		cmp al, 0  ; compare if al is equal to 0
		je done    ; if al == 0 jump to done
		int 0x10   ; call print intrupt
		add bx, 1  ; move memory index by 1
		mov al, [bx]  ; move new memory address to al
		jmp print  ; jump back to print label
	done:
		popa     ; pop all the stack values
		ret      ; return back to function call