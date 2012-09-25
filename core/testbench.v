//////////////////////////////////////////////////////////////////////////////
// $Id: testbench.v 4236 2008-07-03 08:02:47Z grg $
//
// Module: testbench.v
// Project: NF2 User board testbench
// Description: Instantiates the NF2 User board  and runs a test.
//
///////////////////////////////////////////////////////////////////////////////
`include "global_defines.v"
`include "NF_2.1_defines.v"
`include "registers.v"
`timescale 1 ns/1 ns
  
///////////////////////////////////////////////////////////////////////
// vim:set shiftwidth=3 softtabstop=3 expandtab:
// $Id: nf2_mac_grp.v 3132 2007-12-13 00:27:33Z jnaous $
//
// Module: nf2_mac_grp.v
// Project: NetFPGA Rev 2.1
// Description: Upper level module that instantiates the MAC FIFOs
//
///////////////////////////////////////////////////////////////////////////////
  

module testbench();

    // User I/O
    reg	RESET;
     

        
    // Clocks
    reg clk;
    reg gtxclk;
	 reg cpci_clk;
	 
	 
wire [31:0] pkt_size;	 
wire [31:0] pkt_size2;
reg [7:0] packet_memory[0:2047];
reg [7:0] packet_memory2[0:2047];

// wire flowtotb;
// wire rgmii_rx_ctl_fc;



    
    initial 
      begin 
        // XUP V2P board
	RESET = 1'b1;
        #200; 
        RESET = 1'b0;
      end

   

    initial
      begin
        gtxclk = 1'b0;
        forever #4 gtxclk = ~gtxclk;
        end

    initial
      begin
        clk = 1'b0;
        forever #4 clk = ~clk;
      end

   initial
      begin
        cpci_clk = 1'b0;
        forever #8 cpci_clk = ~cpci_clk;
      end
 
/* 
 reg   [0:63]    tx_data[0:11]; 
 always @(posedge clk) begin
  tx_data[0] = 64'h 1234432112344321;
  tx_data[1] = 64'h 5566778881000800;
  tx_data[2] = 64'h 99aabbcc99aabbcc;
  tx_data[3] = 64'h 11aa33bb44cc55dd;
  tx_data[4] = 64'h 1234432112344321;
  tx_data[5] = 64'h 5566778881000800;
  tx_data[6] = 64'h 99aabbcc99aabbcc;
  tx_data[7] = 64'h 11aa33bb44cc55dd;
  tx_data[8] = 64'h 1234432112344321;
  tx_data[9] = 64'h 5566778881000800;
  tx_data[10] = 64'h 99aabbcc99aabbcc;
  tx_data[11] = 64'h 1234432112344321;
    
  end
  
 wire [7:0]    mac_data[0:95]; 
  
generate
 genvar i,j;


 for (j=0;j<12;j=j+1) begin:swapout
     for(i=0;i<8;i=i+1)
	  begin:swap
	  assign  mac_data[(8*j)+i][7:0] = tx_data[j][8*i:8*i+7];
	  end
 end
 endgenerate  */
 
 
 reg         rgmii_rx_ctl;
 reg   [3:0] rgmii_rx_d;
 
 reg [31:0] crc_table [0:255];

task gen_crc_table;
      reg [31:0] c;
      integer n, k;
      begin
	 for (n = 0; n < 256; n = n + 1) begin
	    c = n;
	    for (k = 0; k < 8; k = k + 1) begin
	       if (c & 1)
		 c = 32'hedb88320 ^ (c >> 1);
	       else
		 c = c >> 1;
	    end
	    crc_table[n] = c;
	 end
      end
endtask // gen_crc_table


// ==================================================================
// CRC generation function. 
// You should invert CRC when finished.
// e.g.:  crc = update_crc(32'hffffffff,len)^32'hffffffff;

function [31:0]  update_crc;
      input [31:0]crc;
      input [31:0] len;
      reg [31:0] c;
      integer i, n;
      begin
	 c = crc;
	 for (n = 0; n < 2044; n = n + 1) begin
	    i = ( c ^ packet_memory[n] ) & 8'hff;
	    c = crc_table[i] ^ (c >> 8);
	 end
	 update_crc = c;
      end
