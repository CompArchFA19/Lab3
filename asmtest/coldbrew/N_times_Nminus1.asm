addi $t0, $zero, 0 #counter for computing n * n-1
addi $t1, $zero, 1
addi $t2, $zero, 5 #n

sub $t3, $t2, $t1 #sets t3 to n-1 (multiplier)

addi $t5, $zero, 0 # running total

bne $t0, $t3, ADDN

ADDN:
	add $t5, $t5, $t2
	addi $t0, $t0, 1
	bne $t0, $t3, ADDN
	beq $t0, $t3, END
	
END:
	add $v0, $t5, $zero
	