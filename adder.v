module adder(a, b, c);

 input [31:0] a, b;
 output reg [32:0] c;

 always @ (*)
 begin
  c = a + b;
 end

endmodule
