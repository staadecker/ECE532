//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Jan 21 20:21:38 2024
//Host        : StaaBuG15 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (in_data,
    in_valid,
    out_largest,
    reset,
    reset_0,
    sys_clock);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IN_DATA DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IN_DATA, LAYERED_METADATA undef" *) input [3:0]in_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IN_VALID DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IN_VALID, LAYERED_METADATA undef" *) input in_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.OUT_LARGEST DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.OUT_LARGEST, LAYERED_METADATA undef" *) output [3:0]out_largest;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;

  wire clk_wiz_0_clk_out1;
  wire [3:0]in_data_1;
  wire in_valid_1;
  wire [3:0]max_0_out_largest;
  wire reset_0_1;
  wire reset_1;
  wire sys_clock_1;

  assign in_data_1 = in_data[3:0];
  assign in_valid_1 = in_valid;
  assign out_largest[3:0] = max_0_out_largest;
  assign reset_0_1 = reset_0;
  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_0_1));
  design_1_max_0_0 max_0
       (.clk(clk_wiz_0_clk_out1),
        .in_data(in_data_1),
        .in_valid(in_valid_1),
        .out_largest(max_0_out_largest),
        .reset(reset_1));
endmodule
