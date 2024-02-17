`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/16/2024 02:20:54 PM
// Design Name: 
// Module Name: axi_lite_slave_tb
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


module axi_lite_slave_tb;
    reg aclk;
    reg aresetn;
    reg [3:0] S_AXI_AWADDR;
    reg S_AXI_AWVALID;
    wire S_AXI_AWREADY;
    reg [31:0] S_AXI_WDATA;
    reg S_AXI_WVALID;
    wire S_AXI_WREADY;
    wire [1:0] S_AXI_BRESP;
    wire S_AXI_BVALID;
    reg S_AXI_BREADY;
    reg [3:0] S_AXI_ARADDR;
    reg S_AXI_ARVALID;
    wire S_AXI_ARREADY;
    wire [31:0] S_AXI_RDATA;
    wire S_AXI_RVALID;
    reg S_AXI_RREADY;
    wire [1:0] S_AXI_RRESP;
    
    wire [31:0] REG_0;
    wire [31:0] REG_1;
    wire [31:0] REG_2;
    wire REG_3;
    
    

    initial begin
        aclk = 1'b0;
        aresetn = 1'b0;
        S_AXI_AWADDR = 0;
        S_AXI_AWVALID = 0;
        S_AXI_WDATA = 0;
        S_AXI_BREADY = 0;
        S_AXI_WVALID = 0;
        S_AXI_ARADDR = 0;
        S_AXI_ARVALID = 0;
        S_AXI_RREADY = 0;
        forever begin
            #1 aclk = ~aclk;
        end
    end
    
    
    
    mask_axi_lite_slave dut (
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
		.REG_0(REG_0),
		.REG_1(REG_1),
		.REG_2(REG_2),
		.REG_3(REG_3)
    );
    
    initial begin
        #2 aresetn = 1'b1;
        #2 S_AXI_AWADDR = 32'hC;
        #2 S_AXI_AWVALID = 1;
        #2 S_AXI_WDATA = 32'hFF;
        #2 S_AXI_WVALID = 1;
        #4 S_AXI_BREADY = 1;
        S_AXI_WVALID = 0;
        S_AXI_AWVALID = 0;
        #2 S_AXI_BREADY = 0;
         
        #30 $finish();
    end
endmodule
