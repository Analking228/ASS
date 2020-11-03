			global	_ft_strcmp

			section	.text
_ft_strcmp:	
			mov	rax, 0
			mov rbx, 0
			mov rcx, -1
	while:
			inc	rcx
			mov	al, BYTE[rdi + rcx]
			mov bl, BYTE[rsi + rcx]
			cmp al, 0
			je	endwhile
			cmp	al, bl
			je	while
	endwhile:
			sub rax, rbx
			ret