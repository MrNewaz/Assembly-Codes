.model small
.stack 100h

.data
    ;bh, bl 8 bit register 1byte
    ;bx 16bit 1 register word 
    
    num db 'd'   ; d= 100
    num2 db ?
    char db '#'   
    char2 db ?
    str db "My name is Saif Newaz"

.code
    ;all codes
    main proc  
        
        mov ax , @data
        mov ds, ax
        
        mov ah , 4ch
        int 21h
        
    main endp
        
        
        
    
end main
