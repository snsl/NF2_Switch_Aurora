##############################################################################
##
##         Project:  Aurora Module Generator version 2.9
##
##         Date:  $Date: 2008/01/09 06:45:37 $
##          Tag:  $Name: i+IP+138572 $
##         File:  $RCSfile: example_test_do.ejava,v $
##          Rev:  $Revision: 1.1.2.5 $
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

        

# Get environment variables needed for finding precompiled libraries and ISE source code
set XILINX   $env(XILINX)

# Delete the pre-existing work directory
# vdel -all -lib work



# Create and map a work directory 
vlib work
vmap work work


# Compile the glbl module, used to simulate global powerup features of the FPGA
vlog -work work $XILINX/verilog/src/glbl.v;




# Compile the HDL for the Device Under Test
    # Aurora Lane Modules  
    vlog -work work ../src/aurora_link_chbond_count_dec.v;
    vlog -work work ../src/aurora_link_error_detect.v;
    vlog -work work ../src/aurora_link_lane_init_sm.v;
    vlog -work work ../src/aurora_link_sym_dec.v;
    vlog -work work ../src/aurora_link_sym_gen.v;
    vlog -work work ../src/aurora_link_aurora_lane.v;


    # Global Logic Modules
    vlog -work work ../src/aurora_link_channel_error_detect.v;
    vlog -work work ../src/aurora_link_channel_init_sm.v;
    vlog -work work ../src/aurora_link_idle_and_ver_gen.v;
    vlog -work work ../src/aurora_link_global_logic.v; 


    # TX LocalLink User Interface modules
    vlog -work work ../src/aurora_link_tx_ll_control.v;
    vlog -work work ../src/aurora_link_tx_ll_datapath.v;
    vlog -work work ../src/aurora_link_tx_ll.v;




    #RX_LL Pdu Modules
    vlog -work work ../src/aurora_link_rx_ll_pdu_datapath.v;



    #RX_LL top level
    vlog -work work ../src/aurora_link_rx_ll.v;






    #Top Level Modules and wrappers
    vlog -work work ../cc_manager/aurora_link_standard_cc_module.v;
    vlog -work work ../src/aurora_link_phase_align.v;    
    vlog -work work ../src/aurora_link.v;
    vlog -work work ../examples/aurora_link_frame_check.v;
    vlog -work work ../examples/aurora_link_frame_gen.v;    
    vlog -work work ../examples/aurora_link_aurora_example.v;


    # Testbench
    vlog -work work ../testbench/aurora_link_example_tb.v;
    
    
# Begin the test

##vsim -L secureIP -L unisim work.aurora_link_SAMPLE_TB work.glbl
vsim -L unisims_ver work.aurora_link_SAMPLE_TB work.glbl
view wave
do example_wave.do

run 25us
