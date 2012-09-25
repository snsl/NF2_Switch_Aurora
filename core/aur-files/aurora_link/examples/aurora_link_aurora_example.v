///////////////////////////////////////////////////////////////////////////////
//
//      Project:  Aurora Module Generator version 2.9
//
//         Date:  $Date: 2008/01/09 06:45:35 $
//          Tag:  $Name: i+IP+138572 $
//         File:  $RCSfile: aurora_example.ejava,v $
//          Rev:  $Revision: 1.1.2.3 $
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
//  AURORA_SAMPLE
//
//  Aurora Generator
//
//
//  Description: Sample Instantiation of a 1 2-byte lane module.
//               Only tests initialization in hardware.
//
//  Note:  This example design is intended for use on a Xilinx ML321
//         prototyping Board which contains an XC2VP7 part.  Aurora
//         configurations that are too large to fit within this part
//         cannot use this example design as is.  If you wish to use
//         this design with larger configurations of Aurora or with
//         a custom board, you must modify this source file and the
//         aurora_example.ucf file as needed.
//         

`timescale 1 ns / 10 ps

module aurora_link_aurora_example 
(
    // User IO
    RESET,
    HARD_ERROR,
    SOFT_ERROR,
    FRAME_ERROR,
    ERROR_COUNT,
    LANE_UP,
    CHANNEL_UP,


    TOP_REF_CLK_P,
    TOP_REF_CLK_N,



    // MGT I/O
    RXP,
    RXN,

    TXP,
    TXN

);

//********************************Parameter Declarations*****************************

    parameter       EXTEND_WATCHDOGS = 0;
    
    
//***********************************Port Declarations*******************************

    // User I/O
    input              RESET;

    output             HARD_ERROR;
    output             SOFT_ERROR;
    output             FRAME_ERROR;
    output  [0:7]      ERROR_COUNT;
    output             LANE_UP;
    output             CHANNEL_UP;


    // Clocks
    input              TOP_REF_CLK_P;
    input              TOP_REF_CLK_N;



    // MGT I/O
    input              RXP;
    input              RXN;

    output             TXP;
    output             TXN;


//**************************External Register Declarations****************************

    reg                HARD_ERROR;
    reg                SOFT_ERROR;
    reg                FRAME_ERROR;
    reg                LANE_UP;
    reg                CHANNEL_UP;
    reg     [0:7]      ERROR_COUNT;


//**************************Internal Register Declarations****************************

    reg     [0:3]      reset_debounce_r;


//********************************Wire Declarations**********************************
    wire   [255:0]    ila_data_i;
    wire   [35:0]     icon_ila_i;

    // LocalLink TX Interface
    wire    [0:15]     tx_d_i;
    wire               tx_rem_i;
    wire               tx_src_rdy_n_i;
    wire               tx_sof_n_i;
    wire               tx_eof_n_i;

    wire               tx_dst_rdy_n_i;


    // LocalLink RX Interface
    wire    [0:15]     rx_d_i;
    wire               rx_rem_i;
    wire               rx_src_rdy_n_i;
    wire               rx_sof_n_i;
    wire               rx_eof_n_i;






    // MGT Reference Clock Interface
    wire               top_REF_CLK_i;



    // Error Detection Interface
    wire               hard_error_i;
    wire               soft_error_i;
    wire               frame_error_i;


    // Status
    wire               channel_up_i;
    wire               lane_up_i;


    // Clock Compensation Control Interface
    wire               warn_cc_i;
    wire               do_cc_i;


    // System Interface
    wire               dcm_not_locked_i;
    wire               user_clk_i;
    wire               reset_i;
    wire               power_down_i;
    wire    [0:1]      loopback_i;



    //Frame check signals
    wire    [0:7]      error_count_i; 
    wire               test_reset_i;



//*********************************Main Body of Code**********************************



    //_______________________________Clock Buffers_________________________________
    // Differential Clock Buffers for top clock input.
    IBUFGDS_LVDS_25  diff_clk_buff_top_i
    (
        .I(TOP_REF_CLK_P),
        .IB(TOP_REF_CLK_N),
        .O(top_REF_CLK_i)
    );




    // Bufg used to drive user clk on global clock net.
    BUFG  user_clock_bufg_i
    (
        .I(top_REF_CLK_i),
        .O(user_clk_i)
    );





    //____________________________Register User I/O___________________________________

    // Register User Outputs from core.
    always @(posedge user_clk_i)
    begin
        HARD_ERROR      <=  hard_error_i;
        SOFT_ERROR      <=  soft_error_i;
        FRAME_ERROR     <=  frame_error_i;
        LANE_UP         <=  lane_up_i;
        CHANNEL_UP      <=  channel_up_i;
        ERROR_COUNT     <=  error_count_i;
    end



    //____________________________Tie off unused signals_______________________________







    // System Interface
    assign  dcm_not_locked_i    =   1'b0;
    assign  power_down_i        =   1'b0;
    assign  loopback_i          =   2'b00;


    //_____________________________Debounce the Reset signal___________________________


    // Simple Debouncer for Reset button
    always @(posedge user_clk_i)
        reset_debounce_r    <=  {RESET,reset_debounce_r[0:2]};



    assign  reset_i =   &reset_debounce_r;



    //___________________________Module Instantiations_________________________________


    defparam aurora_link_aurora_module_i.EXTEND_WATCHDOGS = EXTEND_WATCHDOGS;
    aurora_link aurora_link_aurora_module_i
    (
        // LocalLink TX Interface
        .TX_D(tx_d_i),
        .TX_REM(tx_rem_i),
        .TX_SRC_RDY_N(tx_src_rdy_n_i),
        .TX_SOF_N(tx_sof_n_i),
        .TX_EOF_N(tx_eof_n_i),

        .TX_DST_RDY_N(tx_dst_rdy_n_i),


        // LocalLink RX Interface
        .RX_D(rx_d_i),
        .RX_REM(rx_rem_i),
        .RX_SRC_RDY_N(rx_src_rdy_n_i),
        .RX_SOF_N(rx_sof_n_i),
        .RX_EOF_N(rx_eof_n_i),




        // MGT Serial I/O
        .RXP(RXP),
        .RXN(RXN),

        .TXP(TXP),
        .TXN(TXN),


        // MGT Reference Clock Interface
        .TOP_REF_CLK(top_REF_CLK_i),

        // Error Detection Interface
        .HARD_ERROR(hard_error_i),
        .SOFT_ERROR(soft_error_i),
        .FRAME_ERROR(frame_error_i),


        // Status
        .CHANNEL_UP(channel_up_i),
        .LANE_UP(lane_up_i),


        // Clock Compensation Control Interface
        .WARN_CC(warn_cc_i),
        .DO_CC(do_cc_i),


        // System Interface
        .DCM_NOT_LOCKED(dcm_not_locked_i),
        .USER_CLK(user_clk_i),
        .RESET(reset_i),
        .POWER_DOWN(power_down_i),
        .LOOPBACK(loopback_i)
    );


    aurora_link_STANDARD_CC_MODULE aurora_link_standard_cc_module_i
    (
        .RESET(reset_i),
        // Clock Compensation Control Interface
        .WARN_CC(warn_cc_i),
        .DO_CC(do_cc_i),


        // System Interface
        .DCM_NOT_LOCKED(dcm_not_locked_i),
        .USER_CLK(user_clk_i)

    );
    
    
    //Use one of the lane up signals to reset the frame generator and
    //frame checker
    assign test_reset_i = !lane_up_i;
    
    //Connect a frame generator to the TX User interface
    aurora_link_FRAME_GEN aurora_link_frame_gen_i
    (
        // User Interface
        .TX_D(tx_d_i),  
        .TX_REM(tx_rem_i),     
        .TX_SOF_N(tx_sof_n_i),       
        .TX_EOF_N(tx_eof_n_i),
        .TX_SRC_RDY_N(tx_src_rdy_n_i),
        .TX_DST_RDY_N(tx_dst_rdy_n_i),

        // System Interface
        .USER_CLK(user_clk_i),       
        .RESET(test_reset_i)
    );
    
    
    aurora_link_FRAME_CHECK aurora_link_frame_check_i
    (
        // User Interface
        .RX_D(rx_d_i),  
        .RX_REM(rx_rem_i),     
        .RX_SOF_N(rx_sof_n_i),       
        .RX_EOF_N(rx_eof_n_i),
        .RX_SRC_RDY_N(rx_src_rdy_n_i),  

        // System Interface
        .USER_CLK(user_clk_i),       
        .RESET(test_reset_i),
        .ERROR_COUNT(error_count_i)
    );
    
endmodule

