module C1(x1, x2, y1, y2, a);
input x1, x2, y1, y2;
output a;

wire x1, x2, y1, y2, w1, w2, w3, w4, w5, w6;

assign w1 = x1 & y1;
assign w2 = x1 ~| y1;
assign w3 = x2 & y2;
assign w4 = x2 ~| y2;
assign w5 = w1 | w2;
assign w6 = w3 | w4;

assign a = w5 & w6;

endmodule