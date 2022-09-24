Lab 14-1         Using a Component Library 

Objective: To demonstrate mastery of basic coding styles. 

For this lab, you code and synthesize some representative models. 

1. Change to the lab14-libù directory and examine the files provided therein: 

README.txt    Lab instructions
lib.v         Model library (incomplete)
lib_test.v    Model library tests
rc_shell.tcl  Synthesis script

Note: To facilitate your development effort, the library and tests can
conditionally compile and test individual models. You specify the models and
tests to compile by defining some combination of the modules like  priority7, latchrs, dffrs,
and drive8 macros on the invocation command line as described in the previous
lab. If you do not specify any then all are compiled and tested. 

2. In your favorite editor modify the lib.vù file to complete the model
definitions. You can elect to individually complete and test each model. 

Note: The synthesis tool cannot from the latch template infer asynchronous set
or reset. The latch model includes the async_set_reset pragma to specify the
signals to directly connect to the component's asynchronous set and reset pins. 

3. Verify the RTL model(s) by entering: 

Note: Fill in the macro name (or omit the option to test all models). 

irun lib.v lib_test.v -define macro 

You should see TEST PASSED with below results:
	TEST PASSED - DRIVER
	TEST PASSED - PRIORITY
	TEST PASSED - LATCH
	TEST PASSED - DFF

Correct your models until all pass their test. 

4. When all models pass their test, synthesize the RTL models; enter: 

rc -files rc_shell.tcl 

The script writes a separate post-synthesis net list for each model. 

You should see Synthesis succeeded. 

Correct your models until all can synthesize. 

5. Verify the gate-level models by entering: 

Note: Fill in the macro name (or omit the option to test all models). 

irun *.vg lib_test.v -v ../sources/tutorial.v -vlogext vg -define macro 

You should see TEST PASSED with similar results. 

If any model fails its test then you can ask the instructor for help or try
again after you study the lecture module Avoiding Simulation Mismatches. 

