(LOOP)
  @i
  M=0
  @color
  M=0

  @KBD
  D=M

  @FILL
  D;JEQ

  @color
  M=-1
(FILL)
  @i
  D=M

  @8191
  D=D-A
  @FILLEND
  D;JGT

  @i
  D=M
  @SCREEN
  D=D+A
  @a
  M=D

  @color
  D=M

  @a
  A=M
  M=D

  @i
  M=M+1
  @FILL
  0;JMP
(FILLEND)

  @LOOP
  0;JMP
