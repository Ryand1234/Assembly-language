print_hex:
	pusha          ; push all register to stack
	convert:
		cmp dx, 0
		je end
		mov HEX_OUT, dx
		add dx, 1
		jmp convert
	end:
		mov bx, HEX_OUT
		%include "../print/print_string.asm"
		call print_string
		HEX_OUT:
			db '0x0000', 0
		popa     ; pop all the stack values
		ret      ; return back to function call