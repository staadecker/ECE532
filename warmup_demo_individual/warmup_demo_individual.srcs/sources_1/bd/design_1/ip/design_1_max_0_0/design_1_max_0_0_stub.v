// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jan 21 20:22:20 2024
// Host        : StaaBuG15 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/machs/Software/ECE532/warmup_demo_individual/warmup_demo_individual.srcs/sources_1/bd/design_1/ip/design_1_max_0_0/design_1_max_0_0_stub.v
// Design      : design_1_max_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "max,Vivado 2018.3" *)
module design_1_max_0_0(clk, reset, in_data, in_valid, out_largest)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,in_data[3:0],in_valid,out_largest[3:0]" */;
  input clk;
  input reset;
  input [3:0]in_data;
  input in_valid;
  output [3:0]out_largest;
endmodule
