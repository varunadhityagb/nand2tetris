// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

//psuedocode
//sum = 0
//i = 1
//LOOP:
//if i > R0 goto END
//sum = sum + R1
//i = i + 1
//goto LOOP
//END:
//goto END

// Put your code here.
@sum
M=0
@i
M=1
(LOOP)
@i
D=M
@R0
D=D-M
@SET
D;JGT
@R1
D=M
@sum
M=M+D
@i
M=M+1
@LOOP
0;JMP
(SET)
@sum
D=M
@R2
M=D
@END
0;JMP
(END)
@END
0;JMP