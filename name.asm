global _start

section .data
    firstname db "Aditi"
    firstlength equ $-firstname

    lastname db  "shelke"
    lastlength equ $-lastname

section .text
_start:
    mov eax,4
    mov ebx,1
    mov ecx,firstname
    mov edx,firstlength
    int 0x80

    mov eax,4  
    mov ebx,1  
    mov ecx,lastname  
    mov edx,lastlength  
    int 0x80

    mov eax,1  
    xor ebx,ebx  
    int 0x80
