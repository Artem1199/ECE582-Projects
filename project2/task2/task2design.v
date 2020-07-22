//top circuit
module p1c1 (in, out, reset, d, e, clk);
  
  input in, clk, reset;
  output out;
  
  wire a1,b1,c1;
  output d, e;
  
  assign a1 = ~(in & d);
  assign b1 = in ^ e;
  assign c1 = ~(a1 & b1);
  assign out = ~(d | e);
    
  
  dff DFF1(.clk(clk),.d(c1),.q(d), .reset(reset));
  dff DFF2(.clk(clk),.d(b1),.q(e), .reset(reset));

  
endmodule

//top circuit
module p1c2 (in, out, reset, d, e, clk);
  
  input in, clk, reset;
  output out;
  
  wire a2,b2,c2;
  output d, e;
  
  assign a2 = ~(in & d);
  assign b2 = in ^ e;
  assign c2 = ~(a2 & b2);
  assign out = ~(d | e);
    
  
  dff DFF1(.clk(clk),.d(c2),.q(d), .reset(reset));
  dff DFF2(.clk(clk),.d(b2),.q(e), .reset(reset));

  
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
