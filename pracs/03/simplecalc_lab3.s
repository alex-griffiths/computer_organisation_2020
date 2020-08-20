# The main program is to perform calculation as per formula: x = (a + b) - (c + d)
#                                                              = (12 + (-2)) -  (13 - 3)
#                                 Modified Formula for Lab3: x = (g + h) - (i - j + k)
# Note: A formula is a mathematical expression with variables. For this exercise, you need to declare some variables based on the calculation task.
# Variable and expression are standard and common terms in programming context. It's assumed you have understood them from learning Programming Fundamentals.
# places variables a, b, c, d, x in registers s1, s2, s3, s4, s0

  .data
  .globl  message  
message:  .asciiz "The value of f is: "   # Create an ascii string and label it as "message"
extra:    .asciiz "\nHave a nice day :)"  # Create an ascii string and label it as "extra"
thankyou: .asciiz "\n\n\n ... Thank you :)"
  .align 2                  # align directive will be explained later

  .text
  .globl main
main:                       # main has to be a global label
  addu  $s7, $0, $ra        # save return address in a global register

        # CALCULATING

  # addi  $s1, $0, 12         # a = 12 
  # addi  $s2, $0, -2         # b = -2
  # addi  $s3, $0, 13         # c = 13
  # addi  $s4, $0, 3          # d = 3
  addi  $s1, $0, 12         # $s1 = g
  addi  $s2, $0, -2         # $s2 = h
  addi  $s3, $0, 13         # $s3 = i
  addi  $s4, $0, 3          # $s4 = j
  addi  $s5, $0, 4          # $s5 = k
  add   $t0, $s1, $s2       # $s1 + $s2
  add   $t1, $s4, $s5       # $s4 + $s5
  sub   $t1, $s3, $t1       # $s3 - $t0
  sub   $s0, $t0, $t1       # $t0 - $t1

        # PRINTING
        
        # print the ascii string pointed to by the label "message"
  li    $v0, 4              
  la    $a0, message        # Pass message to the syscall argument register.
  syscall
  
        # print the result of the calculations above
  li    $v0, 1              # load the print_int syscall code
  add   $a0, $0, $s0        # add the value of the above calculations into the register used for print_int arguments
  syscall
  
        # print the ascii string pointed to by the extra label
  li    $v0, 4              
  la    $a0, extra          # load the address of the extra label into the print_string arguments register
  syscall

  li    $v0, 4              
  la    $a0, thankyou          
  syscall
  
        # Usual stuff at the end of the main

  addu  $ra, $0, $s7        # restore the return address
  jr    $ra                 # return to the main program
  add   $0, $0, $0          # nop (no operation)

