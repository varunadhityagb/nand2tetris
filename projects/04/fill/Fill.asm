// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Set the memory address of the screen to R0

@SCREEN
D=A
@addr
M=D

(CHK)
@KBD
D=M
@BLK
D;JGT
@WHT
D;JEQ

(BLK)
@24576
D=M
@addr
D=D-M
@CHK
D;JGT
@addr
A=M
M=-1
@addr
D=M+1
@addr
M=D
@CHK
0;JMP

(WHT)
@24576
D=M
@addr
D=D-M
@CHK
D;JGT
@addr
A=M
M=0
@addr
D=M+1
@addr
M=D
@CHK
0;JMP
