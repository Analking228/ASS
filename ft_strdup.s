			global	_ft_strdup
			extern	_ft_strlen
			extern	_ft_strcpy
			extern	_calloc

			section	.text
_ft_strdup:	call	_ft_strlen
			add		rax, 1
			push	rdi
			mov		rdi, rax
			mov		rsi, 1
			call	_calloc
			cmp		rax, 0
			jz		error
			mov		rdi, rax
			pop		rsi
			call	_ft_strcpy	
			ret
	error:
			mov		rax, -1
			ret


