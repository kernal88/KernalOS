org 0x7c00
	
	jmp start
	
msgstr:
	db 'Hello World!'
	
start:
	cli
	
	mov ax,0x00
    mov es,ax
    mov bp,msgstr
    mov ah,0x13
    mov al,0x01
    mov bh,0x00
    mov bl,0x01
    mov cx,0x000b
    int 10

loop:
    halt
    jmp loop

	times 510-($-$$) db 0
	db 0x55, 0xaa
	
