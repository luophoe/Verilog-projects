`timescale 1ns / 100ps

module counter #(parameter WIDTH = 5)
(
   input wire                  clk,
   input wire                  rst,
   input wire                  load,
   input wire                  enab,
   input wire [WIDTH - 1:0]    cnt_in,
   output reg [WIDTH - 1:0]    cnt_out
);


always @(posedge clk) begin
   if (rst) begin
      cnt_out <= 0;
   end else if (load) begin
      cnt_out <= cnt_in;
   end else begin
      cnt_out <= cnt_out + 1;
   end
end


endmodule
