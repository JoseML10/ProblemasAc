%include "io.inc"
section .data
    a dd 4
    b dd 8
    c dd 2
    d dd 2
    
    
section .text
global main
main:



loop:
    mov eax, [d]
    
    cmp eax, [b]
    jg end

    cmp eax, [a]
    jge print
    
    imul eax, [c] ; Multiplica eax por ebx
    mov [d], eax
    jmp loop
    

print:
    push eax
    PRINT_UDEC 4,eax  ; Imprime el valor actual de eax
    NEWLINE
    add esp, 4
    imul eax, [c] ; Multiplica eax por ebx
    mov [d], eax
    jmp loop

end:
    final 
    
    
         xor eax, eax
    ret