endfunction // update_crc

  reg [31:0] crc;
		
    

		
		
	  
task send_rgmii_rx_pkt;

  //    input [5:0] pkt_size_w_crc;   // number of bytes to send. (incl CRC)
      reg [7:0] pkt[0:2047];

      integer i;

      begin
		gen_pkt;
	 for (i=0 ; i<2048 ; i=i+1) pkt[i] = packet_memory[i];

		
		 //$display("Sending pkt len %0d (incl crc)", pkt_size_w_crc);
	 // Preamble and SFD: 7 bytes of 0x55 and then 1 byte of 0xD5
	 @(negedge clk) #1 rgmii_rx_ctl = 1;
	 rgmii_rx_d = 4'h5;
	 for (i=0 ; i<15 ; i=i+1) @(negedge clk or posedge clk) begin end
	 #1 rgmii_rx_d = 4'hd;
	 @(negedge clk) begin end

	 // send pkt data
	 for (i=0 ; i<2048 ; i=i+1) begin
	    #1;
	    rgmii_rx_d = pkt[i][3:0];
	    @(posedge clk) begin end

	    #1 
            rgmii_rx_d = pkt[i][7:4];
	    @(negedge clk) begin end
	 end
	 #1 rgmii_rx_ctl = 0;
	 rgmii_rx_d = 'h0;
	    
      end
   endtask // send_rgmii_rx_pkt	

wire [7:0] pkt_num;
assign pkt_num=8'h60;


assign pkt_size = 32'h7FC;

