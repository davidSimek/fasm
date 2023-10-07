macro printData msg
{
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, msg#_len
    syscall
}


macro print msg,len
{
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, len
    syscall
   
}
