include 'emu8086.inc'

.model small
.stack 100H
.data 
    n db ? 

.code

main proc
    mov ax, @data
    mov dx, ax
    
    mov ah, 1
    int 21h
    sub al, 48
    mov n, al 
    
    printn
    
    mov bh, 1
    mov dl, '*'
    
    loop1:
        cmp bh, n
        jg loop1_exit
        mov bl, 1
        
        loop2:
            cmp bl, bh
            jg loop2_exit
            mov ah, 2
            int 21h
            inc bl
            jmp loop2
            
        loop2_exit:
            printn
            inc bh
            jmp loop1
            
    loop1_exit:
    
    
    mov ah, 4ch
    int 21h   
main endp 

end main
