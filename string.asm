format ELF64 executable 3

segment readable executable

    global strlen

strlen:
    ;; rdi = string
    mov rax, 0
strlen_loop:
    cmp byte [rdi], 0
    je strlen_done
    inc rax
strlen_done:
    ret
