module decoder_2x4_dataflow(a0,a1,d0,d1,d2,d3);
  input a0,a1;
  output d0,d1,d2,d3;
  wire a0_bar,a1_bar;
  assign a0_bar= ~a0;
  assign a1_bar= ~a1;
  assign d0= a1_bar & a0_bar;
  assign d1= a1_bar & a0;
  assign d2= a1 & a0_bar;
  assign d3= a1 & a0; 
endmodule
