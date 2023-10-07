format ELF64

    public strlen

strlen:
    ;; rdi = string
    mov rax, 0
strlen_loop:
    cmp byte [rdi], 0
    je strlen_done
    inc rax
strlen_done:
    ret
