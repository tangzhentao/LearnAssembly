

assume cs:code, ds:data
        
; ���ݶ�
data segment
    
    db 'hello world!$'  ; �ַ�������Ԫ����β
data ends
; �����
code segment
    
    db 11h, 22h, 33h, 44h;�ڴ���ζ��弸������
    age db 10h;�������age��ֵΪ16
    
    start:  ; ���忪ʼִ�еĵط�
    
    ; �������ݶ�
    mov ax, data
    mov ds, ax
    ; �������ݶ�ƫ����
    mov dx, 0h
    
    
    mov ax, cs:[0]
    mov bx, cs:[2]
    mov cl, cs:[4]
    
    ;�˳�
    mov ah, 09h
    int 21h
code ends
end start