include 'emu8086.inc'

.model small
.stack 100H

.data

.code

main proc  
    
    mov bx, -10
    cmp bx, 0
    
    jl if
    jge else
    
    if:
    print "Numer is negative"
    jmp end_if
    
    else:
    print "Number is positive"
    jmp end_if
    
    end_if:
    
    
    mov ah, 4ch
    int 21h   
main endp 

end main
