module Mux_4x1_dataflow(i0,i1,i2,i3,s0,s1,out);
  input wire [1:0] i0,i1,i2,i3;
  input wire [1:0] sel;
  output [1:0] out;
  assign out= sel[0]?(sel[1]?i3:i1):(sel[1]?i2:i0);
endmodule
