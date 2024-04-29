(*use_dsp = "yes" *) module cube532
(
  input clk,
  input  [7:0]  in,
  output reg [23:0] out
);
    // BRAM IMPLEMENTATION
//    // Note the ram_style hint is optional and the result is the same with out without it.
//    (* ram_style = "block" *) reg [23:0] RAM [2 ** 8 - 1: 0];

//    initial begin
//        $readmemh("cube.mem", RAM);
//    end
    
//    always @(posedge clk) begin
//        out <= RAM[in];
//    end

    // DSP IMPLEMENTATION
    always @(posedge clk) begin
        out <= in * in * in;
    end
endmodule
