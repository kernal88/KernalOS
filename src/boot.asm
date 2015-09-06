org 0x7c00
	
	jmp start
	
msgstr:
	db 'Hello World!'
	
start:
	cli
	
	
	
	times 510-($-$$) db 0
	db 0x55, 0xaa
	
