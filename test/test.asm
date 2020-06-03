section .text
	global _start
_start:
	mov eax, 0FFFFFFFFh
	mov ebx, 02Dh
	dec ebx
	inc eax
