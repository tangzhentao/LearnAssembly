
assume ds:data, ss:stack cs:code

; ���ݶ�
data segment
    db 10h dup(1)
    hello db "hello world!$"
data ends

; ջ��
stack segment
    db 10h dup(2)
stack ends

; �����
code segment

    start:
    
    ; �������ݶ� 
    mov ax, data
    mov ds, ax
    ; ����ջ��
    mov ax, stack
    mov ss, ax
    mov sp, 10h
    
    ; ��ӡ�ַ���
    mov dx, offset hello ; ��ȡ�ַ���hello�����ݶε�ƫ����
    mov ah, 09h ; ���õ���ϵͳ�Ĵ�ӡģ��
    int 21h ;����ϵͳģ��
    
    ; �޸����ݶ�
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