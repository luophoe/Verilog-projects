Lab B-2 Macro Library Using a User-defined Verilog Primitive 

Objective: To define a sequential primitive. 

A user-defined Verilog primitive (UDP) is essentially a look-up table (LUT).
The LUT requires substantial memory, so you generally define a UDP only to
replace several built-in primitives, especially if the module is instantiated
multiple times. 

For this lab, you further modify the macro library file to define a sequential
flip-flop UDP and replace the primitive-based flip-flops with UDP-based
flip-flops. 

1. Change to the lab-appendixC-udp directory and examine the file provided therein: 

README.txt  Lab instructions
techlib.v   Macro Library(Incomplete File)
testdir/    Test cases

2. Copy the test directory and your modified technology library from the
previous lab. If you have not completed the lab, then copy the technology
library from its solutions directory. 

3. Further modify your technology library file: 

a. Define a sequential UDP to represent a flip-flop having a positive
edge-triggered clock and asynchronous preset and reset. Do not overly concern
yourself with whether it is the preset or the reset that winsù when
simultaneously activated. 

b. Modify the flip-flop descriptions to instantiate the UDP instead of the
built-in primitives. Invert the clock where needed. Tie off unused preset
and/or reset inputs. Buffer the Q and QN outputs. 

4. Verify the RTL technology library and for each test enter this command with
Incsive: 
	irun testdir/test_name.v -v techlib.v 

	or this command with Xcelium:
	
	xrun testdir/test_name.v -v techlib.v 


5. Verify your modifications and correct them as needed. 

