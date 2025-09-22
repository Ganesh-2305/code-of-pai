global _start

section .data
    result: db 0

section .text
_start:
    mov al, 0x05
    mov bl, 0x03
    sub al, bl
    mov [result], al

    xor ebx, ebx
    mov eax, 1
    int 0x80
