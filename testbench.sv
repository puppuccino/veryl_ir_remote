module testbench;

  // Signals declaration
  reg clk;
  reg rst;

  proc u_proc (
      .i_clk(clk),
      .i_rst(rst)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Reset control
  initial begin
    rst = 1;  // note: active low
    #15 rst = 0;
    #10 rst = 1;
  end

  // Setup waveform dump
  initial begin
    $dumpfile("testbench.fst");  // Specifies the name of the FST file
    $dumpvars(0, testbench);  // Dumps all variables of the test bench
  end

  // Simulation time management
  initial begin
    // Simulation run for a specific time
    #1000;
    $finish;  // Terminate simulation
  end

endmodule
