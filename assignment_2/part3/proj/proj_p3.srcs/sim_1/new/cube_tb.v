`timescale 1ns / 1ps

module cube532_tb;
    reg clk;
    reg [7:0] in;
    wire [23:0] out;

    cube532 DUT (
        .clk(clk),
        .in(in),
        .out(out)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 1;
        in = 0;

        // Wait a clock cycle
        #10;
        in = 8'h00;
        #10;
        if (out != 24'h0) $fatal("");
        in = 8'h01;
        #10;
        if (out != 24'h1) $fatal("");
        in = 8'hFF;
        #10;
        if (out != 24'hFD02FF) $fatal("");
        #10
        $finish;
    end

endmodule
