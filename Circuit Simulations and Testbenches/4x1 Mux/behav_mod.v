module Mux_4x1_behavioural(i0,i1,i2,i3,s0,s1,out);
  input wire [1:0] i0,i1,i2,i3;
  input wire [1:0] sel;
  output [1:0] out;
  
  always @(*)
  begin
    case(sel)
      2'b00: out=i0;
      2'b01: out=i1;
      2'b10: out=i2;
      2'b11: out=i3;
    endcase
  end
endmodule
