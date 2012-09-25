///////////////////////////////////////////////////////////////////////////////
//
//      Project:  Aurora Module Generator version 2.9
//
//         Date:  $Date: 2007/10/04 04:15:29 $
//          Tag:  $Name: i+IP+138572 $
//         File:  $RCSfile: tx_ll_control.ejava,v $
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
//  TX_LL_CONTROL
//
//
//  Description: This module provides the transmitter state machine
//               control logic to connect the LocalLink interface to
//               the Aurora Channel.
//
//               This module supports 1 2-byte lane designs
//

`timescale 1 ns / 10 ps

module  aurora_link_TX_LL_CONTROL
(
    // LocalLink PDU Interface
    TX_SRC_RDY_N,
    TX_SOF_N,
    TX_EOF_N,
    TX_REM,

    TX_DST_RDY_N,


    // Clock Compensation Interface
    WARN_CC,
    DO_CC,


    // Global Logic Interface
    CHANNEL_UP,


    // TX_LL Control Module Interface
    HALT_C,


    // Aurora Lane Interface
    GEN_SCP,
    GEN_ECP,
    GEN_CC,


    // System Interface
    USER_CLK

);

`define DLY #1


//***********************************Port Declarations*******************************


    // LocalLink PDU Interface
    input              TX_SRC_RDY_N;
    input              TX_SOF_N;
    input              TX_EOF_N;
    input              TX_REM;

    output             TX_DST_RDY_N;




    // Clock Compensation Interface
    input              WARN_CC;
    input              DO_CC;


    // Global Logic Interface
    input              CHANNEL_UP;

    // TX_LL Control Module Interface
    output             HALT_C;

    // Aurora Lane Interface
    output             GEN_SCP;
    output             GEN_ECP;
    output             GEN_CC;


    // System Interface
    input              USER_CLK;



//**************************External Register Declarations****************************

    reg                TX_DST_RDY_N;
    reg                GEN_SCP;
    reg                GEN_ECP;


//**************************Internal Register Declarations****************************

    reg                do_cc_r;
    reg                warn_cc_r;

    reg                idle_r;
    reg                sof_r;
    reg                sof_data_eof_1_r;
    reg                sof_data_eof_2_r;
    reg                sof_data_eof_3_r;
    reg                data_r;
    reg                data_eof_1_r;
    reg                data_eof_2_r;
    reg                data_eof_3_r;





//*********************************Wire Declarations**********************************

    wire               next_idle_c;
    wire               next_sof_c;
    wire               next_sof_data_eof_1_c;
    wire               next_sof_data_eof_2_c;
    wire               next_sof_data_eof_3_c;
    wire               next_data_c;
    wire               next_data_eof_1_c;
    wire               next_data_eof_2_c;
    wire               next_data_eof_3_c;



    wire               tx_dst_rdy_n_c;
    wire               do_sof_c;
    wire               do_eof_c;
    wire               channel_full_c;
    wire               pdu_ok_c;


