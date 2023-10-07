fasm src/main.asm main.o
fasm src/string.asm string.o 
ld main.o string.o -o run
