.globl my_strchr
.type my_strchr, @function
.text
my_strchr:
	#a0 = char* str
	#a1 = char c

	MV a3, a0	#Load a3 with address of start of string

loop:
	LB t0, 0(a3)     #Load the character from string array
	BEQ t0, zero, done    #while t0 memory is not empty continue loop
	BEQ t0, a1, success   #Branch if letter found in word
	ADDI a3, a3, 1	      #Increment t0 along the string array
	BNE t0, zero, loop     #Loop back if t0 is not at an empty memory yet

done:
	MV a0, zero	#load a0 with 0 to return null pointer
	J return

success:
	MV a0, t0	#load a1 with t0 to return pointer to character in string
	J return

return:
	RET
