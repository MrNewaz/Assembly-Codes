include 'emu8086.inc'

.model small
.stack 100H
.data

.code

main proc  
    
    mov bx, 40   ; the number
    
    cmp bx, 100  ; > = 100
    jge case1  
    
    cmp bx, 80   ; > = 80
    jge case2
    
    cmp bx, 60   ; > = 60
    jge case3
    
    cmp bx, 40   ; > = 40
    jge case4
    
    cmp bx, 20   ; > = 20
    jge case5 
    
    cmp bx, 20   ; > = 20
    
    jmp else
    
    case1:
    print "Greater than or equal to 100"
    jmp end_if 
    
    case2:
    print "Greater than or equal to 80"
    jmp end_if
    
    case3:
    print "Greater than or equal to 60"
    jmp end_if
    
    case4:
    print "Greater than or equal to 40"
    jmp end_if
    
    case5:
    print "Greater than or equal to 20"
    jmp end_if
    
    else:
    print "Less than 20"
    jmp end_if
    
    
    end_if:
    
    mov ah, 4ch
    int 21h   
main endp 

end main
