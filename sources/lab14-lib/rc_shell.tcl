# rc -files rc_shell.tcl
if ![info exists env(RCHOME)] {puts "PLEASE SET \"RCHOME\" VARIABLE!"; exit 1}
set_attribute hdl_auto_async_set_reset true
set_attribute exact_match_seq_async_ctrls true
set_attribute library $env(RCHOME)/share/synth/tutorials/tech/tutorial.lbr
read_hdl lib.v -v2001
elaborate
foreach design {priority7 latchrs dffrs drive8} {check_design $design}
define_clock -period 67000 -name L15MHz /designs/latchrs/ports_in/e
external_delay -clock L15MHz -input  40000 [find -port /designs/latchrs/ports_in/*]
external_delay -clock L15MHz -output 27000 [find -port /designs/latchrs/ports_out/*]
define_clock -period 67000 -name D15MHz /designs/dffrs/ports_in/c
external_delay -clock D15MHz -input  40000 [find -port /designs/dffrs/ports_in/*]
external_delay -clock D15MHz -output 27000 [find -port /designs/dffrs/ports_out/*]
path_delay -delay 30000 -from [find -port /designs/priority7/ports_in/*] -to [find -port /designs/priority7/ports_out/*]
path_delay -delay 25000 -from [find -port /designs/drive8/ports_in/*] -to [find -port /designs/drive8/ports_out/*]
synthesize -to_mapped
foreach design {priority7 latchrs dffrs drive8} {write_hdl $design > $design.vg}
exit
