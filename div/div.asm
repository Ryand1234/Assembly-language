;	Two divide two numbers

section .text
	global _start

_start:
	mov eax, 5000	; mov 5000 to eax
	mov ebx, 50	; mov 50 to ebx
	div ebx		; divide eax by ebx
	; div with remainder
	mov eax, 5000	
	mov ebx, 33
	div ebx
