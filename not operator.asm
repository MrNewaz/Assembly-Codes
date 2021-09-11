include 'emu8086.inc'

.model small
.stack 100H
.data 



.code

main proc
    mov bh, 11110011B
    not bh
    
    mov ah, 2
    mov dl, bh
    int 21h 

   
    
    
    
    mov ah, 4ch
    int 21h   
main endp 

end main
