`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2024 02:57:21 PM
// Design Name: 
// Module Name: max_tb
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


module max_tb();
    parameter CLK_PERIOD = 10; // Clock period in time units
    reg clk;
    // Clock generation
    always #((CLK_PERIOD)/2) clk = ~clk;
    
    reg reset;
    reg [3:0] in_data;
    reg in_valid;
    wire [3:0] out_largest;
    
    integer e_out_largest;
    integer e_next_cycle;
    
    integer i;
    integer input_number;
    
    max max_element(.clk(clk), .reset(reset), .in_data(in_data), .in_valid(in_valid), .out_largest(out_largest));
    
    initial
    begin
        clk = 0;
        reset = 1;
        in_valid = 0;
        input_number = 0;
        e_out_largest = 0;
        e_next_cycle = 0;
        
        #(CLK_PERIOD * 3)
        
        reset = 0;
        in_valid = 0;
        
        for (i=0; i < 255; i = i + 1) begin
        if (i % 2 == 0) input_number = input_number + 2;
        else input_number = input_number - 1;
        #CLK_PERIOD in_data = input_number;
        if (e_out_largest == out_largest) $display("GOOD");
        else $display("FAIL. Expected %b, actual %b", e_out_largest, out_largest);
        e_out_largest = e_next_cycle;
        if (in_data > e_out_largest) e_next_cycle = in_data;
        end
    end
    
endmodule
