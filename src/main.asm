format ELF64 executable 3

segment readable executable

entry main
include "includes/io.inc"
include "includes/run.inc"
include "includes/data.inc"
include "includes/stack.inc"


main:

    extrn strlen
    printD namePrompt
    readD buffer
    printD buffer

    exit 0

segment readable writable

strD namePrompt, "give me your name: ", 10
resD buffer, 20
