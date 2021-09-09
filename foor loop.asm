include 'emu8086.inc'

.model small
.stack 100H

.data

.code
main proc 
    
    mov cx, 5
    mov bx, 0  ;int i =0
    
    start: 
    
    cmp bx, cx 
    
    je last  ; conditon i < n
   
    printn "Here"
    
    inc bx ; i++
    
    jne start
    
    last:
    printn "Program Ended"
    
     

    
    mov ah, 4ch
    int 21h
  
    
endp main
end main

