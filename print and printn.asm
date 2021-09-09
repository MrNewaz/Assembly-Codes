include 'emu8086.inc'

.model small
.stack 100H

.data

.code
main proc
   
    print "Hello World" ; Printing a string
    
    printn
    
    print "Hello Saif" ; Printing a string with new line  
    
    ;printn "Hello Maisa" ; Printing a string with new line
     
        
    mov ah, 4CH
    int 21H
    
endp main
end main

