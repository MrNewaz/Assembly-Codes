include 'emu8086.inc'

.model small
.stack 100H
.data 



.code

main proc
    mov bx, 0
    
    mov ah, 1
    for:
    int 21h
    
    cmp al, 0DH
    je end
    sub al, 48
    shl bx, 1
    or bl, al
    jmp for
    
    end:
    printn
    printn
    mov ah, 2
    mov dl, bl
    add dl, 48
    int 21h

   
    
    
    
    mov ah, 4ch
    int 21h   
main endp 

end main
