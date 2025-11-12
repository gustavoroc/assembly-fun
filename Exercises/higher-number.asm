#1. Faça um programa, em assembly, utilizando a ISA MIPS32, que
# verifique o valor das variáveis X, Y, Z e coloque em W o maior valor:

.data
x: .word 42
y: .word 231
z: .word 21
w: .word 0 

.text

lw $s0, x
lw $s1, y
lw $s2, z

bgt $s0, $s1, XhigherThanY
move $t3, $s1
j newStatement

XhigherThanY:
move $t3, $s0

newStatement:
bgt $t3, $s2, end
move $t3, $s2

end:
sw $t3, w

li $v0, 1
lw $a0, w
syscall

