Lab 24-1 Developing a Pseudo-Code Based Testbench / Script driven Testbench using Verilog 1995

Objective: To develop a user defined testbench using Verilog 1995

It is possible to define a set of instructions by which the operation of a testbench can be controlled. 
This collection of user defined instrucitons is often called 'Pseudo-code' and a testbench usually reads 
these instructions form a text file. This type of testbench is also called a 'Script driven testbench'.

The testbench is written to interpret the text of each instruction and then perform that operation. We will 
see an example of this in this lab.

One issue that we have to remember is that the suer defined instructions are more likely to be written by hand,
and therefore contain errors, than a file of stimulus data created by, for example, a graphics package. Therefore
our testbench needs to carefully check the instruction data it is trying to read.

IN this lab, you write a verilog 1995 vreadmem_test.v which uses the system task $readmemh  for getting the required commands from a data.txt into the precedure call within the testbench.
Creating Script Driven Test Bench
1.	Change to the script-driven-tests-95 directory and examine the files there: 

		README.txt       Lab instructions
		data             commands required
           vreadmem_test95  Module(Incomplete)

2.	Write a procedure using the system task $readmemh to get the commands from data.txt into the cmdarray "cmdarr"  defined above. 
3.	Create a loop where in 8 commands are read, corresponding to each bit of the cmdarray and then when encountered the 16'bx or Fh there is a display "end of commands" and then stop reading using $STOP.
4.	In the next part of the loop check for the the SEND, ADDR, NEXT commands and sue the respective tasks created below. And have the default display as "unknown command" for any other command encountered.
5.	Simulate the design and test by entering: 
			irun your_test_file_name 
6.	Correct your test and repeat as needed. 
 
