.data

	chave: .asciiz "REPUBLICAS"
	preco: .asciiz "4576.01"
	cifrada: .space 20
	
	
.text

	move $t0, $zero
	
	loop:
		lb $t1, preco($t0)
		beqz $t1, end
		beq $t1, '.', dot
		
		sub $t1, $t1, '0'
		lb $t2, chave($t1)
		sb $t2, cifrada($t0)
		addi $t0, $t0, 1
		j loop
		
	dot: 
		sb $t1, cifrada($t0)
		addi $t0, $t0, 1
		j loop
		
	
	end: 
	
		sb $zero, cifrada($t0)
		
		li   $v0, 4
        la   $a0, cifrada
        syscall