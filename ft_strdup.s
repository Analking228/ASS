			global	_ft_strdup
			extern	_ft_strlen
			extern	_ft_strcpy
			extern	_calloc

			section	.text
_ft_strdup:	call	_ft_strlen
			add		rax, 1
			push	rdi
			mov		rdi, rax
			mov		rsi, 4
			call	_calloc
			cmp		rax, 0
			jz		end
			mov		rdi, rax
			pop		rsi
			call	_ft_strcpy
	end:	
			ret


