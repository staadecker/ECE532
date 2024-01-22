// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jan 21 20:22:20 2024
// Host        : StaaBuG15 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/machs/Software/ECE532/warmup_demo_individual/warmup_demo_individual.srcs/sources_1/bd/design_1/ip/design_1_max_0_0/design_1_max_0_0_sim_netlist.v
// Design      : design_1_max_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_max_0_0,max,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "max,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_max_0_0
   (clk,
    reset,
    in_data,
    in_valid,
    out_largest);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  input [3:0]in_data;
  input in_valid;
  output [3:0]out_largest;

  wire clk;
  wire [3:0]in_data;
  wire in_valid;
  wire [3:0]out_largest;
  wire reset;

  design_1_max_0_0_max inst
       (.clk(clk),
        .in_data(in_data),
        .in_valid(in_valid),
        .out_largest(out_largest),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "max" *) 
module design_1_max_0_0_max
   (out_largest,
    in_data,
    clk,
    reset,
    in_valid);
  output [3:0]out_largest;
  input [3:0]in_data;
  input clk;
  input reset;
  input in_valid;

  wire clk;
  wire [3:0]in_data;
  wire in_valid;
  wire \largest[3]_i_2_n_0 ;
  wire [3:0]out_largest;
  wire p_0_in;
  wire reset;
  wire [3:0]valid_input;
  wire \valid_input[3]_i_1_n_0 ;

  LUT3 #(
    .INIT(8'hB2)) 
    \largest[3]_i_1 
       (.I0(\largest[3]_i_2_n_0 ),
        .I1(out_largest[3]),
        .I2(valid_input[3]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h2F02FFFF00002F02)) 
    \largest[3]_i_2 
       (.I0(valid_input[0]),
        .I1(out_largest[0]),
        .I2(out_largest[1]),
        .I3(valid_input[1]),
        .I4(out_largest[2]),
        .I5(valid_input[2]),
        .O(\largest[3]_i_2_n_0 ));
  FDRE \largest_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(valid_input[0]),
        .Q(out_largest[0]),
        .R(reset));
  FDRE \largest_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(valid_input[1]),
        .Q(out_largest[1]),
        .R(reset));
  FDRE \largest_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(valid_input[2]),
        .Q(out_largest[2]),
        .R(reset));
  FDRE \largest_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(valid_input[3]),
        .Q(out_largest[3]),
        .R(reset));
  LUT2 #(
    .INIT(4'hB)) 
    \valid_input[3]_i_1 
       (.I0(reset),
        .I1(in_valid),
        .O(\valid_input[3]_i_1_n_0 ));
  FDRE \valid_input_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(in_data[0]),
        .Q(valid_input[0]),
        .R(\valid_input[3]_i_1_n_0 ));
  FDRE \valid_input_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(in_data[1]),
        .Q(valid_input[1]),
        .R(\valid_input[3]_i_1_n_0 ));
  FDRE \valid_input_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(in_data[2]),
        .Q(valid_input[2]),
        .R(\valid_input[3]_i_1_n_0 ));
  FDRE \valid_input_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(in_data[3]),
        .Q(valid_input[3]),
        .R(\valid_input[3]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
`endif
