			global	_ft_strdup
			extern	_ft_strlen
			extern	_ft_strcpy
			extern	_calloc
			extern	___error

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
			call	___error
			mov		[rax], 12
			mov		rax, 0
			ret
			