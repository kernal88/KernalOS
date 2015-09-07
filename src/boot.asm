org 0x7c00
	
	jmp start
	
msgstr:
	db 'Hello World!'
	
start:
	cli
	
<<<<<<< HEAD
	;show Hello World
	mov ax,0x0000
	mov es,ax
	mov bp,msgstr
	mov ah,0x13
	mov al,0x01
	mov bh,0x00
	mov bl,0x07
	mov cx,0x000c
	mov dx,0x0a0a
	
	
=======
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

>>>>>>> origin/master
	times 510-($-$$) db 0
	db 0x55, 0xaa
	
