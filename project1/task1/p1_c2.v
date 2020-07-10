module C2(x1, x2, y1, y2, a);
input x1, x2, y1, y2;
output a;

wire x1, x2, y1, y2, w1, w2, w3, w4;

assign w1 = x1 & y1 & x2 & y2;
assign w2 = ~x1 & ~y1 & x2 & y2;
assign w3 = x1 & y1 & ~x2 & y2;
assign w4 = ~x1 & ~y1 & ~x2 & y2;

assign a = w1 | w2 | w3 | w4;

endmodule