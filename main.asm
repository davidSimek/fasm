format ELF64 executable 3

segment readable executable

entry main
include "io.inc"
include "run.inc"
include "data.inc"
include "stack.inc"

import strlen

main:
    printD namePrompt
    readD buffer
    printD buffer

    exit 0

segment readable writable

strD namePrompt, "give me your name: ", 10
resD buffer, 20
