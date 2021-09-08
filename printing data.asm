.model small
.stack 100h

.data
    num db 49
    char db 'A'
    msg db 'My name is Saif','$'

.code
    ;all codes
    main proc  
        
        mov ax, @data
        mov ds, ax
        
        mov ah , 2
        mov dl, num
        int 21H  
          
        ;Printing a new line 
          
        ;mov ah, 2
        mov dl, 0AH
        int 21H  
        mov dl, 0DH
        int 21H
        
        
        ;mov ah , 2
        mov dl, char
        int 21H   
        
        ;Printing a new line 
          
        ;mov ah, 2
        mov dl, 0AH
        int 21H  
        mov dl, 0DH
        int 21H 
        
        mov ah, 9 
        lea dx, msg
        int 21H
        
             
        mov ah, 4CH
        int 21H
        
    main endp
        
        
        
    
end main
