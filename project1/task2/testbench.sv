// Testbench
module test;

  
  reg dclk;
  reg a;
  reg b;
  reg c;
  reg d;
  reg reset;
  
  wire fc1;
  wire fc2;

  
  p2c1 P2C1(.a(a), .b(b), .c(c), .d(d), .f(fc1), .clk(dclk), .reset(reset));
  p2c2 P2C2(.a(a), .b(b), .c(c), .d(d), .f(fc2), .clk(dclk), .reset(reset));
            
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    a = 0; b = 0; c = 0; d = 0; dclk = 0; reset = 0;
    #1 reset = 1;
    #1 reset = 0;
    #5;
    $monitor(a,b,c,d,fc1);
    
        for (int i=0; i<16; i=i+1) begin
            {a,b,c,d} = i;
          	#1;
          	dclk += 1;
            #5;
          	dclk += 1;
          	#5;
        end
    
  end
  

endmodule