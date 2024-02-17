`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2024 12:33:10 PM
// Design Name: 
// Module Name: mask_tb
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
 // Inspired from: https://www.chipverify.com/verification/file-based-testbench

module mask_tb;
    localparam T = 1;
    
    reg [4:0] n;
    reg [31:0] value_in;
    wire [31:0] value_out;
    
    mask532 dut (
        .n(n),
        .value_in(value_in),
        .value_out(value_out)
    );
    
    integer test_file;
    
    initial begin
        test_file = $fopen("test_data.csv", "r");
        if (test_file == 0) begin
            $fatal("Failed to open test_data.csv");
        end
    end
    
    integer expected_output;
    initial begin
    // Monitor here tracks changes to the signals and prints them!
        $monitor("%d, 0x%h, 0x%h, 0x%h @ %t", n, value_in, value_out, expected_output, $time);
        while (!$feof(test_file)) begin
            $fscanf(test_file, "%d,%b,%b", n, value_in, expected_output);
            #(T);
            if (expected_output != value_out) begin           
             $fatal("FAILED");
            end
            // Display here outputs GOOD to show success
            else $display("GOOD");
        end
        
        $fclose(test_file);
    end
    
     
    
endmodule
