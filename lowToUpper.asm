#fasm#
start:
	xor si,si                    
	whileLoop:
		mov dl,[text + si]       
		cmp dl, 'a'
		jbe endWhile
		cmp dl, 'z'
		jae endWhile 
		sub dx,20h                    
		mov [text + si],dl
		endWhile:       
		inc si                   
		cmp si,len                    
		jne whileLoop

endProg:
mov ah, 0
int 21h                              

text db 'AAAghjkfghjkfr',0
len =$-text  


