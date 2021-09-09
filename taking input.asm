.model small
.stack 100H

.data

.code
main proc 
    
    mov ah, 1 ; Taking input
    int 21H
    
    ; Input is in al register
    
    mov ah, 2   ; Print
    mov dl, al ; dl a jeta thakbe print hobe
    int 21H
    
        
    mov ah, 4CH
    int 21H
    endp
end main

