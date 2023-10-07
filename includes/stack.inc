macro enterF
{
    push rbp
    mov rbp, rsp
}

macro reserveS bytes
{
    sub rsp, bytes
}

macro exitF
{
    mov rsp, rbp
    pop rbp
}
