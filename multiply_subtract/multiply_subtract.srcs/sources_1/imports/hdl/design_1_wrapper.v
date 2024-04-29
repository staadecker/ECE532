//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Mar  6 12:57:12 2024
//Host        : StaaBuG15 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps


// Block does C - ( A * B ) and passes through a tuser signal from block which includes flags for
// underflow, overflow, and invalid_op
module design_1_wrapper
   (M_AXIS_RESULT_0_tdata,
    M_AXIS_RESULT_0_tready,
    M_AXIS_RESULT_0_tuser,
    M_AXIS_RESULT_0_tflags,
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
    aclk,
    aresetn);
  output [31:0]M_AXIS_RESULT_0_tdata;
  input M_AXIS_RESULT_0_tready;
  output [15:0]M_AXIS_RESULT_0_tuser;
  output [2:0]M_AXIS_RESULT_0_tflags;
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
  input aclk;
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
  wire aclk;
  wire aresetn;
  wire [31:0] result;
  wire [18:0] tuser;
  
  
  assign M_AXIS_RESULT_0_tdata[31] = ~result[31];
  assign M_AXIS_RESULT_0_tdata[30:0] = result[30:0];
  assign M_AXIS_RESULT_0_tflags = tuser[2:0];
  assign M_AXIS_RESULT_0_tuser = tuser[18:3];

  design_1 design_1_i
       (.M_AXIS_RESULT_0_tdata(result),
        .M_AXIS_RESULT_0_tready(M_AXIS_RESULT_0_tready),
        .M_AXIS_RESULT_0_tuser(tuser),
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
        .aclk_0(aclk),
        .aresetn(aresetn));
endmodule
