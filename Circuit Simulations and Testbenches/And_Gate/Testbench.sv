module testbench;
  reg a_tb;
  reg b_tb;
  wire y_tb;
  and_gate uut(.a(a_tb),.b(b_tb),.y(y_tb));
  initial begin
    $dumpfile("dump.vcd"); // Dump waveforms to a file
    $dumpvars(1);          // Dump all variables
    $monitor($time,"a_tb=%b,b_tb=%b,y_tb=%b",a_tb,b_tb,y_tb);
    #5 a_tb=0;b_tb=0;
    #5 a_tb=0;b_tb=1;
    #5 a_tb=1;b_tb=0;
    #5 a_tb=1;b_tb=1;
    #5 $finish;
  end 
endmodule
