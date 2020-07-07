//bottom circuit
module p2c2 (a, b, c, d, f, clk);

  input a, b, c, d;
  input clk;
  
  wire h, g, n, j, k;
  
  output reg f;
  
  initial
    f = 0;
 
  assign h = ~(a|b);
  assign g = b&c;
  assign n = ~(c&d);
  assign j = n^f;

 dff DFF2(clk,j,k);
  
  always @(k)
  if (k)
    f = g;
  else
    f = h;
  
endmodule


// Design
// D flip-flop
module dff (clk,d,q);
  input      clk;
  input      d;
  output     q;
  reg        q;

  always @(posedge clk) q <= d;
endmodule
