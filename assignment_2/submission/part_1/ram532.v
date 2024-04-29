module ram532
#(
  parameter C_ADDR_WIDTH = 8, // Change to 10 to get a 1024x32 bit memory block
  parameter C_DATA_WIDTH = 32
)
(
  input  clk,
  input  wen,
  input  [C_DATA_WIDTH-1: 0] wdata,
  input  [C_ADDR_WIDTH-1: 0] waddr,
  output reg [C_DATA_WIDTH-1: 0] rdata_0,
  input  [C_ADDR_WIDTH-1: 0] raddr_0,
  output reg [C_DATA_WIDTH-1: 0] rdata_1,
  input  [C_ADDR_WIDTH-1: 0] raddr_1
);
    // Change to block, distributed, or registers depending on desired target.
    (* ram_style = "registers" *) reg [C_DATA_WIDTH - 1: 0] RAM [2 ** C_ADDR_WIDTH - 1: 0];
    
    always @(posedge clk) begin
        if (wen) begin
            RAM[waddr] <= wdata;
        end
    end
    
    always @(posedge clk) begin
        rdata_0 <= RAM[raddr_0];
        rdata_1 <= RAM[raddr_1];
    end    
endmodule
