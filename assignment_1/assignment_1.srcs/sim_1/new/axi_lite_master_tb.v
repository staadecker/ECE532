`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2024 02:03:37 PM
// Design Name: 
// Module Name: axi_lite_master_tb
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


module axi_lite_master_tb;
    reg aclk;
    reg aresetn;
    reg init_write;
    wire M_AXI_AWPROT;
    wire M_AXI_AWVALID;
    reg awready;
    wire M_AXI_WSTRB;
    wire M_AXI_WVALID;
    reg wready;
    reg [1:0] bresp;
    reg bvalid;
    wire M_AXI_BREADY;
    
    

    initial begin
        aclk = 1'b0;
        aresetn = 1'b0;
        init_write = 1'b0;
        awready = 1'b0;
        wready = 1'b0;
        bresp = 2'b0;
        bvalid = 1'b0;
        forever begin
            #1 aclk = ~aclk;
        end
    end
    
    
    
    mask_axi_lite_master dut (
        .INIT_AXI_TXN(init_write),
		.M_AXI_ACLK(aclk),
		.M_AXI_ARESETN(aresetn),
		.M_AXI_AWVALID(M_AXI_AWVALID),
		.M_AXI_AWREADY(awready),
		.M_AXI_WSTRB(M_AXI_WSTRB),
		.M_AXI_WVALID(M_AXI_WVALID),
		.M_AXI_WREADY(wready),
        .M_AXI_BRESP(bresp),
		.M_AXI_BVALID(bvalid),
		.M_AXI_BREADY(M_AXI_BREADY)
    ); 
    
    initial begin
        #2 aresetn = 1'b1;
        #2
        #4 init_write = 1'b1;
        #4 init_write = 1'b0;
        #12 awready = 1'b1;
        #4 awready = 1'b0;
        #8 wready = 1'b1;
        #4 wready = 1'b0;
        #4 bvalid = 1'b1;
        #4 bvalid = 1'b0;
        #30 $finish();
    end
endmodule
