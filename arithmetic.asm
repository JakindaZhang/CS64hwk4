# arithmetic.asm program
# CS 64, Z.Matni
#
# 1. Prompt the user for 3 inputs: a, b, c
# 2. Calculate 16*( a - 8*b) + 7*c using only one mult instruction
# 3. Print out the result

.text
main:
	# TODO: Write your code here!
get_user_input:
	li $v0, 5
	syscall
	#$t0 = a, $t1 = b, $t2 = c;
	move $t0, $v0
	li $v0, 5
	syscall
	move $t1, $v0
	li $v0, 5
	syscall
	move $t2, $v0
calculate:
	#8*b, to a1
	sll $a1, $t1, 3
	#7*c, to a2
	#7 to a3
	li $a3, 7
	mult $t2, $a3
	mflo $a2
	#a-8*b, to a1
	#get -8*b first
	nor $a1, $a1, $zero
	addi $a1, $a1, 1
	add $a1, $t0, $a1
	#16*(a-8*b)
	sll $a1, $a1, 4
	#16*(a-8*b)+7*c to a0
	add $a0, $a1, $a2
print:
	li $v0, 1
	syscall
exit:
	# Exit SPIM: Write your code here!
	li $v0, 10
	syscall
