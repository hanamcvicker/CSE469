# CSE469
CSE469 - Computer Architecture
This Repository contains the code for implementing two RISC-V CPUs using System Verilog, capable of executing all rv32i instructions, and 4 Assembly Homework Assignments. Lab 1 contains the design of a multi-cycle processor, while Lab 2 contains the design of a 5-stage pipelined CPU.

Write RISC-V assembly code for bubble sort (without function calling).
Assume that arr[5] = { 6, 1, 3, 2, 7 }; starting at memory address 0x10000000.
Pseudocode for bubble sort
procedure bubbleSort( list : array of items )
loop = list.count;
for i = 0 to loop-1 do:
swapped = false
for j = 0 to loop-1 do:
/* compare the adjacent elements */
if list[j] > list[j+1] then
/* swap them */
swap( list[j], list[j+1] )
swapped = true
end if
end for
/*if no number was swapped that means
array is sorted now, break the loop.*/
if(not swapped) then
break
end if
end for
end procedure return list
Note that you will have to write 2 loops
1


