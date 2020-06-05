;	Program to Multiply 2 numbers and check overflow

section .text
	global _start

_start:
	nop
	mov eax, 447	; store value in eax
	mov ebx, 1739	; store value in ebx
	mul ebx		; multiply ebx by eba
	;overflow multiplication
	mov eax, 0FFFFFFFFh
	mov ebx, 03B72h
	mul ebx		; multiply ebx by eba
