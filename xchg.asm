.model small
.stack 100H

.data


.code
main proc
    mov bl, 53 ;5
    mov bh, 55 ;7
    
    xchg bh,bl
    
    mov ah, 2
    mov dl, bh
    int 21h 
    
    mov dl, bl
    int 21h
    
    
    
        
    mov ah, 4CH
    int 21H
    
endp main
end main

