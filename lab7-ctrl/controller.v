module controller
(
   input wire  [2:0] phase,
   input wire  [2:0] opcode,
   input wire        zero,
   output reg        sel,
   output reg        rd,
   output reg        ld_ir,
   output reg        inc_pc,
   output reg        halt,
   output reg        ld_pc,
   output reg        data_e,
   output reg        ld_ac,
   output reg        wr
);


reg h, a, z, j, s;


always @(opcode, zero, phase) begin
   h <= (opcode == 0) ? 1 : 0;
   a <= (opcode == 2 || opcode == 3 || opcode == 4 || opcode == 5) ? 1 : 0;
   z <= (opcode == 1 && zero == 1) ? 1 : 0;
   j <= (opcode == 7) ? 1 : 0;
   s <= (opcode == 6) ? 1 : 0;
end

always @(phase, h, a, z, j, s) begin
   case (phase)
      0        : begin sel = 1; rd = 0; ld_ir = 0; inc_pc = 0; halt = 0; ld_pc = 0; data_e = 0; ld_ac = 0; wr = 0; end  
      1        : begin sel = 1; rd = 1; ld_ir = 0; inc_pc = 0; halt = 0; ld_pc = 0; data_e = 0; ld_ac = 0; wr = 0; end  
      2        : begin sel = 1; rd = 1; ld_ir = 1; inc_pc = 0; halt = 0; ld_pc = 0; data_e = 0; ld_ac = 0; wr = 0; end  
      3        : begin sel = 1; rd = 1; ld_ir = 1; inc_pc = 0; halt = 0; ld_pc = 0; data_e = 0; ld_ac = 0; wr = 0; end  
      4        : begin sel = 0; rd = 0; ld_ir = 0; inc_pc = 1; halt = h; ld_pc = 0; data_e = 0; ld_ac = 0; wr = 0; end  
      5        : begin sel = 0; rd = a; ld_ir = 0; inc_pc = 0; halt = 0; ld_pc = 0; data_e = 0; ld_ac = 0; wr = 0; end  
      6        : begin sel = 0; rd = a; ld_ir = 0; inc_pc = z; halt = 0; ld_pc = j; data_e = s; ld_ac = 0; wr = 0; end  
      7        : begin sel = 0; rd = a; ld_ir = 0; inc_pc = 0; halt = 0; ld_pc = j; data_e = s; ld_ac = a; wr = s; end  
      default  : begin sel = 0; rd = 0; ld_ir = 0; inc_pc = 0; halt = 0; ld_pc = 0; data_e = 0; ld_ac = 0; wr = 0; end
   endcase
end


endmodule
