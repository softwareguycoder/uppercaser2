uppercaser2: uppercaser2.o
	ld -o uppercaser2 uppercaser2.o
uppercaser2.o: uppercaser2.asm
	nasm -f elf64 -g -F stabs uppercaser2.asm -l uppercaser2.lst
clean:
	rm -f *.o *.lst uppercaser2
