Lab A-1 A Simulation Configuration 

Objective: Use a library map file to define a configuration that includes at least one gate-level component. 

Verilog configurations provide a standard portable way to select among multiple
implementations of components stored in multiple libraries to assemble a
simulation. The multiple implementations can be, for example, different levels
of abstraction or different internal functionality or different speeds. This
lab provides a library of components duplicating all components you have
previously developed for this training. The library components are coded using
accelerated Verilog primitives. Your configuration can specify to use any of
these components except the memory, as the test does not know how to download
a program into a gate-level memory. 

1. Change to the lab-appendixA-conf directory and examine the files provided therein: 

README.txt    Lab instructions
cell_lib.v    Library of cells
proj_lib.v    Library of components
risc.v        RISC model
risc_test.v   RISC test(Incomplete)
files.txt     List of RISC sources
CPUtest1.txt  Test programs
CPUtest2.txt
CPUtest3.txt


3. Create the libmap.txt file and use your favorite editor to define the
library mapping and configuration. This file is partially provided below
to help you get started: 

library celllib cell_lib.v;
library projlib proj_lib.v;
library worklib "../.../*";
config risc_test;
  design worklib.risc_test;
  default liblist worklib projlib celllib;
// TO DO: FOR SOME SET OF RISC CELLS OR INSTANCES USE THE PROJECT LIBRARY.
//        FOR THE MEMORY YOU MUST STILL USE THE DEFAULT WORK LIBRARY.
endconfig 

4. Test you configuration by entering this command with Incisive: 

irun cell_lib.v proj_lib.v -f files.txt -libmap libmap.txt -libverbose -top risc_test:config

or by this command with Xcelium:

xrun cell_lib.v proj_lib.v -f files.txt -libmap libmap.txt -libverbose -top risc_test:config

The -libverbose option logs verbose elaboration information. The -top option
specifies to elaborate the risc_test configuration instead of the risc_test
unit.

You should see TEST PASSED. 

5. Examine the log file to verify that the elaborator bound the specified
gate-level units. 

6. Correct your library map file as needed. 

