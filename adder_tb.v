`include "adder.v"
module adder_tb;

 reg [31:0] a, b;

 wire [32:0] c;

 adder uut1(.a(a), .b(b), .c(c));

 initial
  $monitor($time,c[32:0]);

 initial
 begin
  a=32'b11111111111111111111111111111111;
  b=32'b11111111111111111111111111111111;
  #10;
 end
 
endmodule
