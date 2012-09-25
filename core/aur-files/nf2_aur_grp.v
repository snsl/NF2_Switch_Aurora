///////////////////////////////////////////////////////////////////////////////
// vim:set shiftwidth=3 softtabstop=3 expandtab:
// $Id: nf2_mac_grp.v 3132 2007-12-13 00:27:33Z jnaous $
//
// Module: nf2_aur_grp.v
// Project: NetFPGA Rev 2.1
// Description: Upper level module that instantiates the SATA FIFOs
//
///////////////////////////////////////////////////////////////////////////////

/*-----------------------*/
  module nf2_aur_grp
    #(parameter DATA_WIDTH = 64,
      parameter CTRL_WIDTH=DATA_WIDTH/8,
      parameter ENABLE_HEADER = 0,
      parameter STAGE_NUMBER = 'hff,
      parameter PORT_NUMBER = 0
      )

   (    
    
    // --- output to data path interface
    output [DATA_WIDTH-1:0]              out_data,
    output [CTRL_WIDTH-1:0]              out_ctrl,
    output                               out_wr,
    input                                out_rdy,
    
    // --- input from data path interface
   input  [DATA_WIDTH-1:0]              in_data,
   input  [CTRL_WIDTH-1:0]              in_ctrl,
   input                                in_wr,
   output                               in_rdy,
    
    // --- pins
    output  serial_TXP_0,
    output  serial_TXN_0,
    input   serial_RXP_0,
    input   serial_RXN_0,
	
//chipscope
 //   output [3:0]                         aurtxpcount,
	 output [9:0]                        aurrxoutcount,
	 
    //--- misc
	 input        aurclk,
	 input        userclk,
    input        clk,
    input        reset
     
	 );


   wire          tx_rem_i;
   wire          tx_src_rdy_n_i;     

   wire [0:15]     tx_d_i;
   wire           tx_dst_rdy_n_i;
   wire           rx_pkt_pulled;
   wire           sop_t;
   wire           eop_t;
   wire           hard_error_i;
   wire           soft_error_i;
   wire           frame_error_i;
   wire           channel_up_i;
   wire           lane_up_i;
   wire           warn_cc_i;
   wire           do_cc_i;
   wire           dcm_not_locked_i;
   wire           power_down_i;
   wire  [0:1]    loopback_i;
   wire [15:0]    rxd_rxd;
   wire           rem_rem;
   wire           srcrdy_srcrdy;
   wire           sof_sof;
   wire           eof_eof;
	//chipscope

   wire           gnd;
	 
	
    assign  dcm_not_locked_i    =   0;
    assign  power_down_i        =   1'b0;
    assign  loopback_i          =   2'b00;
    assign  gnd                 =   0;


  aurora_link aurora_201_aurora_module_i
    (
        // LocalLink TX Interface
        .TX_D(tx_d_i),
        .TX_REM(tx_rem_i),
        .TX_SRC_RDY_N(tx_src_rdy_n_i),
        .TX_SOF_N(sop_t),
        .TX_EOF_N(eop_t),

        .TX_DST_RDY_N(tx_dst_rdy_n_i),


        // LocalLink RX Interface
        .RX_D(rxd_rxd),
        .RX_REM(rem_rem),
        .RX_SRC_RDY_N(srcrdy_srcrdy),
        .RX_SOF_N(sof_sof),
        .RX_EOF_N(eof_eof),
      
        
        // MGT Serial I/O
        .RXP(serial_RXP_0),
        .RXN(serial_RXN_0),

        .TXP(serial_TXP_0),
        .TXN(serial_TXN_0),


        // MGT Reference Clock Interface
        .TOP_REF_CLK(aurclk),

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
        .USER_CLK(userclk),
        .RESET(reset),
        .POWER_DOWN(gnd),
        .LOOPBACK(loopback_i)
    );


    aurora_link_STANDARD_CC_MODULE aurora_201_standard_cc_module_i
    (
        // Clock Compensation Control Interface
        .WARN_CC(warn_cc_i),
        .DO_CC(do_cc_i),


        // System Interface
        .DCM_NOT_LOCKED(dcm_not_locked_i),
        .USER_CLK(userclk),
        .RESET(reset)

    );
  

   rx_queue_aur
     #(.DATA_WIDTH(DATA_WIDTH),
       .CTRL_WIDTH(CTRL_WIDTH),
       .ENABLE_HEADER(ENABLE_HEADER),
       .STAGE_NUMBER(STAGE_NUMBER),
       .PORT_NUMBER(PORT_NUMBER)
       ) rx_queue_aur
     (// data path interface
      .out_ctrl                         (out_ctrl),
      .out_wr                           (out_wr),
      .out_data                         (out_data),
      .out_rdy                          (out_rdy),
      // gmac interface
      .gmac_rx_data                     (rxd_rxd),
      .gmac_rx_dvld                     (srcrdy_srcrdy),
      .gmac_rx_goodframe                (frame_error_i),
      .gmac_rx_badframe                 (hard_error_i),
      .sop_rx                           (sof_sof),  
      .eop_rx                           (eof_eof),
      .eop_rem                          (rem_rem),
		
		//chipscope
		.aurrxoutcount                    (aurrxoutcount),
	 
      // misc
      .reset                            (reset),
      .clk                              (clk),
      .rxcoreclk                        (userclk) );

   tx_queue_aur
     #(.DATA_WIDTH(DATA_WIDTH),
       .CTRL_WIDTH(CTRL_WIDTH),
       .ENABLE_HEADER(ENABLE_HEADER),
       .STAGE_NUMBER(STAGE_NUMBER)
       ) tx_queue_aur
     (// data path interface
      .in_ctrl                          (in_ctrl),
      .in_wr                            (in_wr),
      .in_data                          (in_data),
      .in_rdy                           (in_rdy),
      // gmac interface
      .gmac_tx_data                     (tx_d_i),
      .gmac_tx_dvld                     (tx_src_rdy_n_i),
      .gmac_tx_ack                      (tx_dst_rdy_n_i),
      .sop                              (sop_t),
      .eop                              (eop_t),
      .eoprem                           (tx_rem_i),
      //chipscope
	//	.aurtxpcount                      (aurtxpcount),
      // misc
      .reset                            (reset),
      .clk                              (clk),
      .txcoreclk                        (userclk));
		
	
 
endmodule // nf2_aur_grp