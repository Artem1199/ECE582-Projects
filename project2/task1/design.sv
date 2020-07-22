//top circuit
module p1c1 (in, out, reset, d, e, clk);
  
  input in, clk, reset;
  output out;
  
  wire a,b,c;
  output d, e;
  
  assign a = ~(in & d);
  assign b = in ^ e;
  assign c = ~(a & b);
  assign out = ~(d | e);
    
  
  dff DFF1(.clk(clk),.d(c),.q(d), .reset(reset));
  dff DFF2(.clk(clk),.d(b),.q(e), .reset(reset));

  
endmodule


// Design
// D flip-flop
module dff (clk,d,q, reset);
  input      clk, d, reset;
  output reg q;

  always @(posedge clk or posedge reset)
    if (reset) begin
      q <= 0;
    end else begin
      q <= d;
    end
  
  
endmodule
