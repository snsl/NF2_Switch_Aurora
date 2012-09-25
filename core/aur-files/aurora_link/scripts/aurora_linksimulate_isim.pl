##############################################################################
##
##         Project:  Aurora Module Generator version 2.9
##
##         Date:  $Date: 2007/11/07 10:14:23 $
##          Tag:  $Name: i+IP+138572 $
##         File:  $RCSfile: simulate_isim_pl.ejava,v $
##          Rev:  $Revision: 1.1.2.3 $
##
##      Company:  Xilinx
##
##   Disclaimer:  XILINX IS PROVIDING THIS DESIGN, CODE, OR
##                INFORMATION "AS IS" SOLELY FOR USE IN DEVELOPING
##                PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY
##                PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
##                ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,
##                APPLICATION OR STANDARD, XILINX IS MAKING NO
##                REPRESENTATION THAT THIS IMPLEMENTATION IS FREE
##                FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE
##                RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY
##                REQUIRE FOR YOUR IMPLEMENTATION.  XILINX
##                EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH
##                RESPECT TO THE ADEQUACY OF THE IMPLEMENTATION,
##                INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR
##                REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
##                FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES
##                OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
##                PURPOSE.
##
##                (c) Copyright 2004 Xilinx, Inc.
##                All rights reserved.
##
##############################################################################
##
## SAMPLE_TEST.DO
##
##
## Description: A .do file to run a simulation using the aurora_link_aurora_example module, 
##              an example design which instantiates aurora_link.
##              The file modelsim.ini should be set correctly to map the logical
##              library names (such as  unisim, unisims_ver, simprim, simrprims_ver
##              etc.) to the corresponding physical directories where the precompiled
##              Xilinx libraries are located.
##
##              For more details on setting up Swift models, see (Xilinx Answer 14019).
##
##
##

 $XILINX = $ENV{XILINX};

# Compile the HDL for the Device Under Test
    # Aurora Lane Modules  
    "../src/aurora_link_chbond_count_dec",
    "../src/aurora_link_error_detect",
    "../src/aurora_link_lane_init_sm",
    "../src/aurora_link_sym_dec",
    "../src/aurora_link_sym_gen",
    "../src/aurora_link_aurora_lane",


    # Global Logic Modules
    "../src/aurora_link_channel_error_detect",
    "../src/aurora_link_channel_init_sm",
    "../src/aurora_link_idle_and_ver_gen",
    "../src/aurora_link_global_logic", 


    # TX LocalLink User Interface modules
    "../src/aurora_link_tx_ll_control",
    "../src/aurora_link_tx_ll_datapath",
    "../src/aurora_link_tx_ll",




    #RX_LL Pdu Modules
    "../src/aurora_link_rx_ll_pdu_datapath",



    #RX_LL top level
    "../src/aurora_link_rx_ll",






    #Top Level Modules and wrappers
    "../cc_manager/aurora_link_standard_cc_module",
    "../src/aurora_link_phase_align",    
    "../src/aurora_link"
     );

    my @TESTBENCH_MODULES =
     (
    "../examples/aurora_link_frame_check",
    "../examples/aurora_link_frame_gen",    
    "../examples/aurora_link_aurora_example"
     );


    my @TESTBENCH_MODULES =
     (
    # Testbench
    ../testbench/aurora_link_example_tb"
     );

    
    
       $top_module = "EXAMPLE_TB";


        open (PRJ_FILE, ">sim_isim.prj");

    # AURORA  modules
    foreach $module(@AURORA_MODULES)
    {
        print PRJ_FILE "vhdl work ". $module . ".v\n";
            }

    print PRJ_FILE "\n\n";

# TESTBENCH modules
    foreach $module(@TESTBENCH_MODULES)
    {
        print PRJ_FILE "vhdl work ". $module . ".v\n";
            }
    print PRJ_FILE "\n\n";

        ##--Creates a .tcl batch file for waveform trace--##
open (TCL_FILE, ">sim_isim.tcl");
   print TCL_FILE "scope $top_module\n";
      ##--displays all signals--##
   print TCL_FILE "ntrace select -o on -m / -l all\n";
   print TCL_FILE "ntrace start\n";
   print TCL_FILE "run 10us\n";
   print TCL_FILE "quit\n";
close TCL_FILE;

        $exe_file = "$top_module.exe";

        ##--Compile source files and link them--##
   ##--specify which library to use--##
system("fuse -prj sim_isim.prj -lib unisims_ver -top $top_module -top glbl -o $exe_file");
        

##--Generate waveform trace--##
system("./$exe_file -tclbatch sim_isim.tcl -wavefile sim_isim");


