Lab C-1 SDF Annotation 

Objective: To annotate timing information. 

For this lab, you annotate timing data to a design. The design is a serial
interface receiver. It receives characters serially and transmits them in
parallel. 

1. Change to the lab-appendixC-sdf directory and examine the files therein: 

README.txt   Lab instructions
rcvr.v       DUT (RTL)
rcvr_test.v  Test
rcvr.vg      DUT (gates)
rcvr.sdf     Timing

2. Simulate the RTL design and test; enter: 

irun rcvr.v rcvr_test.v 

The test transmits the message I Love Verilog. 

You should see TEST DONE. 

3. Copy your modified technology library from the previous lab. If you have
not completed the lab, then copy the technology library from its solutions
directory. 

4. Simulate the gate-level design and test by entering: 

irun rcvr.vg rcvr_test.v -timescale 1ns/10ps -v techlib.v -vlogext vg 

The -timescale option provides a default timescale for the gate-level
description. 

The -vlogext option registers and additional Verilog file extension. 

You should see multiple hold violations and “TEST TIMEOUT”. 

5. Utilize the graphical simulation analysis environment (SimVision) to verify
the body_reg_reg[0] propagation delay: 

a. Enter: 

irun rcvr.vg rcvr_test.v -access r -gui -maxdelays \
-timescale 1ns/10ps -v techlib.v -vlogext vg 

The -maxdelays option selects to use the maximum delays. 

b. Probe body_reg_reg[0] to a waveform display and run the simulation. 

c. Observe and record the Q output rise and fall delays. 

d. Verify that these are the maximum delays the library specifies for this type. 
6. Modify the test to (in an initial block at time 0) annotate the timing in
the rcvr.sdf file to the receiver instance. 

7. Utilize the graphical simulation analysis environment (as before) to verify
the annotated body_reg_reg[0] propagation delay. Verify that these are the
maximum delays the rcvr.sdf file specifies for this instance. 

