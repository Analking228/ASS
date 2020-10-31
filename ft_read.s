			global	_ft_read
			extern	___error

			section	.text
_ft_read:	mov		rax, 0x2000003
			syscall
			jnc		end
			push	rax
			call	___error
			pop		rbx
			mov		[rax], rbx
			mov		rax, -1
	end:	
			ret
