# this programs asks for temperature in Fahrenheit
# and converts it to Celsius

  .text    
         .globl main  
main:                 # main has to be a global label
  addu  $s7, $0, $ra  # save return address in a global register
  
  
      # GETTING INPUT VALUE
  
  la $a0,input        # print message "input" on the console
  li $v0,4
  syscall

  # Call the read_int syscall
  la   $v0, 5        # read_int syscall code
  syscall
  
  # CALCULATING  
  
  addi $t0,$v0,-32    # $t0 = $v0 + -32
  mul  $t0,$t0,5      # $t0 = $t0 * 5
  div  $t0,$t0,9      # $t0 = $t0 / 9

      # PRINTING

  la $a0,result       # load string stored at address of result label
  li $v0,4            # load print string syscall code
  syscall             # execute system call

  move $a0,$t0        # move calculated value in $t0 into $a0
  li $v0,1            # load print int syscall code
  syscall             # execute system call

  .data
input:  .asciiz "\n\nEnter temperature in Fahrenheit: "
result:  .asciiz "The temperature in Celsius is: "
  
  .text
  addu  $ra, $0, $s7 # restore the return address
  jr  $ra            # return to the main program
  add  $0, $0, $0    # nop (no operation)

