@SCREEN
D = A

@addr 
M = D

@R0
D = M
@n
M = D

@i
M = 0

(LOOP)
@i
D=M
@n
D = D-M

@END
D;JGT

@addr
A=M
M = -1

@i
M = M+1

@32
D=A

@addr
M = M+D

@LOOP
0;JEQ

(END)
@END
0;JEQ