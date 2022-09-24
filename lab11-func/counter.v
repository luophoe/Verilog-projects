module counter
#(
  parameter integer WIDTH=5
 )
 (
  input  wire clk  ,
  input  wire rst  ,
  input  wire load ,
  input  wire enab ,
  input  wire [WIDTH-1:0] cnt_in ,
  output reg  [WIDTH-1:0] cnt_out 
 );


  function [WIDTH-1:0] cnt_func (input rst, input load, input enab , input [WIDTH-1:0] cnt_in, input [WIDTH-1:0] cnt_out);
      if (rst) begin
         cnt_func = 0;
      end else if (load) begin
         cnt_func = cnt_in;
      end else if (enab) begin
         cnt_func = cnt_out + 1;
      end
  endfunction 

  always @(posedge clk)
     cnt_out <= cnt_func (rst, load, enab ,cnt_in, cnt_out); //function call

endmodule
