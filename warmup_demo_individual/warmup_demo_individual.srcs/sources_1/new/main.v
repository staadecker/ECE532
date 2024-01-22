`timescale 1ns / 1ps

module max(
    input clk,
    input reset,
    input [3:0] in_data,
    input in_valid,
    output [3:0] out_largest
    );
    
    reg [3:0] valid_input;
    reg [3:0] largest;
    
    always@(posedge clk) begin
        if (reset | !in_valid) begin
            valid_input <= 4'b0;
        end
        else begin
            valid_input <= in_data;
        end
    end
    
    always@(posedge clk) begin
        if (reset) begin
            largest <= 4'b0;
        end
        else if (valid_input > largest) begin
            largest <= valid_input;
        end
    end
    
    assign out_largest = largest;
endmodule
