module Decoder_test;
  reg a0,a1;
  wire d0,d1,d2,d3;
  //Instantiate the design under test
  decoder_2x4_dataflow inst_dec (.a0(a0),.a1(a1),.d0(d0),.d1(d1),.d2(d2),.d3(d3));
  initial begin
    //Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor($time,"a0=%b,a1=%b,d0=%b,d1=%b,d2=%b,d3=%b",a0,a1,d0,d1,d2,d3);
    {a1,a0}=2'b00;
    
    #10 {a1,a0} <= 2'b01;
    #10 {a1,a0} <= 2'b10;
    #10 {a1,a0} <= 2'b11;
    #10 $finish;
  end
endmodule
