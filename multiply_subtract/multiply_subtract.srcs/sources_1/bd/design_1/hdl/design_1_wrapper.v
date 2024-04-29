//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Mar  6 13:35:43 2024
//Host        : StaaBuG15 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (M_AXIS_RESULT_0_tdata,
    M_AXIS_RESULT_0_tready,
    M_AXIS_RESULT_0_tuser,
    M_AXIS_RESULT_0_tvalid,
    S_AXIS_A_0_tdata,
    S_AXIS_A_0_tready,
    S_AXIS_A_0_tuser,
    S_AXIS_A_0_tvalid,
    S_AXIS_B_0_tdata,
    S_AXIS_B_0_tready,
    S_AXIS_B_0_tvalid,
    S_AXIS_C_0_tdata,
    S_AXIS_C_0_tready,
    S_AXIS_C_0_tvalid,
    aclk_0,
    aresetn);
  output [31:0]M_AXIS_RESULT_0_tdata;
  input M_AXIS_RESULT_0_tready;
  output [18:0]M_AXIS_RESULT_0_tuser;
  output M_AXIS_RESULT_0_tvalid;
  input [31:0]S_AXIS_A_0_tdata;
  output S_AXIS_A_0_tready;
  input [15:0]S_AXIS_A_0_tuser;
  input S_AXIS_A_0_tvalid;
  input [31:0]S_AXIS_B_0_tdata;
  output S_AXIS_B_0_tready;
  input S_AXIS_B_0_tvalid;
  input [31:0]S_AXIS_C_0_tdata;
  output S_AXIS_C_0_tready;
  input S_AXIS_C_0_tvalid;
  input aclk_0;
  input aresetn;

  wire [31:0]M_AXIS_RESULT_0_tdata;
  wire M_AXIS_RESULT_0_tready;
  wire [18:0]M_AXIS_RESULT_0_tuser;
  wire M_AXIS_RESULT_0_tvalid;
  wire [31:0]S_AXIS_A_0_tdata;
  wire S_AXIS_A_0_tready;
  wire [15:0]S_AXIS_A_0_tuser;
  wire S_AXIS_A_0_tvalid;
  wire [31:0]S_AXIS_B_0_tdata;
  wire S_AXIS_B_0_tready;
  wire S_AXIS_B_0_tvalid;
  wire [31:0]S_AXIS_C_0_tdata;
  wire S_AXIS_C_0_tready;
  wire S_AXIS_C_0_tvalid;
  wire aclk_0;
  wire aresetn;

  design_1 design_1_i
       (.M_AXIS_RESULT_0_tdata(M_AXIS_RESULT_0_tdata),
        .M_AXIS_RESULT_0_tready(M_AXIS_RESULT_0_tready),
        .M_AXIS_RESULT_0_tuser(M_AXIS_RESULT_0_tuser),
        .M_AXIS_RESULT_0_tvalid(M_AXIS_RESULT_0_tvalid),
        .S_AXIS_A_0_tdata(S_AXIS_A_0_tdata),
        .S_AXIS_A_0_tready(S_AXIS_A_0_tready),
        .S_AXIS_A_0_tuser(S_AXIS_A_0_tuser),
        .S_AXIS_A_0_tvalid(S_AXIS_A_0_tvalid),
        .S_AXIS_B_0_tdata(S_AXIS_B_0_tdata),
        .S_AXIS_B_0_tready(S_AXIS_B_0_tready),
        .S_AXIS_B_0_tvalid(S_AXIS_B_0_tvalid),
        .S_AXIS_C_0_tdata(S_AXIS_C_0_tdata),
        .S_AXIS_C_0_tready(S_AXIS_C_0_tready),
        .S_AXIS_C_0_tvalid(S_AXIS_C_0_tvalid),
        .aclk_0(aclk_0),
        .aresetn(aresetn));
endmodule
