// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Feb 16 16:17:19 2024
// Host        : StaaBuG15 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/machs/Software/ECE532/assignment_1_part_3_new/assignment_1_part_3_new.srcs/sources_1/bd/design_1/ip/design_1_mask_axi532_0_0/design_1_mask_axi532_0_0_stub.v
// Design      : design_1_mask_axi532_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mask_axi532,Vivado 2018.3" *)
module design_1_mask_axi532_0_0(aclk, aresetn, S_AXI_AWADDR, S_AXI_AWVALID, 
  S_AXI_AWREADY, S_AXI_WDATA, S_AXI_WVALID, S_AXI_WREADY, S_AXI_BRESP, S_AXI_BVALID, 
  S_AXI_BREADY, S_AXI_ARADDR, S_AXI_ARVALID, S_AXI_ARREADY, S_AXI_RDATA, S_AXI_RVALID, 
  S_AXI_RREADY, M_AXI_AWADDR, M_AXI_AWVALID, M_AXI_AWREADY, M_AXI_AWPROT, M_AXI_WDATA, 
  M_AXI_WVALID, M_AXI_WREADY, M_AXI_WSTRB, M_AXI_BRESP, M_AXI_BVALID, M_AXI_BREADY)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,S_AXI_AWADDR[31:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP,S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[31:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RVALID,S_AXI_RREADY,M_AXI_AWADDR[31:0],M_AXI_AWVALID,M_AXI_AWREADY,M_AXI_AWPROT[2:0],M_AXI_WDATA[31:0],M_AXI_WVALID,M_AXI_WREADY,M_AXI_WSTRB[3:0],M_AXI_BRESP,M_AXI_BVALID,M_AXI_BREADY" */;
  input aclk;
  input aresetn;
  input [31:0]S_AXI_AWADDR;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [31:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  output [31:0]M_AXI_AWADDR;
  output M_AXI_AWVALID;
  input M_AXI_AWREADY;
  output [2:0]M_AXI_AWPROT;
  output [31:0]M_AXI_WDATA;
  output M_AXI_WVALID;
  input M_AXI_WREADY;
  output [3:0]M_AXI_WSTRB;
  input M_AXI_BRESP;
  input M_AXI_BVALID;
  output M_AXI_BREADY;
endmodule
