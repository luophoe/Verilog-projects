module memory #( parameter AWIDTH = 5, DWIDTH = 8)
(
   input wire                    clk,
   input wire                    wr,
   input wire                    rd,
   input wire [AWIDTH - 1:0]     addr,
   inout wire [DWIDTH - 1:0]     data     
);  


reg [DWIDTH - 1:0] mem [(2**AWIDTH) - 1:0];
integer i;

assign data = (rd) ? mem[addr]:{DWIDTH{1'hz}};

always @(posedge clk) begin
   if (wr) begin
      mem[addr] <= data;
   end
end


endmodule
