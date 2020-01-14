

assume cs:code, ds:data
        
; 数据段
data segment
    
    db 'hello world!$'  ; 字符串以美元符结尾
data ends
; 代码段
code segment
    
    db 11h, 22h, 33h, 44h;在代码段定义几个数据
    age db 10h;定义变量age的值为16
    
    start:  ; 定义开始执行的地方
    
    ; 设置数据段
    mov ax, data
    mov ds, ax
    ; 设置数据段偏移量
    mov dx, 0h
    
    
    mov ax, cs:[0]
    mov bx, cs:[2]
    mov cl, cs:[4]
    
    ;退出
    mov ah, 09h
    int 21h
code ends
end start