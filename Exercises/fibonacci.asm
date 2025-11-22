.data

first_item:  .word 0
second_item: .word 1

fibonacci_sequence: .word 0,1,0,0,0,0,0,0,0


.text

lw $t1, first_item
lw $t2, second_item

move $t4, $zero # offset => curr index

loop:
	beq $t4, 10, end
	add $t3, $t1, $t2
	sll $t5, $t4, 2
	sw $t3, $t5(fibonacci_sequence)
	addi $t4, $t4, 1
	j loop

end: