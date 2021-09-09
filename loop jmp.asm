include 'emu8086.inc'

.model small
.stack 100H
.data 
n db ? 
sum db 0


.code

main proc
    mov ax, @data
    mov dx, ax
    
    print 'Enter n: ' 
    mov ah, 1
    int 21h
    sub al, 48
    mov n, al
    
    printn
      
    mov bl, 1 ; int i = 0
    
    top:
    cmp bl, n
    jg exit_loop
    add sum, bl
    inc bl
    jmp top
    
    exit_loop:
    print 'Sum is:'
    mov ah, 2
    mov dl, sum 
    int 21h
   
    
    
    
    mov ah, 4ch
    int 21h   
main endp 

end main
