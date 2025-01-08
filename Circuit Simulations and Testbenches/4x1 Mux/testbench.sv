module Mux_test;
  reg i0, i1, i2, i3; // Inputs
  reg s0, s1;         // Select signals
  wire out;           // Output of the MUX
  wire [1:0] sel;     // Concatenated select signals

  // Instantiate the 4x1 MUX
  Mux_4x1_gatelevel inst_mux (
    .i0(i0), 
    .i1(i1), 
    .i2(i2), 
    .i3(i3), 
    .s0(s0), 
    .s1(s1), 
    .out(out)
  );

  // Assign concatenated select signals
  assign sel = {s1, s0};

  // Testbench initial block
  initial begin
    $dumpfile("dump.vcd"); // Dump waveforms to a file
    $dumpvars(1);          // Dump all variables
    $monitor($time, " Select = %0b, Output = %b", sel, out);

    // Set input values
    i0 = 1'd0;
    i1 = 1'd1;
    i2 = 1'd0;
    i3 = 1'd1;

    // Set select signals and apply delays
    {s1, s0} = 2'b00;
    #10 {s1, s0} = 2'b10;
    #10 {s1, s0} = 2'b11;

    // End simulation
    #10 $finish;
  end
endmodule
