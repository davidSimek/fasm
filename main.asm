format ELF64 executable 3

segment readable executable

entry main
include "io.inc"
include "run.inc"
include "string.inc"

main:
    print next
    print lol
    print haha
    print lol2
    exit 0

segment readable writable

str next, " first ", 10
str lol, " second ", 10
str haha, " third " ,10
str lol2, " fourth ", 10
