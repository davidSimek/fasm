macro print msg
{
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, msg#_len
    syscall
}
