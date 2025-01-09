module decoder_2x4_behavioural(A,D);
  input [1:0]A;
  output reg [3:0]D;
  always @(*)
    begin
      case(A)
        2'b00: begin D=4'b0001; end
        2'b01: begin D=4'b0010; end
        2'b10: begin D=4'b0100; end
        2'b11: begin D=4'b1000; end        
endmodule
