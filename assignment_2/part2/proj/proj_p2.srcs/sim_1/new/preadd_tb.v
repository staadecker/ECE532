`timescale 1ns / 1ps

module preadd532_tb;

// Parameters
parameter C_WIDTH = 16;
parameter CLK_PERIOD = 10; // Clock period in ns

// Signals
reg clk = 0;
reg in_vld;
reg signed [C_WIDTH-1:0] in_a, in_b, in_c;
wire signed [2*C_WIDTH:0] out;
wire out_vld;

// Instantiate the preadd532 module
preadd532 #(
    .C_WIDTH(C_WIDTH)
) uut (
    .clk(clk),
    .in_vld(in_vld),
    .in_a(in_a),
    .in_b(in_b),
    .in_c(in_c),
    .out(out),
    .out_vld(out_vld)
);

// Clock generation
always #((CLK_PERIOD / 2)) clk = !clk;

// Test stimulus
initial begin
    // Initialize inputs
    in_vld = 0;
    in_a = 0;
    in_b = 0;
    in_c = 0;

    // Apply inputs changing on every clock cycle
    #20 in_vld = 1;
    #10 in_c = 10;
    #10 in_b = 5;
    #10 in_a = 3;

    // Wait for some time
    #20;

    // Finish simulation
    $finish;
end

reg signed [2*C_WIDTH - 1: 0] expected_result;
reg signed [2*C_WIDTH - 1: 0] expected_result_next_cycle;

// check behaviour
always @(posedge clk) begin
    // NOT PIPELINED VERSION
//    expected_result <= (in_a + in_b) * in_c;
    
    //PIPELINED_VERSION
    expected_result_next_cycle <= (in_a+in_b) * in_c;
    expected_result <= expected_result_next_cycle;
    
    
    if (out_vld) begin
        $display("Output: %d", out);
        // Add checks here
        if (out !== expected_result) begin
            $error("Output mismatch! Expected: %d, Got: %d", expected_result, out);
            $fatal();
        end else begin
            $display("Output is correct!");
        end
    end
end
endmodule