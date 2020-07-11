// left circuit
module p1c1(x1,y1,x2,y2,a);
  
  input x1,y1,x2,y2;
  output a;
  
  wire j,k,l,m,n,o,p;
  
  assign j = x1 & y1;
  assign k = ~(x1 | y1);
  assign l = x2 & y2;
  assign m = ~(x2 | y2);
  assign n = j | k;
  assign o = l | m;
  assign a = n & o;
  
endmodule


// right circuit
module p1c2(x1,y1,x2,y2,a);
  
  input x1,y1,x2,y2;
  output a;
  
  wire j,k,l,m,n,o,p;
  
  assign j = x1 & y2 & x2 & y1;
  assign k = x2 & y2 & ~x1 & ~y1;
  assign l = x1 & y1 & ~x2 & y2;
  assign m = ~x2 & ~x1 & ~y1 & y2;
  assign a = j | k | l | m;
  
endmodule
