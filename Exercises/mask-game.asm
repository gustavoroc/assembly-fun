.data

gabarito: .word 0x2284A922    # 100010100001001010100100100010 (bin)
cartao:  .word 0x1F91A937    # 011111100100011010100100110111 (bin)

.text

lw $t1, gabarito
lw $t2, cartao
move $t5, $zero

and $t3, $t2, $t1

validate_game:
beqz $t3, end

andi $t4, $t3, 0x7       # 0b111 -> 0x7 (ou apenas 7)
beqz $t4, not_scored
addi $t5,$t5, 1

not_scored:
srl $t3, $t3, 3
j validate_game

end:
