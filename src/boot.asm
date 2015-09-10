org 0x7c00
	
	jmp start
	
msgstr:
	db 'Hello World!'
	
start:
	cli
	
	;set up stack
	mov ax,0x0000
	mov ss,ax
	mov ax,0x7c00
	mov sp,ax
	mov ax,0x6c00
	mov bp,ax
	
	;clear screen
	mov ah,0x06
	mov al,0x00
	mov bh,0x07
	mov cx,0x0000
	mov dh,24
	mov dl,79
	int 0x10
	
	;show Hello World!
	mov ax, 0x0000
	mov es, ax
	mov bp, msgstr
	mov es, ax
	mov cx, 0x000c
	call showstring
	
	jmp loop
	
;show string   ax= str base address ; bp= str offset address cx=char num
showstring:
	mov ah,0x13
	mov al,0x01
	mov bh,0x00
	mov bl,0x07
	mov dx,0x0000
	int 0x10
	ret
	
regdump:
	ret
sysInByte:
	ret
sysInWord:
	ret
sysInLong:
	ret
sysOutByte:
	ret
sysOutWord:
	ret
sysOutLong:
	ret
sysInWordString:
	ret
sysInLongString:
	ret
sysOutWordString:
	ret
sysOutLongString:
	ret
KeyboardISR:
	ret
MouseISR:
	ret
SerialISR:
	ret
	
loop:
    hlt
    jmp loop

	times 510-($-$$) db 0
	db 0x55, 0xaa
	
