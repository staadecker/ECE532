`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2024 11:22:17 AM
// Design Name: 
// Module Name: mask_axi532
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mask_axi532
(
  input aclk,
  input aresetn,

  // AXI-Lite slave interface
  input [31:0]  S_AXI_AWADDR,
  input         S_AXI_AWVALID,
  output        S_AXI_AWREADY,

  input [31:0]  S_AXI_WDATA,
  input         S_AXI_WVALID,
  output        S_AXI_WREADY,

  output [1:0]  S_AXI_BRESP,
  output        S_AXI_BVALID,
  input         S_AXI_BREADY,

  input [31:0]  S_AXI_ARADDR,
  input         S_AXI_ARVALID,
  output        S_AXI_ARREADY,

  output [31:0] S_AXI_RDATA,
  output [1:0]  S_AXI_RRESP,
  output        S_AXI_RVALID,
  input         S_AXI_RREADY,

  // AXI-Lite master interface
  output [31:0] M_AXI_AWADDR,
  output        M_AXI_AWVALID,
  input         M_AXI_AWREADY,

  output [31:0] M_AXI_WDATA,
  output [3:0]  M_AXI_WSTRB,
  output        M_AXI_WVALID,
  input         M_AXI_WREADY,

  input [1:0]   M_AXI_BRESP,
  input         M_AXI_BVALID,
  output        M_AXI_BREADY,
  output [2:0]  M_AXI_AWPROT
);
    
    wire [31:0] n;
    wire [31:0] data_value;
    wire [31:0] output_addr;
    wire init_write;
    assign M_AXI_AWPROT = 3'b000;
    
    mask_axi_lite_slave slave (
        .S_AXI_ACLK(aclk),
		.S_AXI_ARESETN(aresetn),
		.S_AXI_AWADDR(S_AXI_AWADDR),
		.S_AXI_AWVALID(S_AXI_AWVALID),
		.S_AXI_AWREADY(S_AXI_AWREADY),
		.S_AXI_WDATA(S_AXI_WDATA),
		.S_AXI_WVALID(S_AXI_WVALID),
		.S_AXI_WREADY(S_AXI_WREADY),
		.S_AXI_BRESP(S_AXI_BRESP),
		.S_AXI_BVALID(S_AXI_BVALID),
		.S_AXI_BREADY(S_AXI_BREADY),
		.S_AXI_ARADDR(S_AXI_ARADDR),
		.S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_ARREADY(S_AXI_ARREADY),
		.S_AXI_RDATA(S_AXI_RDATA),
		.S_AXI_RRESP(S_AXI_RRESP),
		.S_AXI_RVALID(S_AXI_RVALID),
		.S_AXI_RREADY(S_AXI_RREADY),
		.REG_0(n),
		.REG_1(data_value),
		.REG_2(M_AXI_AWADDR),
		.REG_3(init_write)
    );
    
    mask532 mask532 (
        .n(n),
        .value_in(data_value),
        .value_out(M_AXI_WDATA)
    );
    
    
    mask_axi_lite_master master (
        .INIT_AXI_TXN(init_write),
		.M_AXI_ACLK(aclk),
		.M_AXI_ARESETN(aresetn),
		.M_AXI_AWVALID(M_AXI_AWVALID),
		.M_AXI_AWREADY(M_AXI_AWREADY),
		.M_AXI_WSTRB(M_AXI_WSTRB),
		.M_AXI_WVALID(M_AXI_WVALID),
		.M_AXI_WREADY(M_AXI_WREADY),
        .M_AXI_BRESP(M_AXI_BRESP),
		.M_AXI_BVALID(M_AXI_BVALID),
		.M_AXI_BREADY(M_AXI_BREADY)
    ); 
endmodule