task gen_pkt;
integer i;
   reg [31:0] crc;
  
   begin
      if (crc_table[1] !== 32'h77073096) begin
	 $display("%t Building CRC table.", $time);
	 gen_crc_table;
      end
      

      // Bytes 1:0 are length (in bytes, excl CRC)0018f3efe77e
      packet_memory[0] = 8'h00;//8'h00;
      packet_memory[1] = 8'h17;//8'h18;
      // Bytes 3:2 are seq num provided
      packet_memory[2] = 8'h31;//8'hf3;
      packet_memory[3] = 8'heb;//8'hef;
		packet_memory[4] = 8'h1f;//8'he7;
      packet_memory[5] = 8'hcf;//8'h7e;
		
		packet_memory[6] = 8'h70;
      packet_memory[7] = 8'h70;
      // Bytes 3:2 are seq num provided
      packet_memory[8] = 8'h70;
      packet_memory[9] = 8'h70;
		packet_memory[10] = 8'h70;
      packet_memory[11] = 8'h70;
      // the rest is just data
      for (i=12;i<pkt_size;i=i+1) begin
	 packet_memory[i] = ((i[7:0]+1) ^  pkt_num[7:0]);
      end

      // BUT!!! we need to put in a valid Ethertype
      packet_memory[12] = 8'h81;
      packet_memory[13] = 8'h00;
      packet_memory[16] = 8'h08;
      packet_memory[17] = 8'h00;
                                                                                                                   
      // clear bytes for CRC
      for (i=2044;i<2048;i=i+1) begin
	 packet_memory[i] = 8'h0;
      end
      crc = update_crc(32'hffffffff,pkt_size)^32'hffffffff;

      $display("%t CRC for seq num %0d was %0x ", $time, pkt_num, crc);
      
      // corrupt CRC if requested.
      
      // insert CRC
      packet_memory[2044] = crc[7:0];
      packet_memory[2045] = crc[15:8];
      packet_memory[2046] = crc[23:16];
      packet_memory[2047] = crc[31:24];
   end
endtask // gen_pkt


task handle_ingress;	
integer i;

begin
for (i=0 ; i<1000000 ; i=i+1) begin
    
	 #1;
  		 
	send_rgmii_rx_pkt;
  
   #10;
   end
end	

endtask


initial
     begin
rgmii_rx_d = 4'h0;
rgmii_rx_ctl = 1'b0;
			  
#1000 handle_ingress;

  end	 


    wire   serial_TXP_0;
    wire   serial_TXN_0;
    wire    serial_RXP_0;
    wire    serial_RXN_0;  
	 
	wire [19:0] #1 sram1_addr;
   wire [35:0] #1 sram1_data;
   wire [3:0]  #1 sram1_bw;
   wire        #1 sram1_we;
   wire        #1 sram1_zz;

   wire [19:0] #1 sram2_addr;
   wire [35:0] #1 sram2_data;
   wire [3:0]  #1 sram2_bw;
   wire        #1 sram2_we;
   wire        #1 sram2_zz;  
	
	
	 reg          sram1_we_del;
   always @* #2 sram1_we_del = sram1_we;
   reg [3:0]    sram1_bw_del;
   always @* #2 sram1_bw_del = sram1_bw;
   reg [19:0]   sram1_addr_del;
   always @* #2 sram1_addr_del = sram1_addr;

   cy7c1370 sram1 (
                  .d      (sram1_data),
                  .clk    (clk),
                  .a      (sram1_addr_del[18:0]),
                  .bws    (sram1_bw_del),
                  .we_b   (sram1_we_del),
                  .adv_lb (1'b0),
                  .ce1b   (1'b0),
                  .ce2    (1'b1),
                  .ce3b   (1'b0),
                  .oeb    (1'b0),
                  .cenb   (1'b0),
                  .mode   (1'b0)   // dont care cos we dont burst
                  );
                                                                                           
   // ---- SRAM 2
   // add delays to avoid simulation errors.
   
   reg          sram2_we_del;
   always @* #2 sram2_we_del = sram2_we;
   reg [3:0]    sram2_bw_del;
   always @* #2 sram2_bw_del = sram2_bw;
   reg [19:0]   sram2_addr_del;
   always @* #2 sram2_addr_del = sram2_addr;

   cy7c1370 sram2 (
                  .d      (sram2_data),
                  .clk    (clk),
                  .a      (sram2_addr_del[18:0]),
                  .bws    (sram2_bw_del),
                  .we_b   (sram2_we_del),
                  .adv_lb (1'b0),
                  .ce1b   (1'b0),
                  .ce2    (1'b1),
                  .ce3b   (1'b0),
                  .oeb    (1'b0),
                  .cenb   (1'b0),
                  .mode   (1'b0)   // dont care cos we dont burst
                  );	
						
         wire [3:0] rgmii_0_tx_d;
		   wire       rgmii_0_tx_ctl; // 1 = tx_d is valid
		   wire       rgmii_0_tx_clk; // used in 1000 mode only
		//   wire        rgmii_0_rx_clk, // used in 10/100/1000 modes
		//   wire  [3:0] rgmii_0_rx_d,
		//   wire        rgmii_0_rx_ctl,
		   
		   wire [3:0] rgmii_1_tx_d;
		   wire       rgmii_1_tx_ctl; // 1 = tx_d is valid
		   wire       rgmii_1_tx_clk; // used in 1000 mode only
		   wire        rgmii_1_rx_clk; // used in 10/100/1000 modes
		   wire  [3:0] rgmii_1_rx_d;
		   wire        rgmii_1_rx_ctl;
		   
		   wire [3:0] rgmii_2_tx_d;
		   wire       rgmii_2_tx_ctl; // 1 = tx_d is valid
		   wire       rgmii_2_tx_clk; // used in 1000 mode only
		   wire        rgmii_2_rx_clk; // used in 10/100/1000 modes
		   wire  [3:0] rgmii_2_rx_d;
		   wire        rgmii_2_rx_ctl;
		   
		   wire [3:0] rgmii_3_tx_d;
		   wire       rgmii_3_tx_ctl; // 1 = tx_d is valid
		   wire       rgmii_3_tx_clk; // used in 1000 mode only
		   wire        rgmii_3_rx_clk; // used in 10/100/1000 modes
         wire  [3:0] rgmii_3_rx_d;
         wire        rgmii_3_rx_ctl;
                   
// always @* rgmii_0_rx_d = rgmii_rx_d;
// always @* rgmii_0_rx_ctl = rgmii_rx_ctl;
// always @* rgmii_0_rx_clk = clk;	

//assign rgmii_rx_ctl_fc = rgmii_rx_ctl && flowtotb;					

nf2_top  nf2_top1(           
        .rgmii_0_txd              (rgmii_0_tx_d),
        .rgmii_0_tx_ctl           (rgmii_0_tx_ctl),
        .rgmii_0_txc              (rgmii_0_tx_clk),
        .rgmii_0_rxd              (rgmii_rx_d),
        .rgmii_0_rx_ctl           (rgmii_rx_ctl),
        .rgmii_0_rxc              (clk),

        .rgmii_1_txd              (rgmii_1_tx_d),
        .rgmii_1_tx_ctl           (rgmii_1_tx_ctl),
        .rgmii_1_txc              (rgmii_1_tx_clk),
        .rgmii_1_rxd              (rgmii_1_rx_d),
        .rgmii_1_rx_ctl           (rgmii_1_rx_ctl),
        .rgmii_1_rxc              (rgmii_1_rx_clk),

        .rgmii_2_txd              (rgmii_2_tx_d),
        .rgmii_2_tx_ctl           (rgmii_2_tx_ctl),
        .rgmii_2_txc              (rgmii_2_tx_clk),
        .rgmii_2_rxd              (rgmii_2_rx_d),
        .rgmii_2_rx_ctl           (rgmii_2_rx_ctl),
        .rgmii_2_rxc              (rgmii_2_rx_clk),

        .rgmii_3_txd              (rgmii_3_tx_d),
        .rgmii_3_tx_ctl           (rgmii_3_tx_ctl),
        .rgmii_3_txc              (rgmii_3_tx_clk),
        .rgmii_3_rxd              (rgmii_3_rx_d),
        .rgmii_3_rx_ctl           (rgmii_3_rx_ctl),
        .rgmii_3_rxc              (rgmii_3_rx_clk),

    .gtx_clk         (gtxclk),    // common TX clk reference 125MHz.


    // DDR signals

    .ddr_clk_200     (),    
    .ddr_clk_200b    (),    

    .ddr2_odt0       (),    
    .ddr2_clk0       (),     
    .ddr2_clk0b      (),      
    .ddr2_clk1       (),      
    .ddr2_clk1b      (),       
    .ddr2_cke        (),      
    .ddr2_csb        (),      
    .ddr2_rasb       (),      
    .ddr2_casb       (),      
    .ddr2_web        (),      
    .ddr2_dm         (),      
    .ddr2_ba         (),      
    .ddr2_address    (),       
    .ddr2_dq         (),      
    .ddr2_dqs        (),      
    .ddr2_dqs_n      (),      
    .ddr2_rst_dqs_div_in  (),      
    .ddr2_rst_dqs_div_out (),               


    // CPCI interface and clock

    .cpci_clk         (cpci_clk),         // 62.5 MHz
    .cpci_rd_wr_L     (),         
    .cpci_req         (),         
    .cpci_addr        (),         
    .cpci_data        (),         
    .cpci_wr_rdy      (),         
    .cpci_rd_rdy      (),         
    .nf2_err          (),           // was cnet_err

    // synthesis attribute keep of nf2_err is "true";


    // ---- SRAM 1
    // Note: 1 extra address bit on sram
        .sram1_addr               (sram1_addr),
        .sram1_data               (sram1_data),
        .sram1_we                 (sram1_we),
        .sram1_bw                 (sram1_bw),
        .sram1_zz                 (sram1_zz),
        
        // ---- SRAM 2

        .sram2_addr               (sram2_addr),
        .sram2_data               (sram2_data),
        .sram2_we                 (sram2_we),
        .sram2_bw                 (sram2_bw),
        .sram2_zz                 (sram2_zz),      

    // --- CPCI DMA handshake signals 
    .dma_op_code_req  (),           
    .dma_op_queue_id  (),           
    .dma_op_code_ack  (),           
     
     // DMA data and flow control 
    .dma_vld_c2n      (),           
    .dma_vld_n2c      (),           
    .dma_data         (),           
    .dma_q_nearly_full_c2n  (),           
    .dma_q_nearly_full_n2c  (),            
     
    // --- CPCI Debug Data
                
    .cpci_debug_data  (),            
                
    // ---  MDC/MDIO PHY control signals

    .phy_mdc      (),           
    .phy_mdio     (),           

    //--- Debug bus (goes to LA connector)

    .debug_led    (),           
    .debug_data   (),           
    .debug_clk    (),           
    
    // --- Serial Pins

    .serial_TXP_0   (serial_TXP_0),           
    .serial_TXN_0   (serial_TXN_0),           
    .serial_RXP_0   (serial_RXP_0),           
    .serial_RXN_0   (serial_RXN_0),           

    .serial_TXP_1   (),           
    .serial_TXN_1   (),           
    .serial_RXP_1   (),           
    .serial_RXN_1   (),           

    // --- Spartan configuration pins
    .cpci_rp_done     (),           
    .cpci_rp_init_b   (),           
    .cpci_rp_cclk     (),           

    .cpci_rp_en       (),           
    .cpci_rp_prog_b   (),           
    .cpci_rp_din      (),           
     
    // core clock - must also be same as sram clock

    .core_clk    (clk), 
   	//simulation
		  //   .flowtotb           (flowtotb), 
    
    // Misc
    
    .nf2_reset   (RESET)               // driven by CPCI

    );
	 
//for nf2_top2	
	
 reg         rgmii_rx_ctl2;
 reg   [3:0] rgmii_rx_d2;
 
 reg [31:0] crc_table2 [0:255];

task gen_crc_table2;
      reg [31:0] d;
      integer n, k;
      begin
	 for (n = 0; n < 256; n = n + 1) begin
	    d = n;
	    for (k = 0; k < 8; k = k + 1) begin
	       if (d & 1)
		 d = 32'hedb88320 ^ (d >> 1);
	       else
		 d = d >> 1;
	    end
	    crc_table2[n] = d;
	 end
      end
endtask // gen_crc_table


// ==================================================================
// CRC generation function. 
// You should invert CRC when finished.
// e.g.:  crc = update_crc(32'hffffffff,len)^32'hffffffff;

function [31:0]  update_crc2;
      input [31:0]crc2;
      input [31:0] len2;
      reg [31:0] d;
      integer i, n;
      begin
	 d = crc2;
	 for (n = 0; n < 2044; n = n + 1) begin
	    i = ( d ^ packet_memory2[n] ) & 8'hff;
	    d = crc_table2[i] ^ (d >> 8);
	 end
	 update_crc2 = d;
      end
endfunction // update_crc

  reg [31:0] crc2;
		
    

		
		
	  
task send_rgmii_rx_pkt2;

  //    input [5:0] pkt_size_w_crc;   // number of bytes to send. (incl CRC)
      reg [7:0] pkt2[0:2047];

      integer i;

      begin
		gen_pkt2;
	 for (i=0 ; i<2048 ; i=i+1) pkt2[i] = packet_memory2[i];

		
		 //$display("Sending pkt len %0d (incl crc)", pkt_size_w_crc);
	 // Preamble and SFD: 7 bytes of 0x55 and then 1 byte of 0xD5
	 @(negedge clk) #1 rgmii_rx_ctl2 = 1;
	 rgmii_rx_d2 = 4'h5;
	 for (i=0 ; i<15 ; i=i+1) @(negedge clk or posedge clk) begin end
	 #1 rgmii_rx_d2 = 4'hd;
	 @(negedge clk) begin end

	 // send pkt data
	 for (i=0 ; i<2048 ; i=i+1) begin
	    #1;
	    rgmii_rx_d2 = pkt2[i][3:0];
	    @(posedge clk) begin end

	    #1 
            rgmii_rx_d2 = pkt2[i][7:4];
	    @(negedge clk) begin end
	 end
	 #1 rgmii_rx_ctl2 = 0;
	 rgmii_rx_d2 = 'h0;
	    
      end
   endtask // send_rgmii_rx_pkt	

wire [7:0] pkt_num2;
assign pkt_num2=8'h60;


assign pkt_size2 = 32'h7FC;

task gen_pkt2;

integer i;
   reg [31:0] crc2;
  
   begin
      if (crc_table2[1] !== 32'h77073096) begin
	 $display("%t Building CRC table.", $time);
	 gen_crc_table2;
      end
      

      // Bytes 1:0 are length (in bytes, excl CRC)
      packet_memory2[0] = 8'h70;
      packet_memory2[1] = 8'h70;
      // Bytes 3:2 are seq num provided
      packet_memory2[2] = 8'h70;
      packet_memory2[3] = 8'h70;
		packet_memory2[4] = 8'h70;
      packet_memory2[5] = 8'h70;
		
		packet_memory2[6] = 8'h60;
      packet_memory2[7] = 8'h00;
      // Bytes 3:2 are seq num provided
      packet_memory2[8] = 8'h60;
      packet_memory2[9] = 8'h00;
		packet_memory2[10] = 8'h60;
      packet_memory2[11] = 8'h00;
      // the rest is just data
      for (i=12;i<pkt_size2;i=i+1) begin
	 packet_memory2[i] = ((i[7:0]+1) ^  pkt_num2[7:0]);
      end

      // BUT!!! we need to put in a valid Ethertype
      packet_memory2[12] = 8'h81;
      packet_memory2[13] = 8'h00;
      packet_memory2[16] = 8'h08;
      packet_memory2[17] = 8'h00;
                                                                                                                   
      // clear bytes for CRC
      for (i=2044;i<2048;i=i+1) begin
	 packet_memory2[i] = 8'h0;
      end
      crc2 = update_crc2(32'hffffffff,pkt_size2)^32'hffffffff;

      $display("%t CRC for seq num %0d was %0x ", $time, pkt_num2, crc2);
      
      // corrupt CRC if requested.
      
      // insert CRC
      packet_memory2[2044]   = crc2[7:0];
      packet_memory2[2045] = crc2[15:8];
      packet_memory2[2046] = crc2[23:16];
      packet_memory2[2047] = crc2[31:24];
   end
endtask // gen_pkt


task handle_ingress2;	
integer i;

begin
for (i=0 ; i<1000 ; i=i+1) begin
    
	 #1;
  		 
	send_rgmii_rx_pkt2;
  
   #10;
   end
end	

endtask


initial
     begin
rgmii_rx_d2 = 4'h0;
rgmii_rx_ctl2 = 1'b0;
			  
#1100 handle_ingress2;

  end	 
	 
	 wire   serial_TXP_1;
    wire   serial_TXN_1;
    wire    serial_RXP_1;
    wire    serial_RXN_1;  
	 
	wire [19:0] #1 sram21_addr;
   wire [35:0] #1 sram21_data;
   wire [3:0]  #1 sram21_bw;
   wire        #1 sram21_we;
   wire        #1 sram21_zz;

   wire [19:0] #1 sram22_addr;
   wire [35:0] #1 sram22_data;
   wire [3:0]  #1 sram22_bw;
   wire        #1 sram22_we;
   wire        #1 sram22_zz;  
	
	
	 reg         sram21_we_del;
   always @* #2 sram21_we_del = sram21_we;
   reg [3:0]    sram21_bw_del;
   always @* #2 sram21_bw_del = sram21_bw;
   reg [19:0]   sram21_addr_del;
   always @* #2 sram21_addr_del = sram21_addr;

   cy7c1370 sram21 (
                  .d      (sram21_data),
                  .clk    (clk),
                  .a      (sram21_addr_del[18:0]),
                  .bws    (sram21_bw_del),
                  .we_b   (sram21_we_del),
                  .adv_lb (1'b0),
                  .ce1b   (1'b0),
                  .ce2    (1'b1),
                  .ce3b   (1'b0),
                  .oeb    (1'b0),
                  .cenb   (1'b0),
                  .mode   (1'b0)   // dont care cos we dont burst
                  );
                                                                                           
   // ---- SRAM 2
   // add delays to avoid simulation errors.
   
   reg          sram22_we_del;
   always @* #2 sram22_we_del = sram22_we;
   reg [3:0]    sram22_bw_del;
   always @* #2 sram22_bw_del = sram22_bw;
   reg [19:0]   sram22_addr_del;
   always @* #2 sram22_addr_del = sram22_addr;

   cy7c1370 sram22 (
                  .d      (sram22_data),
                  .clk    (clk),
                  .a      (sram22_addr_del[18:0]),
                  .bws    (sram22_bw_del),
                  .we_b   (sram22_we_del),
                  .adv_lb (1'b0),
                  .ce1b   (1'b0),
                  .ce2    (1'b1),
                  .ce3b   (1'b0),
                  .oeb    (1'b0),
                  .cenb   (1'b0),
                  .mode   (1'b0)   // dont care cos we dont burst
                  );	
						
         wire [3:0]  rgmii_20_tx_d;
		   wire        rgmii_20_tx_ctl; // 1 = tx_d is valid
		   wire        rgmii_20_tx_clk; // used in 1000 mode only
	//	   wire        rgmii_20_rx_clk; // used in 10/100/1000 modes
	//	   wire  [3:0] rgmii_20_rx_d;
	//	   wire        rgmii_20_rx_ctl;
		   
		   wire [3:0] rgmii_21_tx_d;
		   wire       rgmii_21_tx_ctl; // 1 = tx_d is valid
		   wire       rgmii_21_tx_clk; // used in 1000 mode only
		   wire        rgmii_21_rx_clk; // used in 10/100/1000 modes
		   wire  [3:0] rgmii_21_rx_d;
		   wire        rgmii_21_rx_ctl;
		   
		   wire [3:0] rgmii_22_tx_d;
		   wire       rgmii_22_tx_ctl; // 1 = tx_d is valid
		   wire       rgmii_22_tx_clk; // used in 1000 mode only
		   wire        rgmii_22_rx_clk; // used in 10/100/1000 modes
		   wire  [3:0] rgmii_22_rx_d;
		   wire        rgmii_22_rx_ctl;
		   
		   wire [3:0] rgmii_23_tx_d;
		   wire       rgmii_23_tx_ctl; // 1 = tx_d is valid
		   wire       rgmii_23_tx_clk; // used in 1000 mode only
		   wire        rgmii_23_rx_clk; // used in 10/100/1000 modes
         wire  [3:0] rgmii_23_rx_d;
         wire        rgmii_23_rx_ctl;
			

                   
	 
nf2_top  nf2_top2(           
        .rgmii_0_txd              (rgmii_20_tx_d),
        .rgmii_0_tx_ctl           (rgmii_20_tx_ctl),
        .rgmii_0_txc              (rgmii_20_tx_clk),
        .rgmii_0_rxd              (rgmii_rx_d2),
        .rgmii_0_rx_ctl           (rgmii_rx_ctl2),
        .rgmii_0_rxc              (clk),

        .rgmii_1_txd              (rgmii_21_tx_d),
        .rgmii_1_tx_ctl           (rgmii_21_tx_ctl),
        .rgmii_1_txc              (rgmii_21_tx_clk),
        .rgmii_1_rxd              (rgmii_21_rx_d),
        .rgmii_1_rx_ctl           (rgmii_21_rx_ctl),
        .rgmii_1_rxc              (rgmii_21_rx_clk),

        .rgmii_2_txd              (rgmii_22_tx_d),
        .rgmii_2_tx_ctl           (rgmii_22_tx_ctl),
        .rgmii_2_txc              (rgmii_22_tx_clk),
        .rgmii_2_rxd              (rgmii_22_rx_d),
        .rgmii_2_rx_ctl           (rgmii_22_rx_ctl),
        .rgmii_2_rxc              (rgmii_22_rx_clk),

        .rgmii_3_txd              (rgmii_23_tx_d),
        .rgmii_3_tx_ctl           (rgmii_23_tx_ctl),
        .rgmii_3_txc              (rgmii_23_tx_clk),
        .rgmii_3_rxd              (rgmii_23_rx_d),
        .rgmii_3_rx_ctl           (rgmii_23_rx_ctl),
        .rgmii_3_rxc              (rgmii_23_rx_clk),

    .gtx_clk         (gtxclk),    // common TX clk reference 125MHz.


    // DDR signals

    .ddr_clk_200     (),    
    .ddr_clk_200b    (),    

    .ddr2_odt0       (),    
    .ddr2_clk0       (),     
    .ddr2_clk0b      (),      
    .ddr2_clk1       (),      
    .ddr2_clk1b      (),       
    .ddr2_cke        (),      
    .ddr2_csb        (),      
    .ddr2_rasb       (),      
    .ddr2_casb       (),      
    .ddr2_web        (),      
    .ddr2_dm         (),      
    .ddr2_ba         (),      
    .ddr2_address    (),       
    .ddr2_dq         (),      
    .ddr2_dqs        (),      
    .ddr2_dqs_n      (),      
    .ddr2_rst_dqs_div_in  (),      
    .ddr2_rst_dqs_div_out (),               


    // CPCI interface and clock

    .cpci_clk         (cpci_clk),         // 62.5 MHz
    .cpci_rd_wr_L     (),         
    .cpci_req         (),         
    .cpci_addr        (),         
    .cpci_data        (),         
    .cpci_wr_rdy      (),         
    .cpci_rd_rdy      (),         
    .nf2_err          (),           // was cnet_err

    // synthesis attribute keep of nf2_err is "true";


    // ---- SRAM 1
    // Note: 1 extra address bit on sram
        .sram1_addr               (sram21_addr),
        .sram1_data               (sram21_data),
        .sram1_we                 (sram21_we),
        .sram1_bw                 (sram21_bw),
        .sram1_zz                 (sram21_zz),
        
        // ---- SRAM 2

        .sram2_addr               (sram22_addr),
        .sram2_data               (sram22_data),
        .sram2_we                 (sram22_we),
        .sram2_bw                 (sram22_bw),
        .sram2_zz                 (sram22_zz),      

    // --- CPCI DMA handshake signals 
    .dma_op_code_req  (),           
    .dma_op_queue_id  (),           
    .dma_op_code_ack  (),           
     
     // DMA data and flow control 
    .dma_vld_c2n      (),           
    .dma_vld_n2c      (),           
    .dma_data         (),           
    .dma_q_nearly_full_c2n  (),           
    .dma_q_nearly_full_n2c  (),            
     
    // --- CPCI Debug Data
                
    .cpci_debug_data  (),            
                
    // ---  MDC/MDIO PHY control signals

    .phy_mdc      (),           
    .phy_mdio     (),           

    //--- Debug bus (goes to LA connector)

    .debug_led    (),           
    .debug_data   (),           
    .debug_clk    (),           
    
    // --- Serial Pins

    .serial_TXP_0   (serial_TXP_1),           
    .serial_TXN_0   (serial_TXN_1),           
    .serial_RXP_0   (serial_RXP_1),           
    .serial_RXN_0   (serial_RXN_1),           

    .serial_TXP_1   (),           
    .serial_TXN_1   (),           
    .serial_RXP_1   (),           
    .serial_RXN_1   (),           

    // --- Spartan configuration pins
    .cpci_rp_done     (),           
    .cpci_rp_init_b   (),           
    .cpci_rp_cclk     (),           

    .cpci_rp_en       (),           
    .cpci_rp_prog_b   (),           
    .cpci_rp_din      (),           
     
    // core clock - must also be same as sram clock

    .core_clk    (clk),  
  	 //simulation
	//	.flowtotb           (),
    
    // Misc
    
    .nf2_reset   (RESET)               // driven by CPCI

    );
	 
assign serial_RXP_1 = serial_TXP_0;
assign serial_RXN_1 = serial_TXN_0;	 
assign serial_RXP_0 = serial_TXP_1;
assign serial_RXN_0 = serial_TXN_1;	

endmodule //aurora_sample_tb_onefpga

