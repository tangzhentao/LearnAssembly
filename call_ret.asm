assume ds:data, ss:stack, cs:code

; data
data segment
    hello db 'hello world!$'
data ends

;
stack segment
stack ends

; stack
code segment
    
    start:
    
    ; set data
    mov ax, data
    mov ds, ax
    ; set stack
    mov ax, stack
    mov ss, ax
    
    mov ax, 1122h
    
    call print

        
    ; exit 
    mov ah, 4ch
    int 21h
    
print:
    mov dx, 0h
    mov ah, 9h
    int 21h
    
    ret
    
code ends
end  start