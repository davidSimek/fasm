;; macros with D sufix expect <name>_len fasm variable to contain length of buffer
;; if you are not working with buffer size known in compile time, use macro without D sufix

macro printD msg
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

macro read buffer, count
{
    mov rax, 0
    mov rdi, 0
    mov rsi, buffer
    mov rdx, count
    syscall
}

macro readD buffer, count
{
    mov rax, 0
    mov rdi, 0
    mov rsi, buffer
    mov rdx, buffer_len
    syscall
}
