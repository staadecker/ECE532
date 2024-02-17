
`timescale 1 ns / 1 ps

module mask_axi_lite_master 
(
    // Initiate AXI Write
    input wire  INIT_AXI_TXN,
    // AXI clock signal
    input wire  M_AXI_ACLK,
    // AXI active low reset signal
    input wire  M_AXI_ARESETN,
    // Write address valid. 
    // This signal indicates that the master signaling valid write address and control information.
    // This signal indicates that the master signaling valid write address and control information.
    output wire  M_AXI_AWVALID,
    // Write address ready. 
    // This signal indicates that the slave is ready to accept an address and associated control signals.
    input wire  M_AXI_AWREADY,
    // Write strobes. 
    // This signal indicates which byte lanes hold valid data.
    // There is one write strobe bit for each eight bits of the write data bus.
    output wire [3 : 0] M_AXI_WSTRB,
    // Write valid. This signal indicates that valid write data and strobes are available.
    output wire  M_AXI_WVALID,
    // Write ready. This signal indicates that the slave can accept the write data.
    input wire  M_AXI_WREADY,
    // Master Interface Write Response Channel ports. 
    // This signal indicates the status of the write transaction.
    input wire [1 : 0] M_AXI_BRESP,
    // Write response valid. 
    // This signal indicates that the channel is signaling a valid write response
    input wire  M_AXI_BVALID,
    // Response ready. This signal indicates that the master can accept a write response.
    output wire  M_AXI_BREADY
);
    // True if a write operation is ongoing
    reg is_writing;

    // AXI4LITE signals
    reg  	axi_awvalid;
    reg  	axi_wvalid;
    reg  	axi_bready;


    //Asserts when there is a write response error
    wire  	write_resp_error;
    //A pulse to initiate a write transaction
    reg  	start_single_write;


    // I/O Connections assignments
    assign M_AXI_AWVALID	= axi_awvalid;
    //Write Data(W)
    assign M_AXI_WVALID	= axi_wvalid;
    //Set all byte strobes in this example
    assign M_AXI_WSTRB	= 4'b1111;
    //Write Response (B)
    assign M_AXI_BREADY	= axi_bready;  


    //--------------------
    //Write Address Channel
    //--------------------

    always @(posedge M_AXI_ACLK)										      
    begin                                                                        
        //Only VALID signals must be deasserted during reset per AXI spec          
        //Consider inverting then registering active-low reset for higher fmax     
        if (M_AXI_ARESETN == 0) axi_awvalid <= 1'b0;                                                                  
        else if (start_single_write) axi_awvalid <= 1'b1;
        else if (M_AXI_AWREADY && axi_awvalid) axi_awvalid <= 1'b0;                                
    end                                                                                                                                                


    //--------------------
    //Write Data Channel
    //--------------------
    
    //The write data channel is for transfering the actual data.
    //The data generation is speific to the example design, and 
    //so only the WVALID/WREADY handshake is shown here

   always @(posedge M_AXI_ACLK)                                        
   begin                                                                         
     if (M_AXI_ARESETN == 0) axi_wvalid <= 1'b0;                                                     
     else if (start_single_write) axi_wvalid <= 1'b1;                                                     
     //Data accepted by interconnect/slave (issue of M_AXI_WREADY by slave)      
     else if (M_AXI_WREADY && axi_wvalid) axi_wvalid <= 1'b0;                                  
   end                                                                           


    //----------------------------
    //Write Response (B) Channel
    //----------------------------
    


always @(posedge M_AXI_ACLK) begin                                                                
    if (M_AXI_ARESETN == 0) axi_bready <= 1'b0;                                            
    // accept/acknowledge bresp with axi_bready by the master          
    // when M_AXI_BVALID is asserted by slave    
    // deassert after one clock cycle                                  
    else if (axi_bready) axi_bready <= 1'b0;                      
    else if (M_AXI_BVALID) axi_bready <= 1'b1;
end                                                                  
                                                                   
//Flag write errors                                                    
assign write_resp_error = (axi_bready & M_AXI_BVALID & M_AXI_BRESP[1]);

                                                 
  //implement master command interface state machine                         
always @ ( posedge M_AXI_ACLK)                                                    
begin                                                                             
    if (M_AXI_ARESETN == 1'b0) begin  
        is_writing  <= 1'b0;                                            
        start_single_write <= 1'b0;                                                 
    end else if (!is_writing && INIT_AXI_TXN == 1'b1) begin                                                      
        is_writing  <= 1'b1;
        start_single_write <= 1'b1;                                      
    end else if (is_writing) begin
        start_single_write <= 1'b0;                                                              
        if (M_AXI_BVALID && axi_bready) is_writing <= 1'b0;           
    end                                                                      
end
endmodule
