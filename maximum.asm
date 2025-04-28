# maximum.asm program
# CS 64, Z.Matni
#
# Get 3 integer inputs from the user (std.in)
# Reveal the maximum absolute value (e.g., entering -3, 2, 1 will give the answer 3)
# See assignment description for details

#Data Area (i.e. memory setup directive)
.data
	# TODO: Complete these incomplete declarations / initializations

get_user_input: .asciiz "Enter the next number:\n"
newline: .asciiz "\n"
max: .asciiz "Maximum: "

#Text Area (i.e. instructions/code directive)
.text

main:

	# TODO: Write your code here
    # You can have other labels expressed here, if you need to
get_input:
	# ask for num1
	li $v0, 4
	la $a0, get_user_input
	syscall
	li $v0, 5
	syscall
	move $t0, $v0

	# ask for num2
	li $v0, 4
	la $a0, get_user_input
	syscall
	li $v0, 5
	syscall
	move $t1, $v0

	# ask for num3
	li $v0, 4
	la $a0, get_user_input
	syscall
	li $v0, 5
	syscall
	move $t2, $v0

convert_abs:
	slt $s0, $zero, $t0
	bne $s0, $zero, convert_abs2
	nor $t0, $t0, $zero
	addi $t0, $t0, 1
convert_abs2:
	slt $s0, $zero, $t1
	bne $s0, $zero, convert_abs3
	nor $t1, $t1, $zero
	addi $t1, $t1, 1
convert_abs3:
	slt $s0, $zero, $t2
	bne $s0, $zero, compare
	nor $t2, $t2, $zero
	addi $t2, $t2, 1

compare:
	#compare t0, t1
	#if t0 < t1, then compare t1, t2
	#if t0 > t2, then compare t0, t2
	slt $s1, $t0, $t1
	beq $s1, $zero, comt0t2

	slt $s2, $t1, $t2
	beq $s2, $zero, maxt1
	move $a1, $t2
	j print

comt0t2:
	slt $s3, $t0, $t2
	beq $s3, $zero, maxt0
	move $a1, $t2
	j print

maxt1:
	move $a1, $t1
	j print

maxt0:
	move $a1, $t0
	j print

print:
	li $v0, 4
	la $a0, max
	syscall
	li $v0, 1
	move $a0, $a1
	syscall
	li $v0, 4
	la $a0, newline
	syscall


exit:
	# TODO: Write code to properly exit a SPIM simulation
	li $v0, 10
	syscall

