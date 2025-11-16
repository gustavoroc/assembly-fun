.data
number: .word 2
impar: .asciiz "Impar"
par: .asciiz "par"

.text
lw $t1, number
andi $t2, $t1, 1
beq $t2, 1, odd
la $a0, par
j end

odd:
la $a0, impar

end:
li $v0, 4
syscall
   
