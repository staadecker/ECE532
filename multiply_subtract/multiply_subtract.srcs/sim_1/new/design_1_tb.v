`timescale 1ns/1ps

module design_1_wrapper_tb;

  // Parameters
  parameter CLK_PERIOD = 10; // Clock period in ns
  
  // Inputs and outputs
  wire [31:0] M_AXIS_RESULT_0_tdata;
  reg M_AXIS_RESULT_0_tready;
  wire [15:0]M_AXIS_RESULT_0_tuser;
  wire [2:0] M_AXIS_RESULT_0_tflags;
  wire M_AXIS_RESULT_0_tvalid;
  reg [31:0] S_AXIS_A_0_tdata;
  wire S_AXIS_A_0_tready;
  reg [15:0]S_AXIS_A_0_tuser;
  reg S_AXIS_A_0_tvalid;
  reg [31:0] S_AXIS_B_0_tdata;
  wire S_AXIS_B_0_tready;
  reg S_AXIS_B_0_tvalid;
  reg [31:0] S_AXIS_C_0_tdata;
  wire S_AXIS_C_0_tready;
  reg S_AXIS_C_0_tvalid;
  reg aresetn;
  

  // Clock generation
  reg aclk;
  // Instantiate clock generator
  initial begin
    aclk = 1'b0; // Initialize clock to 0
    forever #((CLK_PERIOD/2)) aclk = ~aclk; // Toggle clock every half period
  end

  // Instantiate the Design Under Test (DUT)
  design_1_wrapper DUT (
    .M_AXIS_RESULT_0_tdata(M_AXIS_RESULT_0_tdata),
    .M_AXIS_RESULT_0_tready(M_AXIS_RESULT_0_tready),
    .M_AXIS_RESULT_0_tuser(M_AXIS_RESULT_0_tuser),
    .M_AXIS_RESULT_0_tflags(M_AXIS_RESULT_0_tflags),
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
    .aclk(aclk),
    .aresetn(aresetn)
  );

  // Testbench functionality
  initial begin
    $display("Starting Design Under Test (DUT) testbench");
    
    aresetn = 0;
    S_AXIS_A_0_tvalid = 0 ; 
    S_AXIS_B_0_tvalid = 0 ;
    S_AXIS_C_0_tvalid = 0 ;
    S_AXIS_A_0_tdata = 0;
    S_AXIS_B_0_tdata = 0;
    S_AXIS_C_0_tdata = 0;
      S_AXIS_A_0_tuser = 0;
    
    
    # (CLK_PERIOD * 3)
    // Apply inputs
    aresetn = 1;
    


    // Test cases
    repeat (3) begin
        S_AXIS_A_0_tvalid = 0 ; 
        S_AXIS_B_0_tvalid = 0 ;
        S_AXIS_C_0_tvalid = 0 ;
        M_AXIS_RESULT_0_tready = 0;
      # (3 * CLK_PERIOD)
      // Generate random inputs
      S_AXIS_A_0_tdata = $random;
      S_AXIS_B_0_tdata = $random;
      S_AXIS_C_0_tdata = $random;
      // Generate random tuser values
      S_AXIS_A_0_tuser = $random;
      
      // Drive tvalid for input streams
      S_AXIS_A_0_tvalid = 1;
      S_AXIS_B_0_tvalid = 1;
      S_AXIS_C_0_tvalid = 1;



      

      // Display inputs
      $display("Input: A = %h, B = %h, C = %h", S_AXIS_A_0_tdata, S_AXIS_B_0_tdata, S_AXIS_C_0_tdata);
      
      // Wait for valid output
      while (S_AXIS_A_0_tready == 0) begin
        #1;
      end
      
      # CLK_PERIOD
      
      S_AXIS_A_0_tvalid = 0 ; 
      S_AXIS_B_0_tvalid = 0 ;
      S_AXIS_C_0_tvalid = 0 ;

      // Wait for valid output
      while (M_AXIS_RESULT_0_tvalid == 0) begin
        #1;
      end
      
      # CLK_PERIOD
      
      // Drive tready for output stream
      M_AXIS_RESULT_0_tready = 1;
      
      # CLK_PERIOD
      
      // Display output
      $display("Output: C - AB = %h", M_AXIS_RESULT_0_tdata);
      
      // Wait for valid output
      while (M_AXIS_RESULT_0_tvalid == 1) begin
        #1;
      end

      // Wait before next test
      #10;
    end

    $display("Design Under Test (DUT) testbench completed");
    // End simulation
    $finish;
  end

endmodule
