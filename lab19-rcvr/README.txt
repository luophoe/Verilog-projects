Lab 19-1         A Serial-to-Parallel Interface Receiver 

Objective: To code a more moderately difficult Verilog RTL design for synthesis. 
For this lab, you code a more moderately difficult Verilog design for synthesis. 
1. Change to the lab19-rcvrù directory and examine the files provided therein: 

README.txt    Lab instructions
rcvr.v        Receiver model (incomplete)
rcvr_test.v   Receiver test
rc_shell.tcl  Synthesis script
genus_shell.tcl  Synthesis script

Note: The receiver searches the serial input stream for a match character, and
when found, loads the next serial input character to the output buffer, asserts
a readyù flag, and immediately searches for the next match. Modeling the
individual parts of the receiver is similar to modeling individual components. 

2. In your favorite editor modify the rcvr.vù file to complete the receiver
definition. 

3. Verify the RTL model by entering this command with Incisive: 

irun rcvr.v rcvr_test.v 

or this command with Xcelium:
xrun rcvr.v rcvr_test.v 

You should see I Love Verilogù and TEST DONE. 

Correct your model until it passes the test. 

4. When all models pass their test, synthesize the RTL model; enter: 

rc -files rc_shell.tcl 

or this command with Genus tool
genus -f genus_shell.tcl

You should see Synthesis succeeded. 

Correct your model until it can synthesize. 

5. Verify the gate-level model; enter this command with Incisive: 

irun rcvr.vg rcvr_test.v -v ../sources/tutorial.v -vlogext vg 

or this command with Xcelium:
xrun rcvr.vg rcvr_test.v -v ../sources/tutorial.v -vlogext vg 

You should see I Love Verilogù and TEST PASSED. 

If the model fails its test then you can ask the instructor for help or try
again after you study the lecture module ‚ÄúAvoiding Simulation Mismatches.
 	

