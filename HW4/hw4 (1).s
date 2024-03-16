.globl hw4

.text
hw4: 
	LI s0, 0   #Value = 0
	LI s1, 1       #Mul = 1
	LI t0, 43	   # '+' characters
	LI t1, 45	   # '-' characters

	LB t2, 0(a0)   # load first character
	BEQ t2, zero, nullReturn  # if !s then return 0
	BEQ t2, t0, positive   # if s == '+'
	BEQ t2, t1, negative   # if s == '-'
	J while

nullReturn:
	LI a0, 0	   # return 0
	RET

positive: 
	ADDI a0, a0, 1
	J while

negative:
	ADDI a0, a0, 1
	LI s1, -1

while: 
	LI t5, 48
	LI t6, 58

	LB t2, 0(a0)  # *s

	BLT t2, t5, valReturn
	BGE t2, t6, valReturn

	BEQ t2, zero, valReturn
	ADD t3, s0, s0 # 2 x s0 = t3
	SLLI s0, s0, 3 # 8 x s0 = s0
	ADD s0, s0, t3 # 10 x s0 = s0 + t3 = s0

	ADDI t4, t2, -48  # (*s - '0')
	ADD s0, s0, t4
	ADDI a0, a0, 1 # s++
	J while

valReturn:
	BLT s1, zero, valReturnNeg  #If mul = -1 then do 2s complement and return, else just return
	MV a0, s0
	JR ra

valReturnNeg:
	XORI s0, s0, -1			#2's Complement
	ADDI s0, s0, 1
	MV a0, s0
	JR ra
