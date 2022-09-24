module alu #(parameter WIDTH = 8)
(
   input wire  [WIDTH - 1:0]   in_a,
   input wire  [WIDTH - 1:0]   in_b,
   input wire  [        2:0]   opcode,
   output reg  [WIDTH - 1:0]   alu_out,
   output reg                  a_is_zero
);


always @(in_a, in_b, opcode) begin
   if (opcode == 0 || opcode == 1 || opcode == 6 || opcode == 7) begin
      alu_out <= in_a;
   end else if (opcode == 2) begin
      alu_out <= in_a + in_b;
   end else if (opcode == 3) begin
      alu_out <= in_a & in_b;
   end else if (opcode == 4) begin
      alu_out <= in_a ^ in_b;
   end else begin
      alu_out <= in_b;
   end

   if (in_a == 0) begin
      a_is_zero <= 1;
   end else begin
      a_is_zero <= 0;
   end
end

endmodule
