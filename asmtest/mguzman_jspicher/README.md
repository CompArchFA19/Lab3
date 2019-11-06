Two programs included. To change inputs a and b, edit the first two lines of the hex files.

### Multiply

Multiplication by repeated addition. Sets a to 5, sets b to 5, returns a*b.

 - Expected Result: 25
 - Program is formatted as hexadecimal, answer stored in register 2 ($v0)
 - No additional instructions required


### Least Common Multiple 

Finds the least common multiple of a and b. Sets a to 6, sets b to 4. 

 - Expected Result: 12
 - Program is formatted as hexadecimal, answer stored in register 2 ($v0)
 - No additional instructions required


### Exponentiate

Contains a function which finds a^b recursively and using a separte multiply function. Contains four calls, finding 8^0, 12^1, 3^2, and 4^3. Stores results in $s0, $s1, $s2, and $s3 respectively. 

- Expected Results: 1, 12, 9, 64
- Program given as a .asm and a .dat.
- Sets $sp to 3ffc on first line, otherwise no memory format requirements. 
