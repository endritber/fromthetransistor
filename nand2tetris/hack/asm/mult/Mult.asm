// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

// Put your code here.

@i
M=1
@sum
M=0
(LOOP)
@i
D=M
@R0
D=D-M //D=i-R0
@END
D;JGT
D=M
@R1
D=M
@sum
M=D+M
@i
M=M+1
@LOOP
0;JMP
(END)
@sum
D=M
@R2
M=D
