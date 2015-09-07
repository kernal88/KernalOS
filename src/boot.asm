org 0x7c00
	
	jmp start
	
msgstr:
	db 'Hello World!'
	
start:
	cli
	
	;clear screen
	mov ah,0x06
	mov al,0x00
	mov bh,0x07
	mov cx,0x0000
	mov dh,24
	mov dl,79
	int 0x10
	
	;show Hello World
	mov ax,0x0000
	mov es,ax
	mov bp,msgstr
	mov ah,0x13
	mov al,0x01
	mov bh,0x00
	mov bl,0x07
	mov cx,0x000c
	mov dx,0x0000
	int 0x10
showstring:
	ret
regdump:
	ret
loop:
    hlt
    jmp loop

	times 510-($-$$) db 0
	db 0x55, 0xaa
	
