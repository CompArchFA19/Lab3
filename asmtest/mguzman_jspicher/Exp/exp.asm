#Main:
addi $sp, $zero, 16380
ddi $a0, $zero, 8
addi $a1, $zero, 0
jal exp
add $s0, $v0, $zero

addi $a0, $zero, 12
addi $a1, $zero, 1
jal exp
add $s1, $v0, $zero

addi $a0, $zero, 3
addi $a1, $zero, 2
jal exp
add $s2, $v0, $zero

addi $a0, $zero, 4
addi $a1, $zero, 3
jal exp
add $s3, $v0, $zero




j finish


multiply: #Multiplies $a0 by $a1, stores in $v0
addi $t0, $zero, 0 # Running total
addi $t1, $zero, 0 # Counter for loop
loop:
beq $t1, $a1, exit # If i == b:
add $t0, $t0, $a0  #sum += a
addi $t1, $t1, 1 # i++
j loop

exit:
add $v0, $zero, $t0
jr $ra


exp: #Stores $a0 ^ $a1 in $v0 (a^b)
beq $a1, $zero, base #Go to base case if b is 0

addi $sp, $sp, -4
sw $ra, 0($sp)

addi $a1, $a1, -1
jal exp #Calls a^(b-1)

add $a1, $v0, $zero #moves result of previous exp call to $v0
jal multiply # Calls multiply, storing $a0 * $a1 in $v0

lw $ra, 0($sp) # Get our return address back from the stack
addi $sp, $sp, 4
jr $ra #We can return right away because $v0 is where we wanted it

base:
addi $v0, $zero, 1 #return 1
jr $ra

finish:
