.globl fib
.text

fib:
	ADDI sp, sp, -12 # initialize the stack
	SW ra, 0(sp) # store return address in stack
    ADDI s0, a0, 0
	SW s0, 4(sp) # store input argument a0 in stack
   
    
    LI t0, 2
    BLT a0, t0, return
    
	ADDI a0, a0, -1       # calculate fib(a0-1)
	JAL fib
	

	MV s1, a0           # load fib(a0-1) into t0
    SW s1, 8(sp) # store sum on the stack
    LW a0, 4(sp)
	ADDI a0, a0, -1       # calculate fib(a0-2)
	JAL fib
    
	ADD a0, s1, a0        # calculate fib(a0 - 1) + fib(a0 - 2)
	JAL return
    
return:

	LW s1, 8(sp)
    LW s0, 4(sp)
	LW ra, 0(sp) # restore return address
	ADDI sp, sp, 12 # de-allocate stack space
	
	jr ra # return to caller



