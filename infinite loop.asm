include 'emu8086.inc'

.model small
.stack 100H

.data

.code
main proc 
    
    start:
   
    printn "Here" 
    
    jmp start
    
    printn
  
    
endp main
end main

