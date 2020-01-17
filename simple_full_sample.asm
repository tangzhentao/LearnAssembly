
assume ds:data, ss:stack cs:code

; 数据段
data segment
    db 10h dup(1)
    hello db "hello world!$"
data ends

; 栈段
stack segment
    db 10h dup(2)
stack ends

; 代码段
code segment

    start:
    
    ; 设置数据段 
    mov ax, data
    mov ds, ax
    ; 设置栈段
    mov ax, stack
    mov ss, ax
    mov sp, 10h
    
    ; 打印字符串
    mov dx, offset hello ; 获取字符串hello在数据段的偏移量
    mov ah, 09h ; 设置调用系统的打印模块
    int 21h ;调用系统模块
    
    ; 修改数据段
    mov ax, 1122h
    
    push 1234h
    push 5678h
    pop ax
    pop bx
    
    mov [0], ax 
    
    ; exit
    mov ah, 4ch
    int 21h
code ends
end start                                