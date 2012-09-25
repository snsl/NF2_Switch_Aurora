///////////////////////////////////////////////////////////////////////////////
//
//      Project:  Aurora Module Generator version 2.9
//
//         Date:  $Date: 2007/10/04 04:15:08 $
//          Tag:  $Name: i+IP+138572 $
//         File:  $RCSfile: aurora_example_tb.ejava,v $
//          Rev:  $Revision: 1.1.2.1 $
//
//      Company:  Xilinx
//
//   Disclaimer:  XILINX IS PROVIDING THIS DESIGN, CODE, OR
//                INFORMATION "AS IS" SOLELY FOR USE IN DEVELOPING
//                PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY
//                PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
//                ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,
//                APPLICATION OR STANDARD, XILINX IS MAKING NO
//                REPRESENTATION THAT THIS IMPLEMENTATION IS FREE
//                FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE
//                RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY
//                REQUIRE FOR YOUR IMPLEMENTATION.  XILINX
//                EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH
//                RESPECT TO THE ADEQUACY OF THE IMPLEMENTATION,
//                INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR
//                REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
//                FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES
//                OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
//                PURPOSE.
//
//                (c) Copyright 2004 Xilinx, Inc.
//                All rights reserved.
//
///////////////////////////////////////////////////////////////////////////////
//
//  SAMPLE_TB
//
//  Aurora Generator
//
//
//  Description:  This testbench instantiates 2 Aurora Sample Modules. The serial TX pins from  
//                one module are connected to the RX pins of the other and vice versa. A simple Local-Link
//                frame generator is used to generate packets for the TX data interface while a frame checker
//                module is connected to the RX data interface to check the incoming frames and keep 
//                track of any errors.
//
//         

`timescale 1 ns / 10 ps

module aurora_link_SAMPLE_TB;

//*************************Parameter Declarations**************************

    parameter       CLOCKPERIOD_1 = 8.0;
    parameter       CLOCKPERIOD_2 = 8.0;
  

//************************Internal Register Declarations*****************************

    //Freerunning Clock
    reg                reference_clk_1_n_r;
    reg                reference_clk_2_n_r;

    //Global signals
    reg                gsr_r;
    reg                gts_r;
    reg                reset_i;
    

//********************************Wire Declarations**********************************
    
    //Freerunning Clock         
    wire               reference_clk_1_p_r;
    wire               reference_clk_2_p_r;          

//Dut1

    //Error Detection Interface
    wire               hard_error_1_i;        
    wire               soft_error_1_i;        
    wire               frame_error_1_i;        

    //Status 
    wire               channel_up_1_i;        
    wire               lane_up_1_i;


    //MGT Serial I/O
    wire               rxp_1_i; 
    wire               rxn_1_i; 
    
    wire               txp_1_i; 
    wire               txn_1_i; 

    // Error signals from the Local Link packet checker
    wire    [0:7]      error_count_1_i; 


//Dut2

    //Error Detection Interface
    wire               hard_error_2_i;        
    wire               soft_error_2_i;        
    wire               frame_error_2_i;        

    //Status 
    wire               channel_up_2_i;        
    wire               lane_up_2_i;


    //MGT Serial I/O
    wire               rxp_2_i; 
    wire               rxn_2_i; 
    
    wire               txp_2_i; 
    wire               txn_2_i; 

    // Error signals from the Local Link packet checker
    wire    [0:7]      error_count_2_i; 

//*********************************Main Body of Code**********************************


    //_________________________MGT Serial Connections________________
   

    assign   rxn_1_i      =    txn_2_i;
    assign   rxp_1_i      =    txp_2_i;
    assign   rxn_2_i      =    txn_1_i;
    assign   rxp_2_i      =    txp_1_i;
    
   
    //__________________________Global Signals_____________________________
    
    //Simultate the global reset that occurs after configuration at the beginning
    //of the simulation. Note that both MGT swift models use the same global signals.
    assign glbl.GSR = gsr_r;
    assign glbl.GTS = gts_r;

    initial
        begin
            gts_r = 1'b0;        
            gsr_r = 1'b1;
            #(16*CLOCKPERIOD_1);
            gsr_r = 1'b0;
    end


    //____________________________Clocks____________________________

    initial
        reference_clk_1_n_r = 1'b0;


    always  
        #(CLOCKPERIOD_1 / 2) reference_clk_1_n_r = !reference_clk_1_n_r;

    assign reference_clk_1_p_r = !reference_clk_1_n_r;



    initial
        reference_clk_2_n_r = 1'b0;


    always  
        #(CLOCKPERIOD_2 / 2) reference_clk_2_n_r = !reference_clk_2_n_r;

    assign reference_clk_2_p_r = !reference_clk_2_n_r;



    
    initial
    begin
        reset_i = 1'b1;
        #45 reset_i = 1'b0;
    end


    //________________________Instantiate Dut 1 ________________

defparam aurora_link_aurora_example_1_i.EXTEND_WATCHDOGS = 0;
aurora_link_aurora_example aurora_link_aurora_example_1_i
(
    // User IO
    .RESET(reset_i),
    // Error signals from Aurora    
    .HARD_ERROR(hard_error_1_i),
    .SOFT_ERROR(soft_error_1_i),
    .FRAME_ERROR((frame_error_1_i)),

    // Status Signals
    .LANE_UP(lane_up_1_i),
    .CHANNEL_UP(channel_up_1_i),


    // Clock Signals
    .TOP_REF_CLK_P(reference_clk_1_p_r),
    .TOP_REF_CLK_N(reference_clk_1_n_r),


    // MGT I/O
    .RXP(rxp_1_i),
    .RXN(rxn_1_i),

    .TXP(txp_1_i),
    .TXN(txn_1_i),

    // Error signals from the Local Link packet checker
    .ERROR_COUNT(error_count_1_i)
);

    //________________________Instantiate Dut 2 ________________

defparam aurora_link_aurora_example_2_i.EXTEND_WATCHDOGS = 0;
aurora_link_aurora_example aurora_link_aurora_example_2_i
(
    // User IO
    .RESET(reset_i),
    // Error signals from Aurora    
    .HARD_ERROR(hard_error_2_i),
    .SOFT_ERROR(soft_error_2_i),
    .FRAME_ERROR((frame_error_2_i)),

    // Status Signals
    .LANE_UP(lane_up_2_i),
    .CHANNEL_UP(channel_up_2_i),


    // Clock Signals
    .TOP_REF_CLK_P(reference_clk_2_p_r),
    .TOP_REF_CLK_N(reference_clk_2_n_r),


    // MGT I/O
    .RXP(rxp_2_i),
    .RXN(rxn_2_i),

    .TXP(txp_2_i),
    .TXN(txn_2_i),

    // Error signals from the Local Link packet checker
    .ERROR_COUNT(error_count_2_i)
);

 

endmodule
