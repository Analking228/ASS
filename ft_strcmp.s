			global	_ft_strcmp

			section	.text
_ft_strcmp:	
			mov rax, 0
			dec rax
	while:
			mov cl, BYTE[rdi + rax]
			mov bl, BYTE[rsi + rax]
			cmp cl, bl
			jne	endwhile
			cmp	cl, 0
			jnz	while
	endwhile:
			sub cl, bl
			ret