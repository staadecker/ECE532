// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Feb 16 16:17:19 2024
// Host        : StaaBuG15 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/machs/Software/ECE532/assignment_1_part_3_new/assignment_1_part_3_new.srcs/sources_1/bd/design_1/ip/design_1_mask_axi532_0_0/design_1_mask_axi532_0_0_sim_netlist.v
// Design      : design_1_mask_axi532_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mask_axi532_0_0,mask_axi532,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "mask_axi532,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_mask_axi532_0_0
   (aclk,
    aresetn,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RVALID,
    S_AXI_RREADY,
    M_AXI_AWADDR,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_AWPROT,
    M_AXI_WDATA,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_WSTRB,
    M_AXI_BRESP,
    M_AXI_BVALID,
    M_AXI_BREADY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M_AXI:S_AXI, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_aclk, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]M_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output M_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input M_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]M_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]M_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output M_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input M_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]M_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input M_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input M_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output M_AXI_BREADY;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]M_AXI_AWADDR;
  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID;
  wire M_AXI_BREADY;
  wire M_AXI_BVALID;
  wire [31:0]M_AXI_WDATA;
  wire M_AXI_WREADY;
  wire M_AXI_WVALID;
  wire [31:0]S_AXI_ARADDR;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [31:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire aclk;
  wire aresetn;

  assign M_AXI_AWPROT[2] = \<const0> ;
  assign M_AXI_AWPROT[1] = \<const0> ;
  assign M_AXI_AWPROT[0] = \<const0> ;
  assign M_AXI_WSTRB[3] = \<const1> ;
  assign M_AXI_WSTRB[2] = \<const1> ;
  assign M_AXI_WSTRB[1] = \<const1> ;
  assign M_AXI_WSTRB[0] = \<const1> ;
  assign S_AXI_BRESP = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_mask_axi532_0_0_mask_axi532 inst
       (.M_AXI_AWADDR(M_AXI_AWADDR),
        .M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_AWVALID(M_AXI_AWVALID),
        .M_AXI_BREADY(M_AXI_BREADY),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_WDATA(M_AXI_WDATA),
        .M_AXI_WREADY(M_AXI_WREADY),
        .M_AXI_WVALID(M_AXI_WVALID),
        .S_AXI_ARADDR(S_AXI_ARADDR[3:2]),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[3:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .aclk(aclk),
        .aresetn(aresetn));
endmodule

(* ORIG_REF_NAME = "mask532" *) 
module design_1_mask_axi532_0_0_mask532
   (M_AXI_WDATA,
    Q,
    \M_AXI_WDATA[0] );
  output [29:0]M_AXI_WDATA;
  input [29:0]Q;
  input [4:0]\M_AXI_WDATA[0] ;

  wire [29:0]M_AXI_WDATA;
  wire [4:0]\M_AXI_WDATA[0] ;
  wire [29:0]Q;

  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \M_AXI_WDATA[0]_INST_0 
       (.I0(Q[0]),
        .I1(\M_AXI_WDATA[0] [0]),
        .I2(\M_AXI_WDATA[0] [2]),
        .I3(\M_AXI_WDATA[0] [1]),
        .I4(\M_AXI_WDATA[0] [4]),
        .I5(\M_AXI_WDATA[0] [3]),
        .O(M_AXI_WDATA[0]));
  LUT6 #(
    .INIT(64'h0002020222222222)) 
    \M_AXI_WDATA[10]_INST_0 
       (.I0(Q[10]),
        .I1(\M_AXI_WDATA[0] [4]),
        .I2(\M_AXI_WDATA[0] [2]),
        .I3(\M_AXI_WDATA[0] [1]),
        .I4(\M_AXI_WDATA[0] [0]),
        .I5(\M_AXI_WDATA[0] [3]),
        .O(M_AXI_WDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \M_AXI_WDATA[11]_INST_0 
       (.I0(Q[11]),
        .I1(\M_AXI_WDATA[0] [2]),
        .I2(\M_AXI_WDATA[0] [3]),
        .I3(\M_AXI_WDATA[0] [4]),
        .O(M_AXI_WDATA[11]));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \M_AXI_WDATA[12]_INST_0 
       (.I0(Q[12]),
        .I1(\M_AXI_WDATA[0] [4]),
        .I2(\M_AXI_WDATA[0] [0]),
        .I3(\M_AXI_WDATA[0] [1]),
        .I4(\M_AXI_WDATA[0] [3]),
        .I5(\M_AXI_WDATA[0] [2]),
        .O(M_AXI_WDATA[12]));
  LUT5 #(
    .INIT(32'h00002AAA)) 
    \M_AXI_WDATA[13]_INST_0 
       (.I0(Q[13]),
        .I1(\M_AXI_WDATA[0] [1]),
        .I2(\M_AXI_WDATA[0] [3]),
        .I3(\M_AXI_WDATA[0] [2]),
        .I4(\M_AXI_WDATA[0] [4]),
        .O(M_AXI_WDATA[13]));
  LUT6 #(
    .INIT(64'h0222222222222222)) 
    \M_AXI_WDATA[14]_INST_0 
       (.I0(Q[14]),
        .I1(\M_AXI_WDATA[0] [4]),
        .I2(\M_AXI_WDATA[0] [2]),
        .I3(\M_AXI_WDATA[0] [3]),
        .I4(\M_AXI_WDATA[0] [1]),
        .I5(\M_AXI_WDATA[0] [0]),
        .O(M_AXI_WDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \M_AXI_WDATA[15]_INST_0 
       (.I0(Q[15]),
        .I1(\M_AXI_WDATA[0] [4]),
        .O(M_AXI_WDATA[15]));
  LUT6 #(
    .INIT(64'h222222222222222A)) 
    \M_AXI_WDATA[16]_INST_0 
       (.I0(Q[16]),
        .I1(\M_AXI_WDATA[0] [4]),
        .I2(\M_AXI_WDATA[0] [2]),
        .I3(\M_AXI_WDATA[0] [3]),
        .I4(\M_AXI_WDATA[0] [1]),
        .I5(\M_AXI_WDATA[0] [0]),
        .O(M_AXI_WDATA[16]));
  LUT5 #(
    .INIT(32'h0002AAAA)) 
    \M_AXI_WDATA[17]_INST_0 
       (.I0(Q[17]),
        .I1(\M_AXI_WDATA[0] [1]),
        .I2(\M_AXI_WDATA[0] [3]),
        .I3(\M_AXI_WDATA[0] [2]),
        .I4(\M_AXI_WDATA[0] [4]),
        .O(M_AXI_WDATA[17]));
  LUT6 #(
    .INIT(64'h2222222222222AAA)) 
    \M_AXI_WDATA[18]_INST_0 
       (.I0(Q[18]),
        .I1(\M_AXI_WDATA[0] [4]),
        .I2(\M_AXI_WDATA[0] [0]),
        .I3(\M_AXI_WDATA[0] [1]),
        .I4(\M_AXI_WDATA[0] [3]),
        .I5(\M_AXI_WDATA[0] [2]),
        .O(M_AXI_WDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h02AA)) 
    \M_AXI_WDATA[19]_INST_0 
       (.I0(Q[19]),
        .I1(\M_AXI_WDATA[0] [2]),
        .I2(\M_AXI_WDATA[0] [3]),
        .I3(\M_AXI_WDATA[0] [4]),
        .O(M_AXI_WDATA[19]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \M_AXI_WDATA[1]_INST_0 
       (.I0(Q[1]),
        .I1(\M_AXI_WDATA[0] [3]),
        .I2(\M_AXI_WDATA[0] [4]),
        .I3(\M_AXI_WDATA[0] [1]),
        .I4(\M_AXI_WDATA[0] [2]),
        .O(M_AXI_WDATA[1]));
  LUT6 #(
    .INIT(64'h222222222A2A2AAA)) 
    \M_AXI_WDATA[20]_INST_0 
       (.I0(Q[20]),
        .I1(\M_AXI_WDATA[0] [4]),
        .I2(\M_AXI_WDATA[0] [2]),
        .I3(\M_AXI_WDATA[0] [1]),
        .I4(\M_AXI_WDATA[0] [0]),
        .I5(\M_AXI_WDATA[0] [3]),
        .O(M_AXI_WDATA[20]));
  LUT5 #(
    .INIT(32'h22222AAA)) 
    \M_AXI_WDATA[21]_INST_0 
       (.I0(Q[21]),
        .I1(\M_AXI_WDATA[0] [4]),
        .I2(\M_AXI_WDATA[0] [1]),
        .I3(\M_AXI_WDATA[0] [2]),
        .I4(\M_AXI_WDATA[0] [3]),
        .O(M_AXI_WDATA[21]));
  LUT6 #(
    .INIT(64'h222222222AAAAAAA)) 
    \M_AXI_WDATA[22]_INST_0 
       (.I0(Q[22]),
        .I1(\M_AXI_WDATA[0] [4]),
        .I2(\M_AXI_WDATA[0] [0]),
        .I3(\M_AXI_WDATA[0] [1]),
        .I4(\M_AXI_WDATA[0] [2]),
        .I5(\M_AXI_WDATA[0] [3]),
        .O(M_AXI_WDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \M_AXI_WDATA[23]_INST_0 
       (.I0(Q[23]),
        .I1(\M_AXI_WDATA[0] [3]),
        .I2(\M_AXI_WDATA[0] [4]),
        .O(M_AXI_WDATA[23]));
  LUT6 #(
    .INIT(64'h0002AAAAAAAAAAAA)) 
    \M_AXI_WDATA[24]_INST_0 
       (.I0(Q[24]),
        .I1(\M_AXI_WDATA[0] [2]),
        .I2(\M_AXI_WDATA[0] [1]),
        .I3(\M_AXI_WDATA[0] [0]),
        .I4(\M_AXI_WDATA[0] [3]),
        .I5(\M_AXI_WDATA[0] [4]),
        .O(M_AXI_WDATA[24]));
  LUT5 #(
    .INIT(32'h02AAAAAA)) 
    \M_AXI_WDATA[25]_INST_0 
       (.I0(Q[25]),
        .I1(\M_AXI_WDATA[0] [1]),
        .I2(\M_AXI_WDATA[0] [2]),
        .I3(\M_AXI_WDATA[0] [3]),
        .I4(\M_AXI_WDATA[0] [4]),
        .O(M_AXI_WDATA[25]));
  LUT6 #(
    .INIT(64'h002AAAAAAAAAAAAA)) 
    \M_AXI_WDATA[26]_INST_0 
       (.I0(Q[26]),
        .I1(\M_AXI_WDATA[0] [0]),
        .I2(\M_AXI_WDATA[0] [1]),
        .I3(\M_AXI_WDATA[0] [2]),
        .I4(\M_AXI_WDATA[0] [3]),
        .I5(\M_AXI_WDATA[0] [4]),
        .O(M_AXI_WDATA[26]));
  LUT6 #(
    .INIT(64'h2AAA2AAA2AAAAAAA)) 
    \M_AXI_WDATA[28]_INST_0 
       (.I0(Q[27]),
        .I1(\M_AXI_WDATA[0] [2]),
        .I2(\M_AXI_WDATA[0] [4]),
        .I3(\M_AXI_WDATA[0] [3]),
        .I4(\M_AXI_WDATA[0] [1]),
        .I5(\M_AXI_WDATA[0] [0]),
        .O(M_AXI_WDATA[27]));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \M_AXI_WDATA[29]_INST_0 
       (.I0(Q[28]),
        .I1(\M_AXI_WDATA[0] [1]),
        .I2(\M_AXI_WDATA[0] [2]),
        .I3(\M_AXI_WDATA[0] [4]),
        .I4(\M_AXI_WDATA[0] [3]),
        .O(M_AXI_WDATA[28]));
  LUT6 #(
    .INIT(64'h0000000200020002)) 
    \M_AXI_WDATA[2]_INST_0 
       (.I0(Q[2]),
        .I1(\M_AXI_WDATA[0] [2]),
        .I2(\M_AXI_WDATA[0] [4]),
        .I3(\M_AXI_WDATA[0] [3]),
        .I4(\M_AXI_WDATA[0] [1]),
        .I5(\M_AXI_WDATA[0] [0]),
        .O(M_AXI_WDATA[2]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \M_AXI_WDATA[30]_INST_0 
       (.I0(Q[29]),
        .I1(\M_AXI_WDATA[0] [0]),
        .I2(\M_AXI_WDATA[0] [2]),
        .I3(\M_AXI_WDATA[0] [1]),
        .I4(\M_AXI_WDATA[0] [4]),
        .I5(\M_AXI_WDATA[0] [3]),
        .O(M_AXI_WDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \M_AXI_WDATA[3]_INST_0 
       (.I0(Q[3]),
        .I1(\M_AXI_WDATA[0] [3]),
        .I2(\M_AXI_WDATA[0] [4]),
        .I3(\M_AXI_WDATA[0] [2]),
        .O(M_AXI_WDATA[3]));
  LUT6 #(
    .INIT(64'h0000000202020202)) 
    \M_AXI_WDATA[4]_INST_0 
       (.I0(Q[4]),
        .I1(\M_AXI_WDATA[0] [3]),
        .I2(\M_AXI_WDATA[0] [4]),
        .I3(\M_AXI_WDATA[0] [0]),
        .I4(\M_AXI_WDATA[0] [1]),
        .I5(\M_AXI_WDATA[0] [2]),
        .O(M_AXI_WDATA[4]));
  LUT5 #(
    .INIT(32'h00020202)) 
    \M_AXI_WDATA[5]_INST_0 
       (.I0(Q[5]),
        .I1(\M_AXI_WDATA[0] [3]),
        .I2(\M_AXI_WDATA[0] [4]),
        .I3(\M_AXI_WDATA[0] [2]),
        .I4(\M_AXI_WDATA[0] [1]),
        .O(M_AXI_WDATA[5]));
  LUT6 #(
    .INIT(64'h0002020202020202)) 
    \M_AXI_WDATA[6]_INST_0 
       (.I0(Q[6]),
        .I1(\M_AXI_WDATA[0] [3]),
        .I2(\M_AXI_WDATA[0] [4]),
        .I3(\M_AXI_WDATA[0] [2]),
        .I4(\M_AXI_WDATA[0] [1]),
        .I5(\M_AXI_WDATA[0] [0]),
        .O(M_AXI_WDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \M_AXI_WDATA[7]_INST_0 
       (.I0(Q[7]),
        .I1(\M_AXI_WDATA[0] [4]),
        .I2(\M_AXI_WDATA[0] [3]),
        .O(M_AXI_WDATA[7]));
  LUT6 #(
    .INIT(64'h0000000222222222)) 
    \M_AXI_WDATA[8]_INST_0 
       (.I0(Q[8]),
        .I1(\M_AXI_WDATA[0] [4]),
        .I2(\M_AXI_WDATA[0] [0]),
        .I3(\M_AXI_WDATA[0] [1]),
        .I4(\M_AXI_WDATA[0] [2]),
        .I5(\M_AXI_WDATA[0] [3]),
        .O(M_AXI_WDATA[8]));
  LUT5 #(
    .INIT(32'h02020222)) 
    \M_AXI_WDATA[9]_INST_0 
       (.I0(Q[9]),
        .I1(\M_AXI_WDATA[0] [4]),
        .I2(\M_AXI_WDATA[0] [3]),
        .I3(\M_AXI_WDATA[0] [2]),
        .I4(\M_AXI_WDATA[0] [1]),
        .O(M_AXI_WDATA[9]));
endmodule

(* ORIG_REF_NAME = "mask_axi532" *) 
module design_1_mask_axi532_0_0_mask_axi532
   (M_AXI_WDATA,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    M_AXI_AWADDR,
    S_AXI_RDATA,
    M_AXI_BREADY,
    S_AXI_RVALID,
    S_AXI_BVALID,
    M_AXI_AWVALID,
    M_AXI_WVALID,
    aclk,
    S_AXI_AWADDR,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_WDATA,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    M_AXI_BVALID,
    aresetn,
    S_AXI_BREADY,
    S_AXI_RREADY,
    M_AXI_AWREADY,
    M_AXI_WREADY);
  output [31:0]M_AXI_WDATA;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]M_AXI_AWADDR;
  output [31:0]S_AXI_RDATA;
  output M_AXI_BREADY;
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  output M_AXI_AWVALID;
  output M_AXI_WVALID;
  input aclk;
  input [1:0]S_AXI_AWADDR;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input [31:0]S_AXI_WDATA;
  input [1:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  input M_AXI_BVALID;
  input aresetn;
  input S_AXI_BREADY;
  input S_AXI_RREADY;
  input M_AXI_AWREADY;
  input M_AXI_WREADY;

  wire [31:0]M_AXI_AWADDR;
  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID;
  wire M_AXI_BREADY;
  wire M_AXI_BVALID;
  wire [31:0]M_AXI_WDATA;
  wire M_AXI_WREADY;
  wire M_AXI_WVALID;
  wire [1:0]S_AXI_ARADDR;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [1:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire aclk;
  wire aresetn;
  wire [30:0]data_value;
  wire init_write;
  wire [4:0]n;
  wire p_0_in;

  design_1_mask_axi532_0_0_mask532 mask532
       (.M_AXI_WDATA({M_AXI_WDATA[30:28],M_AXI_WDATA[26:0]}),
        .\M_AXI_WDATA[0] (n),
        .Q({data_value[30:28],data_value[26:0]}));
  design_1_mask_axi532_0_0_mask_axi_lite_master master
       (.M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_AWVALID(M_AXI_AWVALID),
        .M_AXI_BREADY(M_AXI_BREADY),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_WREADY(M_AXI_WREADY),
        .M_AXI_WVALID(M_AXI_WVALID),
        .aclk(aclk),
        .init_write(init_write),
        .p_0_in(p_0_in));
  design_1_mask_axi532_0_0_mask_axi_lite_slave slave
       (.M_AXI_AWADDR(M_AXI_AWADDR),
        .M_AXI_WDATA({M_AXI_WDATA[31],M_AXI_WDATA[27]}),
        .Q({data_value[30:28],data_value[26:0]}),
        .SR(p_0_in),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WVALID(S_AXI_WVALID),
        .aclk(aclk),
        .aresetn(aresetn),
        .axi_arready_reg_0(S_AXI_ARREADY),
        .axi_awready_reg_0(S_AXI_AWREADY),
        .axi_wready_reg_0(S_AXI_WREADY),
        .init_write(init_write),
        .\slv_reg0_reg[4]_0 (n));
endmodule

(* ORIG_REF_NAME = "mask_axi_lite_master" *) 
module design_1_mask_axi532_0_0_mask_axi_lite_master
   (M_AXI_BREADY,
    M_AXI_AWVALID,
    M_AXI_WVALID,
    p_0_in,
    aclk,
    M_AXI_BVALID,
    init_write,
    M_AXI_AWREADY,
    M_AXI_WREADY);
  output M_AXI_BREADY;
  output M_AXI_AWVALID;
  output M_AXI_WVALID;
  input p_0_in;
  input aclk;
  input M_AXI_BVALID;
  input init_write;
  input M_AXI_AWREADY;
  input M_AXI_WREADY;

  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID;
  wire M_AXI_BREADY;
  wire M_AXI_BVALID;
  wire M_AXI_WREADY;
  wire M_AXI_WVALID;
  wire aclk;
  wire axi_awvalid_i_1_n_0;
  wire axi_bready_i_1_n_0;
  wire axi_wvalid_i_1_n_0;
  wire init_write;
  wire is_writing;
  wire is_writing_i_1_n_0;
  wire p_0_in;
  wire start_single_write;
  wire start_single_write_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    axi_awvalid_i_1
       (.I0(start_single_write),
        .I1(M_AXI_AWVALID),
        .I2(M_AXI_AWREADY),
        .O(axi_awvalid_i_1_n_0));
  FDRE axi_awvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(axi_awvalid_i_1_n_0),
        .Q(M_AXI_AWVALID),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h4)) 
    axi_bready_i_1
       (.I0(M_AXI_BREADY),
        .I1(M_AXI_BVALID),
        .O(axi_bready_i_1_n_0));
  FDRE axi_bready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(axi_bready_i_1_n_0),
        .Q(M_AXI_BREADY),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'hAE)) 
    axi_wvalid_i_1
       (.I0(start_single_write),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .O(axi_wvalid_i_1_n_0));
  FDRE axi_wvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(axi_wvalid_i_1_n_0),
        .Q(M_AXI_WVALID),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F70)) 
    is_writing_i_1
       (.I0(M_AXI_BVALID),
        .I1(M_AXI_BREADY),
        .I2(is_writing),
        .I3(init_write),
        .O(is_writing_i_1_n_0));
  FDRE is_writing_reg
       (.C(aclk),
        .CE(1'b1),
        .D(is_writing_i_1_n_0),
        .Q(is_writing),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h32)) 
    start_single_write_i_1
       (.I0(init_write),
        .I1(is_writing),
        .I2(start_single_write),
        .O(start_single_write_i_1_n_0));
  FDRE start_single_write_reg
       (.C(aclk),
        .CE(1'b1),
        .D(start_single_write_i_1_n_0),
        .Q(start_single_write),
        .R(p_0_in));
endmodule

(* ORIG_REF_NAME = "mask_axi_lite_slave" *) 
module design_1_mask_axi532_0_0_mask_axi_lite_slave
   (axi_wready_reg_0,
    SR,
    axi_awready_reg_0,
    axi_arready_reg_0,
    S_AXI_BVALID,
    S_AXI_RVALID,
    init_write,
    M_AXI_WDATA,
    Q,
    \slv_reg0_reg[4]_0 ,
    M_AXI_AWADDR,
    S_AXI_RDATA,
    aclk,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_BREADY,
    S_AXI_ARVALID,
    S_AXI_RREADY,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    S_AXI_ARADDR,
    aresetn);
  output axi_wready_reg_0;
  output [0:0]SR;
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  output init_write;
  output [1:0]M_AXI_WDATA;
  output [29:0]Q;
  output [4:0]\slv_reg0_reg[4]_0 ;
  output [31:0]M_AXI_AWADDR;
  output [31:0]S_AXI_RDATA;
  input aclk;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;
  input [1:0]S_AXI_AWADDR;
  input [31:0]S_AXI_WDATA;
  input [1:0]S_AXI_ARADDR;
  input aresetn;

  wire [31:0]M_AXI_AWADDR;
  wire [1:0]M_AXI_WDATA;
  wire [29:0]Q;
  wire [0:0]SR;
  wire [1:0]S_AXI_ARADDR;
  wire S_AXI_ARVALID;
  wire [1:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WVALID;
  wire aclk;
  wire aresetn;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0__0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0__0;
  wire axi_wready_reg_0;
  wire [27:27]data_value;
  wire init_write;
  wire [1:0]p_0_in;
  wire [31:0]reg_data_out;
  wire [31:5]slv_reg0;
  wire slv_reg0_0;
  wire [4:0]\slv_reg0_reg[4]_0 ;
  wire slv_reg1;
  wire slv_reg2;
  wire slv_reg3_i_1_n_0;
  wire slv_reg_rden__0;
  wire slv_reg_wren;

  LUT4 #(
    .INIT(16'h2AAA)) 
    \M_AXI_WDATA[27]_INST_0 
       (.I0(data_value),
        .I1(\slv_reg0_reg[4]_0 [3]),
        .I2(\slv_reg0_reg[4]_0 [4]),
        .I3(\slv_reg0_reg[4]_0 [2]),
        .O(M_AXI_WDATA[0]));
  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(S_AXI_AWVALID),
        .I1(aw_en_reg_n_0),
        .I2(axi_awready_reg_0),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(SR));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(S_AXI_ARADDR[0]),
        .I1(S_AXI_ARVALID),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(S_AXI_ARADDR[1]),
        .I1(S_AXI_ARVALID),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(SR));
  FDRE \axi_araddr_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(S_AXI_AWADDR[0]),
        .I1(S_AXI_WVALID),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWVALID),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(S_AXI_AWADDR[1]),
        .I1(S_AXI_WVALID),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWVALID),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(SR));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready0
       (.I0(S_AXI_WVALID),
        .I1(axi_awready_reg_0),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWVALID),
        .O(axi_awready0__0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(aresetn),
        .O(SR));
  FDRE axi_awready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(axi_awready0__0),
        .Q(axi_awready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(SR));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[0]_i_1 
       (.I0(Q[0]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[0]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg[4]_0 [0]),
        .O(reg_data_out[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[10]_i_1 
       (.I0(Q[10]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[10]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[10]),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[11]_i_1 
       (.I0(Q[11]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[11]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[11]),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[12]_i_1 
       (.I0(Q[12]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[12]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[12]),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[13]_i_1 
       (.I0(Q[13]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[13]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[13]),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[14]_i_1 
       (.I0(Q[14]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[14]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[14]),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[15]_i_1 
       (.I0(Q[15]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[15]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[15]),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[16]_i_1 
       (.I0(Q[16]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[16]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[16]),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[17]_i_1 
       (.I0(Q[17]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[17]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[17]),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[18]_i_1 
       (.I0(Q[18]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[18]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[18]),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[19]_i_1 
       (.I0(Q[19]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[19]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[19]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[1]_i_1 
       (.I0(Q[1]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[1]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg[4]_0 [1]),
        .O(reg_data_out[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[20]_i_1 
       (.I0(Q[20]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[20]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[20]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[21]_i_1 
       (.I0(Q[21]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[21]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[21]),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[22]_i_1 
       (.I0(Q[22]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[22]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[22]),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[23]_i_1 
       (.I0(Q[23]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[23]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[23]),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[24]_i_1 
       (.I0(Q[24]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[24]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[24]),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[25]_i_1 
       (.I0(Q[25]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[25]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[25]),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[26]_i_1 
       (.I0(Q[26]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[26]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[26]),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[27]_i_1 
       (.I0(data_value),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[27]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[27]),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[28]_i_1 
       (.I0(Q[27]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[28]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[28]),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[29]_i_1 
       (.I0(Q[28]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[29]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[29]),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[2]_i_1 
       (.I0(Q[2]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[2]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg[4]_0 [2]),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[30]_i_1 
       (.I0(Q[29]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[30]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[30]),
        .O(reg_data_out[30]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[31]_i_1 
       (.I0(M_AXI_WDATA[1]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[31]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[31]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[3]_i_1 
       (.I0(Q[3]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[3]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg[4]_0 [3]),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[4]_i_1 
       (.I0(Q[4]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[4]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg[4]_0 [4]),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[5]_i_1 
       (.I0(Q[5]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[5]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[5]),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[6]_i_1 
       (.I0(Q[6]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[6]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[6]),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[7]_i_1 
       (.I0(Q[7]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[7]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[7]),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[8]_i_1 
       (.I0(Q[8]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[8]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[8]),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[9]_i_1 
       (.I0(Q[9]),
        .I1(axi_araddr[2]),
        .I2(M_AXI_AWADDR[9]),
        .I3(axi_araddr[3]),
        .I4(slv_reg0[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(S_AXI_RDATA[0]),
        .R(SR));
  FDRE \axi_rdata_reg[10] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(S_AXI_RDATA[10]),
        .R(SR));
  FDRE \axi_rdata_reg[11] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(S_AXI_RDATA[11]),
        .R(SR));
  FDRE \axi_rdata_reg[12] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(S_AXI_RDATA[12]),
        .R(SR));
  FDRE \axi_rdata_reg[13] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(S_AXI_RDATA[13]),
        .R(SR));
  FDRE \axi_rdata_reg[14] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(S_AXI_RDATA[14]),
        .R(SR));
  FDRE \axi_rdata_reg[15] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(S_AXI_RDATA[15]),
        .R(SR));
  FDRE \axi_rdata_reg[16] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(S_AXI_RDATA[16]),
        .R(SR));
  FDRE \axi_rdata_reg[17] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(S_AXI_RDATA[17]),
        .R(SR));
  FDRE \axi_rdata_reg[18] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(S_AXI_RDATA[18]),
        .R(SR));
  FDRE \axi_rdata_reg[19] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(S_AXI_RDATA[19]),
        .R(SR));
  FDRE \axi_rdata_reg[1] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(S_AXI_RDATA[1]),
        .R(SR));
  FDRE \axi_rdata_reg[20] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(S_AXI_RDATA[20]),
        .R(SR));
  FDRE \axi_rdata_reg[21] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(S_AXI_RDATA[21]),
        .R(SR));
  FDRE \axi_rdata_reg[22] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(S_AXI_RDATA[22]),
        .R(SR));
  FDRE \axi_rdata_reg[23] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(S_AXI_RDATA[23]),
        .R(SR));
  FDRE \axi_rdata_reg[24] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(S_AXI_RDATA[24]),
        .R(SR));
  FDRE \axi_rdata_reg[25] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(S_AXI_RDATA[25]),
        .R(SR));
  FDRE \axi_rdata_reg[26] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(S_AXI_RDATA[26]),
        .R(SR));
  FDRE \axi_rdata_reg[27] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(S_AXI_RDATA[27]),
        .R(SR));
  FDRE \axi_rdata_reg[28] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(S_AXI_RDATA[28]),
        .R(SR));
  FDRE \axi_rdata_reg[29] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(S_AXI_RDATA[29]),
        .R(SR));
  FDRE \axi_rdata_reg[2] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(S_AXI_RDATA[2]),
        .R(SR));
  FDRE \axi_rdata_reg[30] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(S_AXI_RDATA[30]),
        .R(SR));
  FDRE \axi_rdata_reg[31] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(S_AXI_RDATA[31]),
        .R(SR));
  FDRE \axi_rdata_reg[3] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(S_AXI_RDATA[3]),
        .R(SR));
  FDRE \axi_rdata_reg[4] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(S_AXI_RDATA[4]),
        .R(SR));
  FDRE \axi_rdata_reg[5] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(S_AXI_RDATA[5]),
        .R(SR));
  FDRE \axi_rdata_reg[6] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(S_AXI_RDATA[6]),
        .R(SR));
  FDRE \axi_rdata_reg[7] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(S_AXI_RDATA[7]),
        .R(SR));
  FDRE \axi_rdata_reg[8] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(S_AXI_RDATA[8]),
        .R(SR));
  FDRE \axi_rdata_reg[9] 
       (.C(aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(S_AXI_RDATA[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready0
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(axi_wready_reg_0),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0__0));
  FDRE axi_wready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(axi_wready0__0),
        .Q(axi_wready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg0[31]_i_1 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(slv_reg0_0));
  FDRE \slv_reg0_reg[0] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[0]),
        .Q(\slv_reg0_reg[4]_0 [0]),
        .R(SR));
  FDRE \slv_reg0_reg[10] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg0[10]),
        .R(SR));
  FDRE \slv_reg0_reg[11] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg0[11]),
        .R(SR));
  FDRE \slv_reg0_reg[12] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg0[12]),
        .R(SR));
  FDRE \slv_reg0_reg[13] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg0[13]),
        .R(SR));
  FDRE \slv_reg0_reg[14] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg0[14]),
        .R(SR));
  FDRE \slv_reg0_reg[15] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg0[15]),
        .R(SR));
  FDRE \slv_reg0_reg[16] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg0[16]),
        .R(SR));
  FDRE \slv_reg0_reg[17] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg0[17]),
        .R(SR));
  FDRE \slv_reg0_reg[18] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg0[18]),
        .R(SR));
  FDRE \slv_reg0_reg[19] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg0[19]),
        .R(SR));
  FDRE \slv_reg0_reg[1] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[1]),
        .Q(\slv_reg0_reg[4]_0 [1]),
        .R(SR));
  FDRE \slv_reg0_reg[20] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg0[20]),
        .R(SR));
  FDRE \slv_reg0_reg[21] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg0[21]),
        .R(SR));
  FDRE \slv_reg0_reg[22] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg0[22]),
        .R(SR));
  FDRE \slv_reg0_reg[23] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg0[23]),
        .R(SR));
  FDRE \slv_reg0_reg[24] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg0[24]),
        .R(SR));
  FDRE \slv_reg0_reg[25] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg0[25]),
        .R(SR));
  FDRE \slv_reg0_reg[26] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg0[26]),
        .R(SR));
  FDRE \slv_reg0_reg[27] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg0[27]),
        .R(SR));
  FDRE \slv_reg0_reg[28] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg0[28]),
        .R(SR));
  FDRE \slv_reg0_reg[29] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg0[29]),
        .R(SR));
  FDRE \slv_reg0_reg[2] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[2]),
        .Q(\slv_reg0_reg[4]_0 [2]),
        .R(SR));
  FDRE \slv_reg0_reg[30] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg0[30]),
        .R(SR));
  FDRE \slv_reg0_reg[31] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg0[31]),
        .R(SR));
  FDRE \slv_reg0_reg[3] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[3]),
        .Q(\slv_reg0_reg[4]_0 [3]),
        .R(SR));
  FDRE \slv_reg0_reg[4] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[4]),
        .Q(\slv_reg0_reg[4]_0 [4]),
        .R(SR));
  FDRE \slv_reg0_reg[5] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg0[5]),
        .R(SR));
  FDRE \slv_reg0_reg[6] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg0[6]),
        .R(SR));
  FDRE \slv_reg0_reg[7] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg0[7]),
        .R(SR));
  FDRE \slv_reg0_reg[8] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg0[8]),
        .R(SR));
  FDRE \slv_reg0_reg[9] 
       (.C(aclk),
        .CE(slv_reg0_0),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg0[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg1[31]_i_1 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(slv_reg1));
  FDRE \slv_reg1_reg[0] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \slv_reg1_reg[10] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \slv_reg1_reg[11] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \slv_reg1_reg[12] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \slv_reg1_reg[13] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \slv_reg1_reg[14] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \slv_reg1_reg[15] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \slv_reg1_reg[16] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \slv_reg1_reg[17] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \slv_reg1_reg[18] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \slv_reg1_reg[19] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \slv_reg1_reg[1] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \slv_reg1_reg[20] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \slv_reg1_reg[21] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \slv_reg1_reg[22] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \slv_reg1_reg[23] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \slv_reg1_reg[24] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \slv_reg1_reg[25] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \slv_reg1_reg[26] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE \slv_reg1_reg[27] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[27]),
        .Q(data_value),
        .R(SR));
  FDRE \slv_reg1_reg[28] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[28]),
        .Q(Q[27]),
        .R(SR));
  FDRE \slv_reg1_reg[29] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[29]),
        .Q(Q[28]),
        .R(SR));
  FDRE \slv_reg1_reg[2] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \slv_reg1_reg[30] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[30]),
        .Q(Q[29]),
        .R(SR));
  FDRE \slv_reg1_reg[31] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[31]),
        .Q(M_AXI_WDATA[1]),
        .R(SR));
  FDRE \slv_reg1_reg[3] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \slv_reg1_reg[4] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \slv_reg1_reg[5] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \slv_reg1_reg[6] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \slv_reg1_reg[7] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \slv_reg1_reg[8] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \slv_reg1_reg[9] 
       (.C(aclk),
        .CE(slv_reg1),
        .D(S_AXI_WDATA[9]),
        .Q(Q[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg2[31]_i_1 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(slv_reg2));
  FDRE \slv_reg2_reg[0] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[0]),
        .Q(M_AXI_AWADDR[0]),
        .R(SR));
  FDRE \slv_reg2_reg[10] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[10]),
        .Q(M_AXI_AWADDR[10]),
        .R(SR));
  FDRE \slv_reg2_reg[11] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[11]),
        .Q(M_AXI_AWADDR[11]),
        .R(SR));
  FDRE \slv_reg2_reg[12] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[12]),
        .Q(M_AXI_AWADDR[12]),
        .R(SR));
  FDRE \slv_reg2_reg[13] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[13]),
        .Q(M_AXI_AWADDR[13]),
        .R(SR));
  FDRE \slv_reg2_reg[14] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[14]),
        .Q(M_AXI_AWADDR[14]),
        .R(SR));
  FDRE \slv_reg2_reg[15] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[15]),
        .Q(M_AXI_AWADDR[15]),
        .R(SR));
  FDRE \slv_reg2_reg[16] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[16]),
        .Q(M_AXI_AWADDR[16]),
        .R(SR));
  FDRE \slv_reg2_reg[17] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[17]),
        .Q(M_AXI_AWADDR[17]),
        .R(SR));
  FDRE \slv_reg2_reg[18] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[18]),
        .Q(M_AXI_AWADDR[18]),
        .R(SR));
  FDRE \slv_reg2_reg[19] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[19]),
        .Q(M_AXI_AWADDR[19]),
        .R(SR));
  FDRE \slv_reg2_reg[1] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[1]),
        .Q(M_AXI_AWADDR[1]),
        .R(SR));
  FDRE \slv_reg2_reg[20] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[20]),
        .Q(M_AXI_AWADDR[20]),
        .R(SR));
  FDRE \slv_reg2_reg[21] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[21]),
        .Q(M_AXI_AWADDR[21]),
        .R(SR));
  FDRE \slv_reg2_reg[22] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[22]),
        .Q(M_AXI_AWADDR[22]),
        .R(SR));
  FDRE \slv_reg2_reg[23] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[23]),
        .Q(M_AXI_AWADDR[23]),
        .R(SR));
  FDRE \slv_reg2_reg[24] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[24]),
        .Q(M_AXI_AWADDR[24]),
        .R(SR));
  FDRE \slv_reg2_reg[25] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[25]),
        .Q(M_AXI_AWADDR[25]),
        .R(SR));
  FDRE \slv_reg2_reg[26] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[26]),
        .Q(M_AXI_AWADDR[26]),
        .R(SR));
  FDRE \slv_reg2_reg[27] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[27]),
        .Q(M_AXI_AWADDR[27]),
        .R(SR));
  FDRE \slv_reg2_reg[28] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[28]),
        .Q(M_AXI_AWADDR[28]),
        .R(SR));
  FDRE \slv_reg2_reg[29] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[29]),
        .Q(M_AXI_AWADDR[29]),
        .R(SR));
  FDRE \slv_reg2_reg[2] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[2]),
        .Q(M_AXI_AWADDR[2]),
        .R(SR));
  FDRE \slv_reg2_reg[30] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[30]),
        .Q(M_AXI_AWADDR[30]),
        .R(SR));
  FDRE \slv_reg2_reg[31] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[31]),
        .Q(M_AXI_AWADDR[31]),
        .R(SR));
  FDRE \slv_reg2_reg[3] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[3]),
        .Q(M_AXI_AWADDR[3]),
        .R(SR));
  FDRE \slv_reg2_reg[4] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[4]),
        .Q(M_AXI_AWADDR[4]),
        .R(SR));
  FDRE \slv_reg2_reg[5] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[5]),
        .Q(M_AXI_AWADDR[5]),
        .R(SR));
  FDRE \slv_reg2_reg[6] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[6]),
        .Q(M_AXI_AWADDR[6]),
        .R(SR));
  FDRE \slv_reg2_reg[7] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[7]),
        .Q(M_AXI_AWADDR[7]),
        .R(SR));
  FDRE \slv_reg2_reg[8] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[8]),
        .Q(M_AXI_AWADDR[8]),
        .R(SR));
  FDRE \slv_reg2_reg[9] 
       (.C(aclk),
        .CE(slv_reg2),
        .D(S_AXI_WDATA[9]),
        .Q(M_AXI_AWADDR[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hEA000000)) 
    slv_reg3_i_1
       (.I0(init_write),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(slv_reg_wren),
        .I4(aresetn),
        .O(slv_reg3_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    slv_reg3_i_2
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(slv_reg_wren));
  FDRE slv_reg3_reg
       (.C(aclk),
        .CE(1'b1),
        .D(slv_reg3_i_1_n_0),
        .Q(init_write),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_RVALID),
        .I2(axi_arready_reg_0),
        .O(slv_reg_rden__0));
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
