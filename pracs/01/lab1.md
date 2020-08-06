# Lab 01 - Workshop Tasks

Q1. Create folder for lab. DONE
Q2. Open PCSpim and run hello.s DONE
Q3. Run helloimproved.s and identify original text of instruction, assembled text, machine code.
[0x00400024]	0x001fb821     addu $23, $0, $31               ; 7: addu $s7, $0, $ra      # save the return address in a register
                ^^^^^^^^^^     ^^^^^^^^^^^^^^^^^                    ^^^^^^^^^^^^^^^^^
                Machine Code   Assembled Version                    Original Text Instructions
[0x0040002c]	0x3c041001     lui $4, 4097 [label1]           ; 17: la $a0, label1         # takes string address as an argument
                ^^^^^^^^^^     ^^^^^^^^^^^^^^^^^                     ^^^^^^^^^^^^^^
                Machine Code   Assembled Version                     Original Text Instructions

Differences:
        Machine Code: This contains the assembled instructions in a format that is readable by the machine. In this case Hexadecimal.
