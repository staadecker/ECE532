// Change to yes or no to use or not use the DSP 
(* use_dsp = "yes" *) module preadd532
#(
  // Change to 32 or 16 depending on the case
  parameter C_WIDTH = 16
)
(
  input clk,
  input in_vld,
  input  signed [C_WIDTH-1: 0] in_a,
  input  signed [C_WIDTH-1: 0] in_b,
  input  signed [C_WIDTH-1: 0] in_c,
  output reg signed [2*C_WIDTH: 0] out,
  output reg out_vld
);  
    // NOT PIPELINED VERSION
//    always @(posedge clk) begin
//        out_vld <= in_vld;
//        if (in_vld) begin
//            out <= in_a * in_c + in_b * in_c; // Note: pre-expanding the (a+b)c -> ac + bc makes a difference!
//        end
//    end

    // PIPELINED VERSION    
    reg signed [C_WIDTH:0] sum;
    reg sum_vld;
    reg signed [C_WIDTH-1: 0] multipland;
    

    always @(posedge clk) begin
        sum_vld <= in_vld;
        if (in_vld) begin
            sum <= in_a + in_b;
            multipland <= in_c;
        end
    end
    
    always @(posedge clk) begin
        out_vld <= sum_vld;
        if (sum_vld) begin
            out <= multipland * sum;
        end
    end
endmodule
