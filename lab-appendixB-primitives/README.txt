Lab B-1	Macro Library Using Built-in Verilog Primitives 

Objective: To use built-in primitives to model logic. 

For this lab, you modify a provided macro library file to replace RTL
descriptions with descriptions based upon the Verilog built-in primitives. 

1. Change to the lab-appendixB-primitives and examine the files provided therein: 

README.txt  Lab instructions
techlib.v   Macro library
testdir/    est cases

2. Verify the RTL technology library; for each test enter this command with
Incisive: 

irun testdir/test_name.v -v techlib.v 

or this command with Xcelium:
xrun testdir/test_name.v -v techlib.v 

The -v option provides a module library file. 

You can create a small script to make this task less tedious. 

Each simulation should complete and indicate TEST PASSED. 

3. Modify the macro library file to replace the RTL descriptions with
descriptions based upon the Verilog built-in primitives. Refer as needed to the
flip-flop diagrams on the first page of this lab. The first diagram is of a
positive edge-triggered TTL flip-flop. Replace the nand primitives with nor
primitives to create a negative edge-triggered TTL flip-flop. The second
diagram is of a positive pulse-triggered CMOS master-slave flip-flop. Do not
overly concern yourself with whether it is the preset or the reset that winsù
because no synthesis tool will activate them both simultaneously. 

4. Verify your modifications and correct them as needed. 
 