//*********************************Main Body of Code**********************************


    //___________________________Clock Compensation________________________________


    // Register the DO_CC and WARN_CC signals for internal use.  Note that the raw DO_CC
    // signal is used for some logic so the DO_CC signal should be driven directly
    // from a register whenever possible.

    always @(posedge USER_CLK)
        if(!CHANNEL_UP)     do_cc_r <=  `DLY    1'b0;
        else                do_cc_r <=  `DLY    DO_CC;


    always @(posedge USER_CLK)
        if(!CHANNEL_UP)     warn_cc_r   <=  `DLY    1'b0;
        else                warn_cc_r   <=  `DLY    WARN_CC;






    //_____________________________PDU State Machine__________________________________

    // The PDU state machine handles the encapsulation and transmission of user
    // PDUs.  It can use the channel when there is no CC, NFC message, UFC header,
    // UFC message or remote NFC request.





    // State Registers
    always @(posedge USER_CLK)
        if(!CHANNEL_UP)
        begin
            idle_r              <=  `DLY    1'b1;
            sof_r               <=  `DLY    1'b0;
            sof_data_eof_1_r    <=  `DLY    1'b0;
            sof_data_eof_2_r    <=  `DLY    1'b0;
            sof_data_eof_3_r    <=  `DLY    1'b0;
            data_r              <=  `DLY    1'b0;
            data_eof_1_r        <=  `DLY    1'b0;
            data_eof_2_r        <=  `DLY    1'b0;
            data_eof_3_r        <=  `DLY    1'b0;
        end
        else if(pdu_ok_c)
        begin
            idle_r              <=  `DLY    next_idle_c;
            sof_r               <=  `DLY    next_sof_c;
            sof_data_eof_1_r    <=  `DLY    next_sof_data_eof_1_c;
            sof_data_eof_2_r    <=  `DLY    next_sof_data_eof_2_c;
            sof_data_eof_3_r    <=  `DLY    next_sof_data_eof_3_c;
            data_r              <=  `DLY    next_data_c;
            data_eof_1_r        <=  `DLY    next_data_eof_1_c;
            data_eof_2_r        <=  `DLY    next_data_eof_2_c;
            data_eof_3_r        <=  `DLY    next_data_eof_3_c;
        end






    // Next State Logic
    assign  next_idle_c             =   (idle_r & !do_sof_c) |
                                        (sof_data_eof_3_r & !do_sof_c) |
                                        (data_eof_3_r & !do_sof_c );



    assign  next_sof_c              =   (idle_r & do_sof_c & !do_eof_c) |
                                        (sof_data_eof_3_r & do_sof_c & !do_eof_c) |
                                        (data_eof_3_r & do_sof_c & !do_eof_c);



    assign  next_data_c             =   (sof_r & !do_eof_c ) |
                                        (data_r & !do_eof_c);


    assign  next_data_eof_1_c       =   (sof_r & do_eof_c) |
                                        (data_r & do_eof_c);


    assign  next_data_eof_2_c       =   data_eof_1_r;


    assign  next_data_eof_3_c       =   data_eof_2_r;


    assign  next_sof_data_eof_1_c   =   (idle_r & do_sof_c & do_eof_c)|
                                        (sof_data_eof_3_r & do_sof_c & do_eof_c)|
                                        (data_eof_3_r & do_sof_c & do_eof_c);


    assign  next_sof_data_eof_2_c   =   sof_data_eof_1_r;


    assign  next_sof_data_eof_3_c   =   sof_data_eof_2_r;



    // Generate an SCP character when the PDU state machine is active and in an SOF state.
    always @(posedge USER_CLK)
        if(!CHANNEL_UP) GEN_SCP <=  `DLY    1'b0;
        else            GEN_SCP <=  `DLY    ((sof_r | sof_data_eof_1_r) & pdu_ok_c);


    // Generate an ECP character when the PDU state machine is active and in and EOF state.
    always @(posedge USER_CLK)
        if(!CHANNEL_UP) GEN_ECP <=  `DLY    1'b0;
        else            GEN_ECP <=  `DLY    (data_eof_3_r | sof_data_eof_3_r) & pdu_ok_c;



    assign  tx_dst_rdy_n_c  =   (next_sof_data_eof_1_c & pdu_ok_c) |
                                sof_data_eof_1_r |
                                (next_data_eof_1_c & pdu_ok_c) |
                                DO_CC  |
                                data_eof_1_r|
                                (data_eof_2_r && !pdu_ok_c) |
                                (sof_data_eof_2_r && !pdu_ok_c);














    // The flops for the GEN_CC signal are replicated for timing and instantiated to allow us
    // to set their value reliably on powerup.
    FDR gen_cc_flop_0_i
    (
        .D(do_cc_r),
        .C(USER_CLK),
        .R(~CHANNEL_UP),
        .Q(GEN_CC)
    );
















    // The TX_DST_RDY_N signal is registered.
    always @(posedge USER_CLK)
        if(!CHANNEL_UP)     TX_DST_RDY_N    <=  `DLY    1'b1;
        else                TX_DST_RDY_N    <=  `DLY    tx_dst_rdy_n_c;








    // Helper Logic
    
    
    
    // SOF requests are valid when TX_SRC_RDY_N, TX_DST_RDY_N and TX_SOF_N are all asserted
    assign  do_sof_c                =   !TX_SRC_RDY_N &
                                        !TX_DST_RDY_N &
                                        !TX_SOF_N;


    // EOF requests are valid when TX_SRC_RDY_N, TX_DST_RDY_N and TX_EOF_N are all asserted
    assign  do_eof_c                =   !TX_SRC_RDY_N &
                                        !TX_DST_RDY_N &
                                        !TX_EOF_N;
    
    
    
    
    
    



    // Freeze the PDU state machine when CCs must be handled.
    assign  pdu_ok_c                =   !do_cc_r;


    // Halt the flow of data through the datastream when the PDU state machine is frozen.
    assign  HALT_C                  =   !pdu_ok_c;






    // The aurora channel is 'full' if there is more than enough data to fit into
    // a channel that is already carrying an SCP and an ECP character.
    assign  channel_full_c          =   1'b1;

endmodule
