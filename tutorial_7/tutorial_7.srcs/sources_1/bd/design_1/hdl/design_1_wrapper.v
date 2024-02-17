//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Jan 31 14:47:01 2024
//Host        : StaaBuG15 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (aclk,
    aresetn,
    leds);
  input aclk;
  input aresetn;
  output [15:0]leds;

  wire aclk;
  wire aresetn;
  wire [15:0]leds;

  design_1 design_1_i
       (.aclk(aclk),
        .aresetn(aresetn),
        .leds(leds));
endmodule
