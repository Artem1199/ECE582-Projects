// Testbench
module test;
  
  reg dclk;
  reg in;
  reg reset;
  wire out;
  wire d;
  wire e;

  

  
  p1c1 P1C1(.in(in), .out(out), .d(d), .reset(reset), .e(e), .clk(dclk));
            
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
   	in = 0; dclk = 0; reset = 0;
    
    #1 reset = 1; #1 reset = 0;
    in = 0; #1 dclk = 1; #5 dclk = 0; #5;
    in = 1; #1 dclk = 1; #5 dclk = 0; #5;
    in = 1; #1 dclk = 1; #5 dclk = 0; #5;
    in = 0; #1 dclk = 1; #5 dclk = 0; #5;
    in = 1; #1 dclk = 1; #5 dclk = 0; #5;
    in = 0; #1 dclk = 1; #5 dclk = 0; #5;
    in = 0; #1 dclk = 1; #5 dclk = 0; #5;
    in = 1; #1 dclk = 1; #5 dclk = 0; #5;
    reset = 1; #5; reset = 0;
    in = 1; #1 dclk = 1; #5 dclk = 0; #5;
    
  end
  
endmodule
