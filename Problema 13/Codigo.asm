%include "io.inc"
section .data
    a dd 12
    b dd 18
    A dd 0
    B dd 0
    aux dd 0
  

section .text
    global main

main:
 
    ; inicializa a y b con los valores deseados
    mov eax, [a] 
    mov eax, [b]
    
    ; copia a y b a A y B
    mov eax, [a]
    mov [A], eax
    mov eax, [b]
    mov [B], eax

euclides:
    ; compara A y B
    mov eax, [A]
    cmp eax, [B]
    je end_euclides

    ; si A > B, intercambia A y B
    jg swap
    jmp subtract

swap:
    mov eax, [A]
    mov [aux], eax
    mov eax, [B]
    mov [A], eax
    mov eax, [aux]
    mov [B], eax

subtract:
    ; resta A de B
    mov eax, [B]
    sub eax, [A]
    mov [B], eax
    jmp euclides

end_euclides:
    ; divide a y b por B (el MCD)
    mov eax, [a]
    cdq
    idiv dword [B]
    mov [a], eax

    mov eax, [b]
    cdq
    idiv dword [B]
    mov [b], eax

   PRINT_UDEC 4,a
   NEWLINE 
   PRINT_UDEC 4,b
    
     xor eax, eax
    ret
    
    
