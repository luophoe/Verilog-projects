Pseudo-Code Based Testbench / Script driven Testbench

It is possible to define a set of instructions by which the operation of a testbench can be controlled. 
This collection of user defined instrucitons is often called 'Pseudo-code' and a testbench usually reads 
these instructions form a text file. This type of testbench is also called a 'Script driven testbench'.

The testbench is written to interpret the text of each instruction and then perform that operation. We will 
see an example of this in this lab.

One issue that we have to remember is that the suer defined instructions are more likely to be written by hand,
and therefore contain errors, than a file of stimulus data created by, for example, a graphics package. Therefore
our testbench needs to carefully check the instruction data it is trying to read.

IN this lab, we try to write 2 testbenches , a verilog 1995 vreadmem_test.v which uses the system task $readmemh
 for getting the required commands from a data.txt into the precedure call within the testbench.

The second testbench, a verilog 2001 vfopen_test.v which uses the system task $fopen to get the file containing the
cmds to be opened by heh procedure call within the testbench.

The declarations of necessary variables and a set of tasks have been
created in both of the testbenches. Follow the instructions in the comments in the vfopen_test2001.v  and 
vreadmem_test95.v tests create the procedure using readmemh and fopen to get the data.txt and cmd.txt
into the procedures within the testbench respectively.

 
