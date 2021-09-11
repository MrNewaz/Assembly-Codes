include 'emu8086.inc' 
.model small
.stack 100h

.data

.code

main proc
    
    mov bh, 1111b ; 15d 
    
    
    mov ah, 2
    mov dl, bh
    int 21h
    
    and bh, 0100b ; 4d
    
    add bh, 48 
    
    printn
    
    mov ah, 2
    mov dl, bh
    int 21h
    
    mov ah, 4ch
    int 21h
    
endp main


end main
