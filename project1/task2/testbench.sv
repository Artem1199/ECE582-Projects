// Testbench
module test;

 /* reg clk2;
  reg d2;
  wire q;
  
  // Instantiate design under test
  dff DFF(.clk(clk2), .d(d2), .q(q));
          
  initial begin
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    d2 = 0;
    clk2 = 0;
    #10 d2 = 1;
    #10 clk2 = 1;
    #10 d2 = 0;
    #10 clk2 = 0;
    #10 clk2 = 1;
    
  end*/
  
  
  reg dclk;
  reg a;
  reg b;
  reg c;
  reg d;
  
  wire fc1;
  wire fc2;

  
  p2c1 P2C1(.a(a), .b(b), .c(c), .d(d), .f(fc1), .clk(dclk));
  p2c2 P2C2(.a(a), .b(b), .c(c), .d(d), .f(fc2), .clk(dclk));
            
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    a = 0; b = 0; c = 0; d = 0; dclk = 0;
    #1 dclk = 1;
    #1 dclk = 0;
    #10;
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
  
  
 /// task display;
 //   #1 $display("d:%0h, q:%0h", d, q);
 // endtask

endmodule