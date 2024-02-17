`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2024 12:20:27 PM
// Design Name: 
// Module Name: mask532
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


module mask532(
    input [4:0] n,
    input [31:0] value_in,
    output [31:0] value_out
    );
    
    wire [31:0]mask;
    
    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin
            assign mask[i] = (i >= n);
        end
    endgenerate
    
    assign value_out = value_in & mask;
endmodule
