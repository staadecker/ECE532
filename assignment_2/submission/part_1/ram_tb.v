`timescale 1ns / 1ps

module ram_test;

    // Parameters
    parameter C_ADDR_WIDTH = 8;
    parameter C_DATA_WIDTH = 32;
    
    // Signals
    reg clk;
    reg wen;
    reg [C_DATA_WIDTH-1:0] wdata;
    reg [C_ADDR_WIDTH-1:0] waddr;
    wire [C_DATA_WIDTH-1:0] rdata_0;
    reg [C_ADDR_WIDTH-1:0] raddr_0;
    wire [C_DATA_WIDTH-1:0] rdata_1;
    reg [C_ADDR_WIDTH-1:0] raddr_1;

    // Instantiate the RAM module
    ram532 #(
        .C_ADDR_WIDTH(C_ADDR_WIDTH),
        .C_DATA_WIDTH(C_DATA_WIDTH)
    ) dut (
        .clk(clk),
        .wen(wen),
        .wdata(wdata),
        .waddr(waddr),
        .rdata_0(rdata_0),
        .raddr_0(raddr_0),
        .rdata_1(rdata_1),
        .raddr_1(raddr_1)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Test stimulus
    initial begin
        // Initialize signals
        clk = 1;
        wen = 0;
        wdata = 0;
        waddr = 0;
        raddr_0 = 0;
        raddr_1 = 0;

        // Wait a clock cycle
        #10;

        // Write data to RAM over two cycles
        wen = 1;
        waddr = 8'hFF; // Write to the maximum address
        wdata = 32'hABCDEFF;
        #10;
        waddr = 8'hEF;
        wdata = 32'h11111111;
        #10
        wen = 0;

        // Read data from RAM over two cycles
        raddr_0 = 8'hFF;
        raddr_1 = 8'hEF;
        #10;
        raddr_0 = 8'hEF;
        raddr_1 = 8'hFF;
        // Check that the data read is correct (one clock cycle after it was written)
        if (rdata_0 != 32'hABCDEFF) $fatal("Bad read");
        if (rdata_1 != 32'h11111111) $fatal("Bad read");
        #10
        if (rdata_0 != 32'h11111111) $fatal("Bad read");
        if (rdata_1 != 32'hABCDEFF) $fatal("Bad read");
        #10
        $finish;
    end

    // Display results
    initial begin
        $monitor("Time=%0t: waddr=%h, wdata=%h, raddr_0=%h, rdata_0=%h, raddr_1=%h, rdata_1=%h", $time, waddr, wdata, raddr_0, rdata_0, raddr_1, rdata_1);
    end

endmodule