.model small
.stack 100H

.data
a db ?
b db ?

.code
main proc 
    
    mov ah, 1 ; Taking input
    int 21H
    
    mov a, al   ; Storing input in a 
    sub a, 48    ; a = a-48 for ascii value
    
    int 21H ; taking input again  
    
    mov b, al ; storing 2nd input
    sub b, 48 
    
    mov bh, a    ; bh = a
    add bh, b    ; bh = bh + a
    add bh, 48   ; bh = bh + 48 ascii value
    
    mov ah, 2 
    
    ; New line
    mov dl, 0AH
    int 21h
    mov dl, 0DH
    int 21h
    
    ; Output print 
    mov dl, bh
    int 21h
    
    
    
    
        
    mov ah, 4CH
    int 21H
    endp
end main

