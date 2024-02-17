//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Jan 31 14:47:01 2024
//Host        : StaaBuG15 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (aclk,
    aresetn,
    leds);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_RESET aresetn, CLK_DOMAIN design_1_aclk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;
  output [15:0]leds;

  wire aclk_1;
  wire aresetn_1;
  wire [15:0]axi_gpio_0_gpio_io_o;
  wire [31:0]axi_vip_0_M_AXI_ARADDR;
  wire axi_vip_0_M_AXI_ARREADY;
  wire axi_vip_0_M_AXI_ARVALID;
  wire [31:0]axi_vip_0_M_AXI_AWADDR;
  wire axi_vip_0_M_AXI_AWREADY;
  wire axi_vip_0_M_AXI_AWVALID;
  wire axi_vip_0_M_AXI_BREADY;
  wire [1:0]axi_vip_0_M_AXI_BRESP;
  wire axi_vip_0_M_AXI_BVALID;
  wire [31:0]axi_vip_0_M_AXI_RDATA;
  wire axi_vip_0_M_AXI_RREADY;
  wire [1:0]axi_vip_0_M_AXI_RRESP;
  wire axi_vip_0_M_AXI_RVALID;
  wire [31:0]axi_vip_0_M_AXI_WDATA;
  wire axi_vip_0_M_AXI_WREADY;
  wire [3:0]axi_vip_0_M_AXI_WSTRB;
  wire axi_vip_0_M_AXI_WVALID;
  wire [4:0]xlconstant_0_dout;

  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  assign leds[15:0] = axi_gpio_0_gpio_io_o;
  design_1_axi_gpio_0_0 axi_gpio_0
       (.gpio2_io_i(xlconstant_0_dout),
        .gpio_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(aclk_1),
        .s_axi_araddr(axi_vip_0_M_AXI_ARADDR[8:0]),
        .s_axi_aresetn(aresetn_1),
        .s_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .s_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .s_axi_awaddr(axi_vip_0_M_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .s_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .s_axi_bready(axi_vip_0_M_AXI_BREADY),
        .s_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .s_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .s_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .s_axi_rready(axi_vip_0_M_AXI_RREADY),
        .s_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .s_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .s_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .s_axi_wready(axi_vip_0_M_AXI_WREADY),
        .s_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .s_axi_wvalid(axi_vip_0_M_AXI_WVALID));
  design_1_axi_vip_0_0 axi_vip_0
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axi_araddr(axi_vip_0_M_AXI_ARADDR),
        .m_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_0_M_AXI_AWADDR),
        .m_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_0_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .m_axi_rready(axi_vip_0_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .m_axi_wready(axi_vip_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_0_M_AXI_WVALID));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
