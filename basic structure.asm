.model small
.stack 100h

.data
    ;All data 
    num1 db ?

.code
    ;all codes
    main proc  
        
        mov bh, 4
        mov bl, 5
        add bh,bl
        
        mov ah , 4ch
        int 21h
        
    main endp
        
        
        
    
end main
