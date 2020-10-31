			global	_ft_strlen

			section	.text
_ft_strlen:	
			mov	rax, 0
			dec	rax
	while:	
			inc	rax
			cmp	BYTE[rdi + rax], 0
			jnz	while
			ret
