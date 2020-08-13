# Lab 02
```
Alex Griffiths
18001525
```

## Preparation

### Question 2
The stored-program concept means that data and instructions are stored in memory. And as data is required, it is loaded from memory. This data is then used by the program, and then any results from operations performed on this data can then be stored back into memory, which can be used later. This is different from storing all data in the registers. Data needs to be loaded from memory, into the registers, or written from a register into memory.

## Workshop Tasks

2. 
  a) 
```
 s1 = 0 + 12
 s2 = 0 + -2
 s3 = 0 + 13
 s4 = 0 + 3
 
 t0 = s1 + s2 # t0 = 12 + -2 = 10
 t1 = s3 - s4 # t1 = 13 - 3 = 10
 s0 = t0 - t1 # s0 = 10 - 10 = 0
```

  b) The program outputs the following:

```
26850099200.00000000

 ... Thank you :)
```

  c) No the results are not identical. The expected output should be:

```
The value of f is: 0
Have a nice day :)

 ... Thank you :)
```

  Instead there is a very large number that is output. I believe this is happening because the system call code that is loaded on line 23: `li $v0, 1` is the system call code to print out an integer, but the argument passed to the system call instruction is an ASCII string, not an integer. It then prints out an integer value for this string, and continues to execute the instructions until it tries again to print out the data pointed to by the extra label. This time however, the syscall code that was loaded was the print_float code. After printing out the float value for this data, it continues executing the rest of the instructions.
