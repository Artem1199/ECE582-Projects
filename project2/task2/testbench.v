// Testbench
module test;
  
  reg dclk;
  reg in;
  reg reset;
  wire out;
  wire d;
  wire e;

  

  
  p1c2 P1C2(.in(in), .out(out), .d1(d), .d2(d), .reset(reset), .e1(e), .e2(e), .clk(dclk));
            
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
