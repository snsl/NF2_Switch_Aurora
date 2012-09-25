////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: K.39
//  \   \         Application: netgen
//  /   /         Filename: txfifo_512x72_to_18_aur.v
// /___/   /\     Timestamp: Fri Oct 30 16:14:27 2009
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog D:\nf2\nf2withaurora\master\ISE\tmp\_cg\txfifo_512x72_to_18_aur.ngc D:\nf2\nf2withaurora\master\ISE\tmp\_cg\txfifo_512x72_to_18_aur.v 
// Device	: 2vp50ff1152-7
// Input file	: D:/nf2/nf2withaurora/master/ISE/tmp/_cg/txfifo_512x72_to_18_aur.ngc
// Output file	: D:/nf2/nf2withaurora/master/ISE/tmp/_cg/txfifo_512x72_to_18_aur.v
// # of Modules	: 1
// Design Name	: txfifo_512x72_to_18_aur
// Xilinx        : C:\Xilinx\10.1\ISE
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module txfifo_512x72_to_18_aur (
  prog_full, rd_en, wr_en, full, empty, wr_clk, rst, almost_full, rd_clk, dout, din
);
  output prog_full;
  input rd_en;
  input wr_en;
  output full;
  output empty;
  input wr_clk;
  input rst;
  output almost_full;
  input rd_clk;
  output [17 : 0] dout;
  input [71 : 0] din;
  
  // synthesis translate_off
  
  wire \BU2/N67 ;
  wire \BU2/N65 ;
  wire \BU2/U0/grf.rf/ram_wr_en ;
  wire \BU2/N63 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0006_bdd0 ;
  wire \BU2/N61 ;
  wire \BU2/U0/grf.rf/gcx.clkx/tmp_value0_0_xor000020 ;
  wire \BU2/U0/grf.rf/gcx.clkx/tmp_value0_0_xor00007_615 ;
  wire \BU2/U0/grf.rf/gcx.clkx/tmp_value0_0_xor000043_614 ;
  wire \BU2/N59 ;
  wire \BU2/N57 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0006_bdd2 ;
  wire \BU2/N55 ;
  wire \BU2/N53 ;
  wire \BU2/N51 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_0_cmp_eq0000 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_1_cmp_eq0000 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_2_cmp_eq0000 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_3_cmp_eq0000 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<0>_rt_581 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<1>_rt_580 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<2>_rt_578 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<3>_rt_576 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<4>_rt_574 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<5>_rt_572 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<6>_rt_570 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<7>_rt_568 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<8>_rt_566 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<9>_rt_564 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<10>_rt_562 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count2 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count1 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count5 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count3 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count4 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count8 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count6 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count7 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count9 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count10 ;
  wire \BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/wr_rst_d1_537 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/prog_full_i_mux0004 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/prog_full_i_not0001_535 ;
  wire \BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_531 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<0>_rt_484 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<1>_rt_483 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<2>_rt_481 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<3>_rt_479 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<4>_rt_477 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<5>_rt_475 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<6>_rt_473 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<7>_rt_471 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<8>_rt_469 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<9>_rt_467 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<10>_rt_465 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<11>_rt_463 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<12>_rt_461 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count1 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count2 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count3 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count6 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count4 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count5 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count9 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count7 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count8 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count12 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count10 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count11 ;
  wire \BU2/U0/grf.rf/ram_rd_en ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0009 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0008 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0007 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0006 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0005 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0004 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0003 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0002 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0001 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0000 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0011 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0010 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0009 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0008 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0007 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0006 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0005 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0004 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0003 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0002 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0001 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0000 ;
  wire \BU2/U0/grf.rf/gcx.clkx/tmp_value0_0_xor0000 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0008 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0007_336 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0006_334 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0005_332 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0004_330 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0003_328 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0009 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0001 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0000 ;
  wire \BU2/U0/grf.rf/gcx.clkx/tmp_value2_2_xor0000_318 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0008 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0007 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0006 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0005 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0004 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0003 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0002 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0001 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0000 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwas.wsts/comp3 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwas.wsts/comp2 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwas.wsts/comp1 ;
  wire \BU2/U0/grf.rf/gl0.rd/gras.rsts/comp1 ;
  wire \BU2/U0/grf.rf/gl0.rd/gras.rsts/comp0 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_3_229 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_4_228 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_31_223 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_41_222 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_32_217 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_42_216 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_33_211 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_43_210 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_34_205 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_44_204 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_35_199 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_45_198 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_36_193 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_46_192 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_37_187 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_47_186 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_38_181 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_48_180 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_39_175 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_49_174 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_310_169 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_410_168 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_311_163 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_411_162 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_312_157 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_412_156 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_313_151 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_413_150 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_314_145 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_414_144 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_315_139 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_415_138 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_316_133 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_416_132 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_317_127 ;
  wire \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_417_126 ;
  wire \BU2/U0/grf.rf/mem/tmp_ram_rd_en ;
  wire \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_120 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwas.wsts/wr_rst_d1_119 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i_mux0000 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i_not0001 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000 ;
  wire \BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_115 ;
  wire \BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000 ;
  wire \BU2/U0/grf.rf/rstblk/wr_rst_comb ;
  wire \BU2/U0/grf.rf/rstblk/rd_rst_comb ;
  wire \BU2/U0/grf.rf/rstblk/wr_rst_asreg_106 ;
  wire \BU2/U0/grf.rf/rstblk/rd_rst_asreg_105 ;
  wire \BU2/U0/grf.rf/rstblk/wr_rst_asreg_d2_104 ;
  wire \BU2/U0/grf.rf/rstblk/wr_rst_asreg_d1_103 ;
  wire \BU2/U0/grf.rf/rstblk/rd_rst_asreg_d2_102 ;
  wire \BU2/U0/grf.rf/rstblk/rd_rst_asreg_d1_101 ;
  wire \BU2/N1 ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<24>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<24>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<24>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<24>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<24>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<24>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<24>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<24>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<23>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<22>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<21>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<20>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<19>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<18>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<17>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<16>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<0>_UNCONNECTED ;
  wire [71 : 0] din_2;
  wire [17 : 0] dout_3;
  wire [3 : 0] \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/enb_array ;
  wire [10 : 0] \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 ;
  wire [10 : 0] \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 ;
  wire [10 : 0] \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 ;
  wire [9 : 0] \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy ;
  wire [10 : 0] \BU2/U0/grf.rf/gl0.wr/wpntr/count ;
  wire [11 : 9] \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad ;
  wire [11 : 1] \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut ;
  wire [10 : 0] \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy ;
  wire [11 : 9] \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad_add0000 ;
  wire [12 : 0] \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 ;
  wire [11 : 0] \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy ;
  wire [12 : 0] \BU2/U0/grf.rf/gl0.rd/rpntr/count ;
  wire [12 : 0] \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg ;
  wire [12 : 0] \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc ;
  wire [10 : 0] \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc ;
  wire [12 : 2] \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 ;
  wire [10 : 0] \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 ;
  wire [10 : 0] \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg ;
  wire [10 : 0] \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin ;
  wire [12 : 2] \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin ;
  wire [5 : 0] \BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1 ;
  wire [4 : 0] \BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/carrynet ;
  wire [5 : 0] \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1 ;
  wire [4 : 0] \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/carrynet ;
  wire [5 : 0] \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1 ;
  wire [4 : 0] \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/carrynet ;
  wire [6 : 0] \BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1 ;
  wire [5 : 0] \BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/carrynet ;
  wire [6 : 0] \BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1 ;
  wire [5 : 0] \BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/carrynet ;
  wire [8 : 0] \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 ;
  wire [8 : 0] \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 ;
  wire [8 : 0] \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 ;
  wire [8 : 0] \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb ;
  wire [8 : 0] \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 ;
  wire [8 : 0] \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 ;
  wire [8 : 0] \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 ;
  wire [8 : 0] \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 ;
  wire [1 : 0] \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe ;
  wire [1 : 0] \BU2/U0/grf.rf/rstblk/wr_rst_reg ;
  wire [2 : 0] \BU2/U0/grf.rf/rstblk/rd_rst_reg ;
  wire [0 : 0] \BU2/rd_data_count ;
  assign
    dout[17] = dout_3[17],
    dout[16] = dout_3[16],
    dout[15] = dout_3[15],
    dout[14] = dout_3[14],
    dout[13] = dout_3[13],
    dout[12] = dout_3[12],
    dout[11] = dout_3[11],
    dout[10] = dout_3[10],
    dout[9] = dout_3[9],
    dout[8] = dout_3[8],
    dout[7] = dout_3[7],
    dout[6] = dout_3[6],
    dout[5] = dout_3[5],
    dout[4] = dout_3[4],
    dout[3] = dout_3[3],
    dout[2] = dout_3[2],
    dout[1] = dout_3[1],
    dout[0] = dout_3[0],
    din_2[71] = din[71],
    din_2[70] = din[70],
    din_2[69] = din[69],
    din_2[68] = din[68],
    din_2[67] = din[67],
    din_2[66] = din[66],
    din_2[65] = din[65],
    din_2[64] = din[64],
    din_2[63] = din[63],
    din_2[62] = din[62],
    din_2[61] = din[61],
    din_2[60] = din[60],
    din_2[59] = din[59],
    din_2[58] = din[58],
    din_2[57] = din[57],
    din_2[56] = din[56],
    din_2[55] = din[55],
    din_2[54] = din[54],
    din_2[53] = din[53],
    din_2[52] = din[52],
    din_2[51] = din[51],
    din_2[50] = din[50],
    din_2[49] = din[49],
    din_2[48] = din[48],
    din_2[47] = din[47],
    din_2[46] = din[46],
    din_2[45] = din[45],
    din_2[44] = din[44],
    din_2[43] = din[43],
    din_2[42] = din[42],
    din_2[41] = din[41],
    din_2[40] = din[40],
    din_2[39] = din[39],
    din_2[38] = din[38],
    din_2[37] = din[37],
    din_2[36] = din[36],
    din_2[35] = din[35],
    din_2[34] = din[34],
    din_2[33] = din[33],
    din_2[32] = din[32],
    din_2[31] = din[31],
    din_2[30] = din[30],
    din_2[29] = din[29],
    din_2[28] = din[28],
    din_2[27] = din[27],
    din_2[26] = din[26],
    din_2[25] = din[25],
    din_2[24] = din[24],
    din_2[23] = din[23],
    din_2[22] = din[22],
    din_2[21] = din[21],
    din_2[20] = din[20],
    din_2[19] = din[19],
    din_2[18] = din[18],
    din_2[17] = din[17],
    din_2[16] = din[16],
    din_2[15] = din[15],
    din_2[14] = din[14],
    din_2[13] = din[13],
    din_2[12] = din[12],
    din_2[11] = din[11],
    din_2[10] = din[10],
    din_2[9] = din[9],
    din_2[8] = din[8],
    din_2[7] = din[7],
    din_2[6] = din[6],
    din_2[5] = din[5],
    din_2[4] = din[4],
    din_2[3] = din[3],
    din_2[2] = din[2],
    din_2[1] = din[1],
    din_2[0] = din[0];
  VCC   VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND   GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  LUT2_L #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/tmp_value2_2_xor0000_SW0  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2]),
    .LO(\BU2/N63 )
  );
  LUT2_L #(
    .INIT ( 4'h8 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/prog_full_i_not0001_SW0  (
    .I0(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad [9]),
    .I1(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad [10]),
    .LO(\BU2/N61 )
  );
  LUT3_L #(
    .INIT ( 8'h96 ))
  \BU2/U0/grf.rf/gcx.clkx/tmp_value0_0_xor00007  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [4]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [0]),
    .LO(\BU2/U0/grf.rf/gcx.clkx/tmp_value0_0_xor00007_615 )
  );
  LUT4_D #(
    .INIT ( 16'h6996 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor000826  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [9]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [10]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [8]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [6]),
    .LO(\BU2/N67 ),
    .O(\BU2/U0/grf.rf/gcx.clkx/tmp_value0_0_xor000020 )
  );
  LUT4_L #(
    .INIT ( 16'h6996 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0007_SW0  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [4]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0006_bdd2 ),
    .I3(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [10]),
    .LO(\BU2/N59 )
  );
  LUT3_L #(
    .INIT ( 8'h69 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0006_SW0  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [4]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [10]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0006_bdd2 ),
    .LO(\BU2/N57 )
  );
  LUT4_L #(
    .INIT ( 16'h6996 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0005_SW0  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [6]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [5]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [4]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [10]),
    .LO(\BU2/N55 )
  );
  LUT3_L #(
    .INIT ( 8'h69 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0004_SW0  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [6]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [5]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [10]),
    .LO(\BU2/N53 )
  );
  LUT2_L #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0003_SW0  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [6]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [10]),
    .LO(\BU2/N51 )
  );
  RAMB16_S9_S36 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 9'h000 ),
    .SRVAL_B ( 36'h000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "NONE" ),
    .INIT_A ( 9'h000 ),
    .INIT_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram  (
    .CLKA(rd_clk),
    .CLKB(wr_clk),
    .ENA(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/enb_array [3]),
    .ENB(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_3_cmp_eq0000 ),
    .SSRA(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .SSRB(\BU2/rd_data_count [0]),
    .WEA(\BU2/rd_data_count [0]),
    .WEB(\BU2/U0/grf.rf/ram_wr_en ),
    .ADDRA({\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [8], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [7], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [6], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [5], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [4], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DIA({\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], 
\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .DIB({din_2[16], din_2[15], din_2[14], din_2[13], din_2[12], din_2[11], din_2[10], din_2[9], din_2[34], din_2[33], din_2[32], din_2[31], din_2[30]
, din_2[29], din_2[28], din_2[27], din_2[52], din_2[51], din_2[50], din_2[49], din_2[48], din_2[47], din_2[46], din_2[45], din_2[70], din_2[69], 
din_2[68], din_2[67], din_2[66], din_2[65], din_2[64], din_2[63]}),
    .DIPA({\BU2/rd_data_count [0]}),
    .DIPB({din_2[17], din_2[35], din_2[53], din_2[71]}),
    .DOA({\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 [7], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 [6], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 [5], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 [4], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 [3], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 [2], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 [1], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 [0]}),
    .DOPA({\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 [8]}),
    .DOB({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<31>_UNCONNECTED 
, \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<30>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<29>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<28>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<27>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<26>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<25>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<24>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<23>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<22>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<21>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<20>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<19>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<18>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<17>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<16>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<15>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<14>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<13>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<12>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<11>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<10>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<9>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<8>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<7>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<6>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<5>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<4>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<3>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOB<0>_UNCONNECTED }),
    .DOPB({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<3>_UNCONNECTED 
, \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<0>_UNCONNECTED })
  );
  RAMB16_S9_S36 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 9'h000 ),
    .SRVAL_B ( 36'h000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "NONE" ),
    .INIT_A ( 9'h000 ),
    .INIT_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram  (
    .CLKA(rd_clk),
    .CLKB(wr_clk),
    .ENA(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/enb_array [2]),
    .ENB(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_2_cmp_eq0000 ),
    .SSRA(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .SSRB(\BU2/rd_data_count [0]),
    .WEA(\BU2/rd_data_count [0]),
    .WEB(\BU2/U0/grf.rf/ram_wr_en ),
    .ADDRA({\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [8], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [7], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [6], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [5], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [4], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DIA({\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], 
\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .DIB({din_2[16], din_2[15], din_2[14], din_2[13], din_2[12], din_2[11], din_2[10], din_2[9], din_2[34], din_2[33], din_2[32], din_2[31], din_2[30]
, din_2[29], din_2[28], din_2[27], din_2[52], din_2[51], din_2[50], din_2[49], din_2[48], din_2[47], din_2[46], din_2[45], din_2[70], din_2[69], 
din_2[68], din_2[67], din_2[66], din_2[65], din_2[64], din_2[63]}),
    .DIPA({\BU2/rd_data_count [0]}),
    .DIPB({din_2[17], din_2[35], din_2[53], din_2[71]}),
    .DOA({\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 [7], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 [6], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 [5], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 [4], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 [3], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 [2], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 [1], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 [0]}),
    .DOPA({\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 [8]}),
    .DOB({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<31>_UNCONNECTED 
, \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<30>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<29>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<28>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<27>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<26>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<25>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<24>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<23>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<22>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<21>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<20>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<19>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<18>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<17>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<16>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<15>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<14>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<13>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<12>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<11>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<10>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<9>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<8>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<7>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<6>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<5>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<4>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<3>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOB<0>_UNCONNECTED }),
    .DOPB({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<3>_UNCONNECTED 
, \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<0>_UNCONNECTED })
  );
  RAMB16_S9_S36 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 9'h000 ),
    .SRVAL_B ( 36'h000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "NONE" ),
    .INIT_A ( 9'h000 ),
    .INIT_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram  (
    .CLKA(rd_clk),
    .CLKB(wr_clk),
    .ENA(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/enb_array [1]),
    .ENB(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_1_cmp_eq0000 ),
    .SSRA(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .SSRB(\BU2/rd_data_count [0]),
    .WEA(\BU2/rd_data_count [0]),
    .WEB(\BU2/U0/grf.rf/ram_wr_en ),
    .ADDRA({\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [8], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [7], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [6], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [5], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [4], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DIA({\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], 
\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .DIB({din_2[16], din_2[15], din_2[14], din_2[13], din_2[12], din_2[11], din_2[10], din_2[9], din_2[34], din_2[33], din_2[32], din_2[31], din_2[30]
, din_2[29], din_2[28], din_2[27], din_2[52], din_2[51], din_2[50], din_2[49], din_2[48], din_2[47], din_2[46], din_2[45], din_2[70], din_2[69], 
din_2[68], din_2[67], din_2[66], din_2[65], din_2[64], din_2[63]}),
    .DIPA({\BU2/rd_data_count [0]}),
    .DIPB({din_2[17], din_2[35], din_2[53], din_2[71]}),
    .DOA({\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 [7], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 [6], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 [5], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 [4], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 [3], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 [2], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 [1], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 [0]}),
    .DOPA({\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 [8]}),
    .DOB({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<31>_UNCONNECTED 
, \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<30>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<29>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<28>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<27>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<26>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<25>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<24>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<23>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<22>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<21>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<20>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<19>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<18>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<17>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<16>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<15>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<14>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<13>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<12>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<11>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<10>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<9>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<8>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<7>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<6>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<5>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<4>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<3>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOB<0>_UNCONNECTED }),
    .DOPB({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<3>_UNCONNECTED 
, \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<0>_UNCONNECTED })
  );
  RAMB16_S9_S36 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 9'h000 ),
    .SRVAL_B ( 36'h000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "NONE" ),
    .INIT_A ( 9'h000 ),
    .INIT_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram  (
    .CLKA(rd_clk),
    .CLKB(wr_clk),
    .ENA(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/enb_array [0]),
    .ENB(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_0_cmp_eq0000 ),
    .SSRA(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .SSRB(\BU2/rd_data_count [0]),
    .WEA(\BU2/rd_data_count [0]),
    .WEB(\BU2/U0/grf.rf/ram_wr_en ),
    .ADDRA({\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [8], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [7], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [6], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [5], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [4], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DIA({\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], 
\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .DIB({din_2[16], din_2[15], din_2[14], din_2[13], din_2[12], din_2[11], din_2[10], din_2[9], din_2[34], din_2[33], din_2[32], din_2[31], din_2[30]
, din_2[29], din_2[28], din_2[27], din_2[52], din_2[51], din_2[50], din_2[49], din_2[48], din_2[47], din_2[46], din_2[45], din_2[70], din_2[69], 
din_2[68], din_2[67], din_2[66], din_2[65], din_2[64], din_2[63]}),
    .DIPA({\BU2/rd_data_count [0]}),
    .DIPB({din_2[17], din_2[35], din_2[53], din_2[71]}),
    .DOA({\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 [7], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 [6], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 [5], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 [4], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 [3], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 [2], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 [1], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 [0]}),
    .DOPA({\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 [8]}),
    .DOB({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<31>_UNCONNECTED 
, \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<30>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<29>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<28>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<27>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<26>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<25>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<24>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<23>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<22>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<21>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<20>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<19>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<18>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<17>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<16>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<15>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<14>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<13>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<12>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<11>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<10>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<9>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<8>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<7>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<6>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<5>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<4>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<3>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOB<0>_UNCONNECTED }),
    .DOPB({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<3>_UNCONNECTED 
, \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<0>_UNCONNECTED })
  );
  RAMB16_S9_S36 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 9'h000 ),
    .SRVAL_B ( 36'h000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "NONE" ),
    .INIT_A ( 9'h000 ),
    .INIT_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram  (
    .CLKA(rd_clk),
    .CLKB(wr_clk),
    .ENA(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/enb_array [3]),
    .ENB(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_3_cmp_eq0000 ),
    .SSRA(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .SSRB(\BU2/rd_data_count [0]),
    .WEA(\BU2/rd_data_count [0]),
    .WEB(\BU2/U0/grf.rf/ram_wr_en ),
    .ADDRA({\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [8], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [7], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [6], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [5], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [4], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DIA({\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], 
\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .DIB({din_2[7], din_2[6], din_2[5], din_2[4], din_2[3], din_2[2], din_2[1], din_2[0], din_2[25], din_2[24], din_2[23], din_2[22], din_2[21], 
din_2[20], din_2[19], din_2[18], din_2[43], din_2[42], din_2[41], din_2[40], din_2[39], din_2[38], din_2[37], din_2[36], din_2[61], din_2[60], 
din_2[59], din_2[58], din_2[57], din_2[56], din_2[55], din_2[54]}),
    .DIPA({\BU2/rd_data_count [0]}),
    .DIPB({din_2[8], din_2[26], din_2[44], din_2[62]}),
    .DOA({\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 [7], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 [6], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 [5], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 [4], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 [3], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 [2], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 [1], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 [0]}),
    .DOPA({\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 [8]}),
    .DOB({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<31>_UNCONNECTED 
, \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<30>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<29>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<28>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<27>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<26>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<25>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<24>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<23>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<22>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<21>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<20>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<19>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<18>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<17>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<16>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<15>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<14>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<13>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<12>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<11>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<10>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<9>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<8>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<7>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<6>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<5>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<4>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<3>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOB<0>_UNCONNECTED }),
    .DOPB({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<3>_UNCONNECTED 
, \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<0>_UNCONNECTED })
  );
  RAMB16_S9_S36 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 9'h000 ),
    .SRVAL_B ( 36'h000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "NONE" ),
    .INIT_A ( 9'h000 ),
    .INIT_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram  (
    .CLKA(rd_clk),
    .CLKB(wr_clk),
    .ENA(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/enb_array [2]),
    .ENB(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_2_cmp_eq0000 ),
    .SSRA(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .SSRB(\BU2/rd_data_count [0]),
    .WEA(\BU2/rd_data_count [0]),
    .WEB(\BU2/U0/grf.rf/ram_wr_en ),
    .ADDRA({\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [8], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [7], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [6], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [5], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [4], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DIA({\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], 
\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .DIB({din_2[7], din_2[6], din_2[5], din_2[4], din_2[3], din_2[2], din_2[1], din_2[0], din_2[25], din_2[24], din_2[23], din_2[22], din_2[21], 
din_2[20], din_2[19], din_2[18], din_2[43], din_2[42], din_2[41], din_2[40], din_2[39], din_2[38], din_2[37], din_2[36], din_2[61], din_2[60], 
din_2[59], din_2[58], din_2[57], din_2[56], din_2[55], din_2[54]}),
    .DIPA({\BU2/rd_data_count [0]}),
    .DIPB({din_2[8], din_2[26], din_2[44], din_2[62]}),
    .DOA({\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 [7], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 [6], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 [5], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 [4], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 [3], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 [2], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 [1], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 [0]}),
    .DOPA({\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 [8]}),
    .DOB({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<31>_UNCONNECTED 
, \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<30>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<29>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<28>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<27>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<26>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<25>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<24>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<23>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<22>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<21>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<20>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<19>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<18>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<17>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<16>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<15>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<14>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<13>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<12>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<11>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<10>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<9>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<8>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<7>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<6>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<5>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<4>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<3>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOB<0>_UNCONNECTED }),
    .DOPB({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<3>_UNCONNECTED 
, \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<0>_UNCONNECTED })
  );
  RAMB16_S9_S36 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 9'h000 ),
    .SRVAL_B ( 36'h000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "NONE" ),
    .INIT_A ( 9'h000 ),
    .INIT_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram  (
    .CLKA(rd_clk),
    .CLKB(wr_clk),
    .ENA(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/enb_array [1]),
    .ENB(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_1_cmp_eq0000 ),
    .SSRA(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .SSRB(\BU2/rd_data_count [0]),
    .WEA(\BU2/rd_data_count [0]),
    .WEB(\BU2/U0/grf.rf/ram_wr_en ),
    .ADDRA({\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [8], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [7], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [6], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [5], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [4], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DIA({\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], 
\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .DIB({din_2[7], din_2[6], din_2[5], din_2[4], din_2[3], din_2[2], din_2[1], din_2[0], din_2[25], din_2[24], din_2[23], din_2[22], din_2[21], 
din_2[20], din_2[19], din_2[18], din_2[43], din_2[42], din_2[41], din_2[40], din_2[39], din_2[38], din_2[37], din_2[36], din_2[61], din_2[60], 
din_2[59], din_2[58], din_2[57], din_2[56], din_2[55], din_2[54]}),
    .DIPA({\BU2/rd_data_count [0]}),
    .DIPB({din_2[8], din_2[26], din_2[44], din_2[62]}),
    .DOA({\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 [7], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 [6], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 [5], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 [4], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 [3], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 [2], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 [1], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 [0]}),
    .DOPA({\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 [8]}),
    .DOB({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<31>_UNCONNECTED 
, \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<30>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<29>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<28>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<27>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<26>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<25>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<24>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<23>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<22>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<21>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<20>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<19>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<18>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<17>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<16>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<15>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<14>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<13>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<12>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<11>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<10>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<9>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<8>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<7>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<6>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<5>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<4>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<3>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOB<0>_UNCONNECTED }),
    .DOPB({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<3>_UNCONNECTED 
, \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<0>_UNCONNECTED })
  );
  RAMB16_S9_S36 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 9'h000 ),
    .SRVAL_B ( 36'h000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "NONE" ),
    .INIT_A ( 9'h000 ),
    .INIT_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram  (
    .CLKA(rd_clk),
    .CLKB(wr_clk),
    .ENA(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/enb_array [0]),
    .ENB(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_0_cmp_eq0000 ),
    .SSRA(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .SSRB(\BU2/rd_data_count [0]),
    .WEA(\BU2/rd_data_count [0]),
    .WEB(\BU2/U0/grf.rf/ram_wr_en ),
    .ADDRA({\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [8], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [7], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [6], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [5], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [4], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DIA({\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], 
\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .DIB({din_2[7], din_2[6], din_2[5], din_2[4], din_2[3], din_2[2], din_2[1], din_2[0], din_2[25], din_2[24], din_2[23], din_2[22], din_2[21], 
din_2[20], din_2[19], din_2[18], din_2[43], din_2[42], din_2[41], din_2[40], din_2[39], din_2[38], din_2[37], din_2[36], din_2[61], din_2[60], 
din_2[59], din_2[58], din_2[57], din_2[56], din_2[55], din_2[54]}),
    .DIPA({\BU2/rd_data_count [0]}),
    .DIPB({din_2[8], din_2[26], din_2[44], din_2[62]}),
    .DOA({\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb [7], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb [6], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb [5], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb [4], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb [3], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb [2], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb [1], 
\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb [0]}),
    .DOPA({\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb [8]}),
    .DOB({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<31>_UNCONNECTED 
, \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<30>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<29>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<28>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<27>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<26>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<25>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<24>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<23>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<22>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<21>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<20>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<19>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<18>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<17>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<16>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<15>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<14>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<13>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<12>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<11>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<10>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<9>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<8>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<7>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<6>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<5>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<4>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<3>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOB<0>_UNCONNECTED }),
    .DOPB({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<3>_UNCONNECTED 
, \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2_noinit.ram/dp36x9.ram_DOPB<0>_UNCONNECTED })
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_2  (
    .I0(wr_en),
    .I1(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_120 ),
    .O(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1  (
    .I0(wr_en),
    .I1(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_120 ),
    .O(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_531 )
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \BU2/U0/grf.rf/mem/tmp_ram_rd_en1  (
    .I0(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_115 ),
    .I2(rd_en),
    .O(\BU2/U0/grf.rf/mem/tmp_ram_rd_en )
  );
  LUT4 #(
    .INIT ( 16'hFF20 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or00001  (
    .I0(wr_en),
    .I1(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_120 ),
    .I2(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/comp2 ),
    .I3(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/comp1 ),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000 )
  );
  LUT4 #(
    .INIT ( 16'hF2F0 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or00001  (
    .I0(rd_en),
    .I1(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_115 ),
    .I2(\BU2/U0/grf.rf/gl0.rd/gras.rsts/comp0 ),
    .I3(\BU2/U0/grf.rf/gl0.rd/gras.rsts/comp1 ),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor000828  (
    .I0(\BU2/N67 ),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [7]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [5]),
    .I3(\BU2/N65 ),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0008 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor000828_SW0  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [4]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [1]),
    .O(\BU2/N65 )
  );
  LUT4 #(
    .INIT ( 16'h1110 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_b.bindec_inst_b/enout_0_mux00001  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [12]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [11]),
    .I2(\BU2/U0/grf.rf/ram_rd_en ),
    .I3(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/enb_array [0])
  );
  LUT4 #(
    .INIT ( 16'h2220 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_b.bindec_inst_b/enout_1_mux00001  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [11]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [12]),
    .I2(\BU2/U0/grf.rf/ram_rd_en ),
    .I3(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/enb_array [1])
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_b.bindec_inst_b/enout_3_mux00001  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [11]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [12]),
    .I2(\BU2/U0/grf.rf/ram_rd_en ),
    .I3(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/enb_array [3])
  );
  LUT4 #(
    .INIT ( 16'h2220 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_b.bindec_inst_b/enout_2_mux00001  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [12]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [11]),
    .I2(\BU2/U0/grf.rf/ram_rd_en ),
    .I3(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/enb_array [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut<11>  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [10]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [12]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [11])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut<10>  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [9]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [11]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [10])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut<9>  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [8]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [10]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut<8>  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [7]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [9]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut<7>  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [6]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [8]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut<6>  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [5]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [7]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut<5>  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [4]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [6]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut<4>  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [5]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut<3>  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [4]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut<2>  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [3]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut<1>  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [2]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [1])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<10>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [10]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<10>_rt_562 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<12>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [12]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<12>_rt_461 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<0>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [0]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<0>_rt_581 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<1>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [1]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<1>_rt_580 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<2>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [2]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<2>_rt_578 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<3>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [3]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<3>_rt_576 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<4>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [4]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<4>_rt_574 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<5>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [5]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<5>_rt_572 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<6>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [6]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<6>_rt_570 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<7>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [7]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<7>_rt_568 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<8>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [8]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<8>_rt_566 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<9>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [9]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<9>_rt_564 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<0>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [0]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<0>_rt_484 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<1>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [1]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<1>_rt_483 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<2>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [2]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<2>_rt_481 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<3>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [3]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<3>_rt_479 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<4>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [4]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<4>_rt_477 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<5>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [5]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<5>_rt_475 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<6>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [6]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<6>_rt_473 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<7>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [7]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<7>_rt_471 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<8>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [8]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<8>_rt_469 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<9>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [9]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<9>_rt_467 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<10>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [10]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<10>_rt_465 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<11>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [11]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<11>_rt_463 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1  (
    .I0(wr_en),
    .I1(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_120 ),
    .O(\BU2/U0/grf.rf/ram_wr_en )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1_0_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1 [0])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1_0_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [0]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count [1]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1 [0])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1_1_and00001  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [0]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [1]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1 [1])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1_1_and00001  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [0]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [1]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count [3]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count [2]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1 [1])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1_0_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [3]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [2]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1 [0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1_0_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [1]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [3]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [0]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [2]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1 [0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1_0_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [1]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [3]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count [0]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [2]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1 [0])
  );
  LUT4 #(
    .INIT ( 16'h5450 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i_mux00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/wr_rst_d1_119 ),
    .I1(\BU2/U0/grf.rf/ram_wr_en ),
    .I2(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/comp2 ),
    .I3(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/comp3 ),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1_2_and00001  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [2]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [3]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1 [2])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1_2_and00001  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [2]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [3]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count [5]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count [4]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1 [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1_1_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [5]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [4]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1 [1])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1_1_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [3]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [5]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [2]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [4]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1 [1])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1_1_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [3]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [5]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count [2]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [4]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1 [1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1  (
    .I0(rd_en),
    .I1(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_115 ),
    .O(\BU2/U0/grf.rf/ram_rd_en )
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1_3_and00001  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [4]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [5]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1 [3])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1_3_and00001  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [4]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [5]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count [7]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count [6]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1 [3])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1_2_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [5]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [7]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [4]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [6]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1 [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1_2_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [5]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [7]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [4]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [6]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1 [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1_2_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [5]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [7]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count [4]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [6]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1 [2])
  );
  LUT4 #(
    .INIT ( 16'h9669 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor000611  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [6]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [7]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0002 ),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [8]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0006_bdd0 )
  );
  LUT4 #(
    .INIT ( 16'h9669 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor00081  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [4]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0006_bdd0 ),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [5]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0008 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor00071  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [4]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [5]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0006_bdd0 ),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0007 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor00062  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [5]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0006_bdd0 ),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0006 )
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1_4_and00001  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [6]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [7]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1 [4])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1_4_and00001  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [6]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [7]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count [9]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count [8]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1 [4])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1_3_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [7]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [9]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [6]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [8]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1 [3])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1_3_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [7]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [9]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [6]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [8]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1 [3])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1_3_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [7]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [9]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count [6]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [8]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1 [3])
  );
  LUT4 #(
    .INIT ( 16'h8421 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1_5_and00001  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [8]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [9]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [11]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1 [5])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1_5_and00001  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [8]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [9]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count [11]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count [10]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1 [5])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1_4_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [9]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [11]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [8]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [10]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1 [4])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1_4_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [9]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [11]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [8]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [10]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1 [4])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1_4_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [9]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [11]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count [8]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [10]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1 [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1_6_not00001  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [10]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [12]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1 [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1_6_not00001  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [10]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count [12]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1 [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1_5_not00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [10]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [12]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1 [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1_5_not00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [10]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [12]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1 [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1_5_not00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [10]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [12]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1 [5])
  );
  LUT4 #(
    .INIT ( 16'h9669 ))
  \BU2/U0/grf.rf/gcx.clkx/tmp_value2_2_xor0000  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [4]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [5]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0006_bdd0 ),
    .I3(\BU2/N63 ),
    .O(\BU2/U0/grf.rf/gcx.clkx/tmp_value2_2_xor0000_318 )
  );
  LUT4 #(
    .INIT ( 16'hAAFB ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/prog_full_i_not0001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/wr_rst_d1_537 ),
    .I1(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad [11]),
    .I2(\BU2/N61 ),
    .I3(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_120 ),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/prog_full_i_not0001_535 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \BU2/U0/grf.rf/gcx.clkx/tmp_value0_0_xor000045  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/tmp_value0_0_xor00007_615 ),
    .I1(\BU2/U0/grf.rf/gcx.clkx/tmp_value0_0_xor000020 ),
    .I2(\BU2/U0/grf.rf/gcx.clkx/tmp_value0_0_xor000043_614 ),
    .O(\BU2/U0/grf.rf/gcx.clkx/tmp_value0_0_xor0000 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \BU2/U0/grf.rf/gcx.clkx/tmp_value0_0_xor000043  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [7]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [5]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [1]),
    .O(\BU2/U0/grf.rf/gcx.clkx/tmp_value0_0_xor000043_614 )
  );
  LUT4 #(
    .INIT ( 16'h9669 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0007  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [6]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [8]),
    .I2(\BU2/N59 ),
    .I3(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [9]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0007_336 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0006  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [6]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [8]),
    .I2(\BU2/N57 ),
    .I3(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [9]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0006_334 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor00051  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [7]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [6]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0002 ),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [8]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0005 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor00041  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0002 ),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [8]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [7]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0004 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor000621  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [5]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [7]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0006_bdd2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor00032  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [8]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0002 ),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0003 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0005  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [9]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [8]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [7]),
    .I3(\BU2/N55 ),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0005_332 )
  );
  LUT4 #(
    .INIT ( 16'h9669 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0004  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [9]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [8]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [7]),
    .I3(\BU2/N53 ),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0004_330 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0003  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [9]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [8]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [7]),
    .I3(\BU2/N51 ),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0003_328 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_0_cmp_eq00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [9]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [10]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_0_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_1_cmp_eq00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [10]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [9]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_1_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_2_cmp_eq00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [9]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [10]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_2_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_3_cmp_eq00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [9]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [10]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/bindec_a.bindec_inst_a/enout_3_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i_not00011  (
    .I0(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/wr_rst_d1_119 ),
    .I1(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_120 ),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor00021  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [9]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [10]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [12]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [11]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0002 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor00091  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [10]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [8]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [7]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [9]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0009 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/prog_full_i_mux00041  (
    .I0(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad [11]),
    .I1(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/wr_rst_d1_537 ),
    .I2(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad [10]),
    .I3(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad [9]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/prog_full_i_mux0004 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor00011  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [12]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [11]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [10]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0001 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor00011  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [9]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [10]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [8]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0001 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0000_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [12]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [11]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0001_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [11]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0001 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0002_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0002 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0003_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0003 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0004_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0004 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0005_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0005 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0006_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0006 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0007_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0007 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0008_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0008 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0009_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0009 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0010_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0010 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0011_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0011 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0000_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [10]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [9]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0001_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [9]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [8]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0001 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0002_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [8]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [7]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0002 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0003_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [7]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [6]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0003 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0004_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [6]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [5]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0004 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0005_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [5]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [4]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0005 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0006_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [4]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0006 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0007_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0007 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0008_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0008 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0009_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0009 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor00001  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [11]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [12]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor00001  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [10]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [9]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0000 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_comb1  (
    .I0(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_d2_102 ),
    .I1(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_105 ),
    .O(\BU2/U0/grf.rf/rstblk/rd_rst_comb )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/grf.rf/rstblk/wr_rst_comb1  (
    .I0(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_d2_104 ),
    .I1(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_106 ),
    .O(\BU2/U0/grf.rf/rstblk/wr_rst_comb )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3_0  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3_1  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3_2  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3_3  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3_4  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [4]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3_5  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [5]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3_6  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [6]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3_7  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [7]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [7])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3_8  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [8]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [8])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3_9  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [9]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [9])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3_10  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [10]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [10])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_10  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [10]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [10])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_9  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [9]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [9])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_7  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [7]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [7])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_6  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [6]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_8  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [8]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [8])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_4  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [4]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_3  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [3]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_5  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [5]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_1  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_0  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_2  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [2]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_10  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [10]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [10])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_9  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [9]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [9])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_7  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [7]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [7])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_6  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [6]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_8  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [8]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [8])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_4  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [4]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_3  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [3]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_5  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [5]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [5])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_1  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [1]),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_0  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [0]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_2  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [2]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [2])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<0>  (
    .CI(\BU2/N1 ),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<0>_rt_581 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [0])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<0>  (
    .CI(\BU2/N1 ),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<0>_rt_581 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<1>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [0]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<1>_rt_580 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [1])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<1>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [0]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<1>_rt_580 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count1 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<2>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [1]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<2>_rt_578 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [2])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<2>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [1]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<2>_rt_578 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count2 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<3>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [2]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<3>_rt_576 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [3])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<3>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [2]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<3>_rt_576 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count3 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<4>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [3]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<4>_rt_574 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [4])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<4>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [3]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<4>_rt_574 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count4 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<5>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [4]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<5>_rt_572 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [5])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<5>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [4]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<5>_rt_572 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count5 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<6>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [5]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<6>_rt_570 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [6])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<6>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [5]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<6>_rt_570 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count6 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<7>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [6]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<7>_rt_568 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [7])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<7>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [6]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<7>_rt_568 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count7 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<8>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [7]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<8>_rt_566 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [8])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<8>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [7]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<8>_rt_566 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count8 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<9>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [8]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<9>_rt_564 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [9])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<9>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [8]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<9>_rt_564 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count9 )
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<10>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [9]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<10>_rt_562 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count10 )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_2  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count2 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [2])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_0  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count ),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [0])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_1  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count1 ),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_5  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count5 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_3  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count3 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_4  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count4 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_8  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count8 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [8])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_6  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count6 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_7  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count7 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [7])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_9  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count9 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [9])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_10  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_1_538 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count10 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [10])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/wr_rst_d1  (
    .C(wr_clk),
    .D(\BU2/rd_data_count [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/wr_rst_d1_537 )
  );
  FDPE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/prog_full_i  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/prog_full_i_not0001_535 ),
    .D(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/prog_full_i_mux0004 ),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(prog_full)
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad_9  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad_add0000 [9]),
    .Q(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad [9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad_10  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad_add0000 [10]),
    .Q(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad [10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad_11  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad_add0000 [11]),
    .Q(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad [11])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy<0>  (
    .CI(\BU2/N1 ),
    .DI(\BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1_531 ),
    .S(\BU2/rd_data_count [0]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [0])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy<1>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [0]),
    .DI(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [1]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [1])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy<2>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [1]),
    .DI(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [2]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [2])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy<3>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [2]),
    .DI(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [3]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [3])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy<4>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [3]),
    .DI(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [4]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [4])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy<5>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [4]),
    .DI(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [4]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [5]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [5])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy<6>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [5]),
    .DI(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [5]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [6]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [6])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy<7>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [6]),
    .DI(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [6]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [7]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [7])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy<8>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [7]),
    .DI(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [7]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [8]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [8])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy<9>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [8]),
    .DI(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [8]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [9]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [9])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_xor<9>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [8]),
    .LI(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [9]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad_add0000 [9])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy<10>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [9]),
    .DI(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [9]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [10]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [10])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_xor<10>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [9]),
    .LI(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [10]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad_add0000 [10])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_xor<11>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_cy [10]),
    .LI(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/Madd_diff_pntr_pad_add0000_lut [11]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.gpf.wrpf/diff_pntr_pad_add0000 [11])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_0  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [0]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_1  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [1]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_2  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [2]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_3  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [3]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_4  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [4]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_5  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [5]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_6  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [6]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_7  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [7]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_8  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [8]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_9  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [9]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_10  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [10]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_11  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [11]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [11])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_12  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [12]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [12])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<0>  (
    .CI(\BU2/N1 ),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<0>_rt_484 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [0])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<0>  (
    .CI(\BU2/N1 ),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<0>_rt_484 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<1>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [0]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<1>_rt_483 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [1])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<1>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [0]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<1>_rt_483 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count1 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<2>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [1]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<2>_rt_481 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [2])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<2>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [1]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<2>_rt_481 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count2 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<3>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [2]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<3>_rt_479 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [3])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<3>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [2]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<3>_rt_479 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count3 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<4>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [3]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<4>_rt_477 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [4])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<4>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [3]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<4>_rt_477 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count4 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<5>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [4]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<5>_rt_475 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [5])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<5>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [4]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<5>_rt_475 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count5 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<6>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [5]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<6>_rt_473 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [6])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<6>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [5]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<6>_rt_473 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count6 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<7>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [6]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<7>_rt_471 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [7])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<7>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [6]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<7>_rt_471 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count7 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<8>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [7]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<8>_rt_469 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [8])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<8>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [7]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<8>_rt_469 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count8 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<9>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [8]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<9>_rt_467 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [9])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<9>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [8]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<9>_rt_467 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count9 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<10>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [9]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<10>_rt_465 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [10])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<10>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [9]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<10>_rt_465 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count10 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<11>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [10]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<11>_rt_463 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [11])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<11>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [10]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<11>_rt_463 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count11 )
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<12>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [11]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<12>_rt_461 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count12 )
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_0  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count ),
    .PRE(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_1  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count1 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_2  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count2 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_3  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count3 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_6  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count6 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_4  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count4 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_5  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count5 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_9  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count9 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [9])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_7  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count7 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [7])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_8  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count8 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [8])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_12  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count12 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [12])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_10  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count10 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [10])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_11  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/ram_rd_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count11 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [11])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_0  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0009 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_1  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0008 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_2  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0007 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_3  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0006 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_4  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0005 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_5  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0004 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_6  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0003 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_7  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0002 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_8  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0001 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_9  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0000 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_10  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [10]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_0  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0011 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_1  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0010 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_2  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0009 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_3  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0008 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_4  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0007 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_5  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0006 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_6  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0005 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_7  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0004 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_8  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0003 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_9  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0002 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_10  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0001 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_11  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0000 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [11])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_12  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [12]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [12])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_0  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [0]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_1  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [1]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_2  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [2]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_3  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [3]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_4  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [4]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_5  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [5]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_6  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [6]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_7  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [7]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_8  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [8]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_9  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [9]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_10  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [10]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_11  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [11]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [11])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_12  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [12]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [12])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_0  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [0]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_1  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [1]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_2  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [2]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_3  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [3]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_4  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [4]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_5  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [5]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_6  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [6]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_7  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [7]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_8  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [8]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_9  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [9]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_10  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [10]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_2  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [2]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_3  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [3]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_4  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [4]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_5  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [5]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_6  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [6]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_7  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [7]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_8  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [8]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_9  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [9]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_10  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [10]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_11  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [11]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [11])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_12  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [12]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [12])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_0  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [0]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_1  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [1]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_2  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [2]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_3  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [3]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_4  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [4]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_5  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [5]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_6  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [6]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_7  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [7]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_8  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [8]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_9  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [9]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_10  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [10]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_0  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/tmp_value0_0_xor0000 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_1  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0008 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_2  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0007_336 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_3  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0006_334 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_4  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0005_332 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_5  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0004_330 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_6  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0003_328 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_7  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0009 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_8  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0001 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_9  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0000 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_10  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [10]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_2  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/tmp_value2_2_xor0000_318 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_3  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0008 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_4  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0007 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_5  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0006 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_6  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0005 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_7  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0004 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_8  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0003 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_9  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0002 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_10  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0001 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_11  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0000 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [11])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_12  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [12]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [12])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/gmux.gm[0].gm1.m1  (
    .CI(\BU2/N1 ),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1 [0]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/carrynet [0])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/gmux.gm[1].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/carrynet [0]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1 [1]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/carrynet [1])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/gmux.gm[2].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/carrynet [1]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1 [2]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/carrynet [2])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/gmux.gm[3].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/carrynet [2]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1 [3]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/carrynet [3])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/gmux.gm[4].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/carrynet [3]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1 [4]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/carrynet [4])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/gmux.gm[5].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/carrynet [4]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/gaf.c3/v1 [5]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/comp3 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/gmux.gm[0].gm1.m1  (
    .CI(\BU2/N1 ),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1 [0]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/carrynet [0])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/gmux.gm[1].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/carrynet [0]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1 [1]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/carrynet [1])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/gmux.gm[2].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/carrynet [1]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1 [2]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/carrynet [2])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/gmux.gm[3].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/carrynet [2]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1 [3]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/carrynet [3])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/gmux.gm[4].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/carrynet [3]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1 [4]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/carrynet [4])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/gmux.gm[5].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/carrynet [4]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/v1 [5]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/comp2 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/gmux.gm[0].gm1.m1  (
    .CI(\BU2/N1 ),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1 [0]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/carrynet [0])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/gmux.gm[1].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/carrynet [0]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1 [1]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/carrynet [1])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/gmux.gm[2].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/carrynet [1]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1 [2]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/carrynet [2])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/gmux.gm[3].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/carrynet [2]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1 [3]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/carrynet [3])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/gmux.gm[4].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/carrynet [3]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1 [4]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/carrynet [4])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/gmux.gm[5].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/carrynet [4]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/c1/v1 [5]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/comp1 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/gmux.gm[0].gm1.m1  (
    .CI(\BU2/N1 ),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1 [0]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/carrynet [0])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/gmux.gm[1].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/carrynet [0]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1 [1]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/carrynet [1])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/gmux.gm[2].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/carrynet [1]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1 [2]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/carrynet [2])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/gmux.gm[3].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/carrynet [2]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1 [3]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/carrynet [3])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/gmux.gm[4].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/carrynet [3]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1 [4]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/carrynet [4])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/gmux.gm[5].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/carrynet [4]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1 [5]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/carrynet [5])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/gmux.gm[6].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/carrynet [5]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c1/v1 [6]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/comp1 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/gmux.gm[0].gm1.m1  (
    .CI(\BU2/N1 ),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1 [0]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/carrynet [0])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/gmux.gm[1].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/carrynet [0]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1 [1]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/carrynet [1])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/gmux.gm[2].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/carrynet [1]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1 [2]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/carrynet [2])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/gmux.gm[3].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/carrynet [2]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1 [3]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/carrynet [3])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/gmux.gm[4].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/carrynet [3]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1 [4]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/carrynet [4])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/gmux.gm[5].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/carrynet [4]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1 [5]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/carrynet [5])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/gmux.gm[6].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/carrynet [5]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/gras.rsts/c0/v1 [6]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/comp0 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_3  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 [0]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 [0]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_3_229 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_4  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb [0]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 [0]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_4_228 )
  );
  MUXF5   \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_2_f5  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_4_228 ),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_3_229 ),
    .S(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1]),
    .O(dout_3[0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_31  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 [1]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 [1]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_31_223 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_41  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 [1]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 [1]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_41_222 )
  );
  MUXF5   \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_2_f5_0  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_41_222 ),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_31_223 ),
    .S(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1]),
    .O(dout_3[10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_32  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 [2]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 [2]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_32_217 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_42  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 [2]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 [2]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_42_216 )
  );
  MUXF5   \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_2_f5_1  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_42_216 ),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_32_217 ),
    .S(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1]),
    .O(dout_3[11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_33  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 [3]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 [3]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_33_211 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_43  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 [3]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 [3]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_43_210 )
  );
  MUXF5   \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_2_f5_2  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_43_210 ),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_33_211 ),
    .S(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1]),
    .O(dout_3[12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_34  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 [4]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 [4]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_34_205 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_44  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 [4]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 [4]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_44_204 )
  );
  MUXF5   \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_2_f5_3  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_44_204 ),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_34_205 ),
    .S(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1]),
    .O(dout_3[13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_35  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 [5]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 [5]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_35_199 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_45  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 [5]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 [5]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_45_198 )
  );
  MUXF5   \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_2_f5_4  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_45_198 ),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_35_199 ),
    .S(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1]),
    .O(dout_3[14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_36  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 [6]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 [6]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_36_193 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_46  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 [6]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 [6]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_46_192 )
  );
  MUXF5   \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_2_f5_5  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_46_192 ),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_36_193 ),
    .S(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1]),
    .O(dout_3[15])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_37  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 [7]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 [7]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_37_187 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_47  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 [7]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 [7]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_47_186 )
  );
  MUXF5   \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_2_f5_6  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_47_186 ),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_37_187 ),
    .S(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1]),
    .O(dout_3[16])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_38  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 [8]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 [8]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_38_181 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_48  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 [8]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 [8]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_48_180 )
  );
  MUXF5   \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_2_f5_7  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_48_180 ),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_38_181 ),
    .S(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1]),
    .O(dout_3[17])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_39  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 [1]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 [1]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_39_175 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_49  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb [1]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 [1]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_49_174 )
  );
  MUXF5   \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_2_f5_8  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_49_174 ),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_39_175 ),
    .S(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1]),
    .O(dout_3[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_310  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 [2]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 [2]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_310_169 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_410  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb [2]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 [2]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_410_168 )
  );
  MUXF5   \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_2_f5_9  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_410_168 ),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_310_169 ),
    .S(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1]),
    .O(dout_3[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_311  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 [3]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 [3]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_311_163 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_411  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb [3]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 [3]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_411_162 )
  );
  MUXF5   \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_2_f5_10  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_411_162 ),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_311_163 ),
    .S(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1]),
    .O(dout_3[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_312  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 [4]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 [4]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_312_157 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_412  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb [4]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 [4]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_412_156 )
  );
  MUXF5   \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_2_f5_11  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_412_156 ),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_312_157 ),
    .S(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1]),
    .O(dout_3[4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_313  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 [5]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 [5]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_313_151 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_413  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb [5]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 [5]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_413_150 )
  );
  MUXF5   \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_2_f5_12  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_413_150 ),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_313_151 ),
    .S(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1]),
    .O(dout_3[5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_314  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 [6]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 [6]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_314_145 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_414  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb [6]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 [6]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_414_144 )
  );
  MUXF5   \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_2_f5_13  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_414_144 ),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_314_145 ),
    .S(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1]),
    .O(dout_3[6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_315  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 [7]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 [7]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_315_139 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_415  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb [7]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 [7]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_415_138 )
  );
  MUXF5   \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_2_f5_14  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_415_138 ),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_315_139 ),
    .S(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1]),
    .O(dout_3[7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_316  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb1 [8]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb2 [8]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_316_133 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_416  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb [8]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb0 [8]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_416_132 )
  );
  MUXF5   \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_2_f5_15  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_416_132 ),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_316_133 ),
    .S(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1]),
    .O(dout_3[8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_317  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb5 [0]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb6 [0]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_317_127 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_417  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0]),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb3 [0]),
    .I2(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ram_doutb4 [0]),
    .O(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_417_126 )
  );
  MUXF5   \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_2_f5_16  (
    .I0(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_417_126 ),
    .I1(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/Mmux_dout_mux_317_127 ),
    .S(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1]),
    .O(dout_3[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe_0  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/tmp_ram_rd_en ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [11]),
    .Q(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe_1  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/tmp_ram_rd_en ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [12]),
    .Q(\BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/has_mux_b.B/sel_pipe [1])
  );
  FDP #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i  (
    .C(wr_clk),
    .D(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000 ),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_120 )
  );
  FDP #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/wr_rst_d1  (
    .C(wr_clk),
    .D(\BU2/rd_data_count [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/wr_rst_d1_119 )
  );
  FDPE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i_not0001 ),
    .D(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i_mux0000 ),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(almost_full)
  );
  FDP #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_i  (
    .C(wr_clk),
    .D(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000 ),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(full)
  );
  FDP #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_i  (
    .C(rd_clk),
    .D(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000 ),
    .PRE(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .Q(empty)
  );
  FDP #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i  (
    .C(rd_clk),
    .D(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000 ),
    .PRE(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .Q(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_115 )
  );
  FDP #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/wr_rst_reg_0  (
    .C(wr_clk),
    .D(\BU2/rd_data_count [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_comb ),
    .Q(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0])
  );
  FDP #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/wr_rst_reg_1  (
    .C(wr_clk),
    .D(\BU2/rd_data_count [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_comb ),
    .Q(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1])
  );
  FDP #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_reg_0  (
    .C(rd_clk),
    .D(\BU2/rd_data_count [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/rd_rst_comb ),
    .Q(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0])
  );
  FDP #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_reg_1  (
    .C(rd_clk),
    .D(\BU2/rd_data_count [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/rd_rst_comb ),
    .Q(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1])
  );
  FDP #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_reg_2  (
    .C(rd_clk),
    .D(\BU2/rd_data_count [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/rd_rst_comb ),
    .Q(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2])
  );
  FDPE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_asreg  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_d1_101 ),
    .D(\BU2/rd_data_count [0]),
    .PRE(rst),
    .Q(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_105 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/wr_rst_asreg_d1  (
    .C(wr_clk),
    .D(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_106 ),
    .Q(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_d1_103 )
  );
  FDPE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/wr_rst_asreg  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_d1_103 ),
    .D(\BU2/rd_data_count [0]),
    .PRE(rst),
    .Q(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_106 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_asreg_d1  (
    .C(rd_clk),
    .D(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_105 ),
    .Q(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_d1_101 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/wr_rst_asreg_d2  (
    .C(wr_clk),
    .D(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_d1_103 ),
    .Q(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_d2_104 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_asreg_d2  (
    .C(rd_clk),
    .D(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_d1_101 ),
    .Q(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_d2_102 )
  );
  VCC   \BU2/XST_VCC  (
    .P(\BU2/N1 )
  );
  GND   \BU2/XST_GND  (
    .G(\BU2/rd_data_count [0])
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

// synthesis translate_on
