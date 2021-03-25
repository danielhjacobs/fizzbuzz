.data
    Fizz: .asciiz "Fizz"
    Buzz: .asciiz "Buzz"
    Newline: .asciiz "\n"
.text
main:
loop:
    # Print newline every iteration but the first
    bne $t0, $zero, newline
# After printing a newline, return here
newline_return:
    # Store 0 in register a0
    li $a0, 0
    # Exit when t0 > 99 at this point, which will be when t0 > 100 at end of loop
    bgt $t0,99,exit
    # Add 1 to t0
    addi $t0,$t0,1
    # Store 3 in register s0
    li $s0, 3
    # Divide t0 by s0
    div $t0, $s0
    # Store the remainder in t1
    mfhi $t1
    # Store 5 in register s0
    li $s0, 5
    # Divide t0 by s0
    div $t0, $s0
    # Store the remainder in t2
    mfhi $t2
    # If t0 % 3 == 0, print Fizz
    beq $t1, $zero, print_fizz
# After printing Fizz, return here
fizz_return:
    # If t0 % 5 == 0, print Buzz
    beq $t2, $zero, print_buzz
    # Printing Fizz and/or Buzz has the side-effect of storing something besides 0 in register a0; if zero is still in a0, nothing but a newline was printed yet
    beq $a0, $zero, print_number
    # Loop
    j loop

# Print Fizz, then return to the previous point in the loop
print_fizz:
    la $a0, Fizz
    li $v0, 4
    syscall
    j fizz_return

# Print Buzz, then loop
print_buzz:
    la $a0, Buzz
    li $v0, 4
    syscall
    j loop

# Print the number in t0, then loop
print_number:
    move    $a0, $t0
    li      $v0, 1
    syscall
    j loop

# Print a newline, then return to the previous point in the loop
newline:
    la $a0, Newline
    li $v0, 4
    syscall
    j newline_return

# Exit the program
exit:
    li $v0, 10
    syscall