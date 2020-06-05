;	Sample Program to print sum sentence
section .data
Text: dd "This will print to console.",10

section .text
	global _start
_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, Text
	mov edx, 27
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h
