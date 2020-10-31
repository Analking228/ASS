			global	_ft_strcpy

			section	.text
_ft_strcpy:	
			mov		rax, 0
			dec		rax
	while:	
			inc		rax
			mov		cl, BYTE[rsi + rax]
			mov		BYTE[rdi + rax], cl
			cmp		BYTE[rsi + rax], 0
			jnz		while
			mov		rax, rdi
			ret
