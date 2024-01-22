//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Jan 21 20:21:38 2024
//Host        : StaaBuG15 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (in_data,
    in_valid,
    out_largest,
    reset,
    reset_0,
    sys_clock);
  input [3:0]in_data;
  input in_valid;
  output [3:0]out_largest;
  input reset;
  input reset_0;
  input sys_clock;

  wire [3:0]in_data;
  wire in_valid;
  wire [3:0]out_largest;
  wire reset;
  wire reset_0;
  wire sys_clock;

  design_1 design_1_i
       (.in_data(in_data),
        .in_valid(in_valid),
        .out_largest(out_largest),
        .reset(reset),
        .reset_0(reset_0),
        .sys_clock(sys_clock));
endmodule
