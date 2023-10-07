format ELF64 executable 3

segment readable executable

entry main
include "io.inc"
include "run.inc"
include "string.inc"
include "stack.inc"

main:
    reserveS 8 ;; pointer to message

    ;; print, which prints from memory
    ;; next_len is fasm variable computed in compile time
    mov qword [rbp-8], next
    print [rbp-8], next_len

    ;; printData which prints from data segment, needs its <name>_len part to work in fasm layer
    printData next
    exit 0

segment readable writable

str next, "hello", 10
