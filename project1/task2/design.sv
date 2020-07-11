//top circuit
module p2c1 (a, b, c, d, f, clk, reset);
  
  input a, b, c, d, reset;
  input clk;
  
  wire h, g, n, j, k;
  
  output reg f;
  
  initial
    f = 0;
 
  assign h = ~(a|b);
  assign g = b^c;
  assign n = ~(c&d);
  assign j = n|f;

  dff DFF1(clk,j,k,reset);
  
  always @(g, h, k)
  if (k)
    f = g;
  else
    f = h;
  
endmodule


//bottom circuit
module p2c2 (a, b, c, d, f, clk, reset);

  input a, b, c, d, reset;
  input clk;
  
  wire h, g, n, j, k;
  
  output reg f;
  
  initial
    f = 0;
 
  assign h = ~(a|b);
  assign g = b&c;
  assign n = ~(c&d);
  assign j = n^f;

  dff DFF2(clk,j,k, reset);
  
  always @(g, h, k)
  if (k)
    f = g;
  else
    f = h;
  
endmodule


// Design
// D flip-flop
module dff (clk,d,q,reset);
  input      clk, d, reset;
  output reg q;

  always @(posedge clk or posedge reset)
    if (reset) begin
      q <= 0;
    end else begin
      q <= d;
    end
  
endmodule

