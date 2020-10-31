			global	_ft_strcmp

			section	.text
_ft_strcmp:	
			mov rcx, 0
			dec rcx
	while:
			inc	rcx
			mov al, BYTE[rdi + rcx]
			mov bl, BYTE[rsi + rcx]
			cmp al, bl
			jne	endwhile
			cmp	al, 0
			jne	while
	endwhile:
			sub al, bl
			ret