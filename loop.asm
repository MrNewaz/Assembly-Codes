include 'emu8086.inc'

.model small
.stack 100H
.data 


.code

main proc   
    
    mov cx, 5
    
    top:
    printn "Loop is running."
    
    loop top
    
    printn "Loop done"
    
    
    
    mov ah, 4ch
    int 21h   
main endp 

end main
