module test;
  
  reg x1;
  reg y1;
  reg x2;
  reg y2;
  wire a;
  wire b;

  p1c1 P1C1(.x1(x1), .y1(y1), .x2(x2), .y2(y2), .a(a));
  p1c2 P1C2(.x1(x1), .y1(y1), .x2(x2), .y2(y2), .a(b));

            
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    $monitor(x1,y1,x2,y2);
    
        for (int i=0; i<16; i=i+1) begin
            {x1,y1,x2,y2} = i;
          	#5;
        end
    
  end

endmodule