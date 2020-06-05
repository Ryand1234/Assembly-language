
hello.o : hello.asm
	nasm -felf64 -g -F stabs hello.asm

hello : hello.o
	ld -o hello hello.o
