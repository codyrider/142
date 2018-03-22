`include "register.v"
module register_tb;
 reg write_enable, clk, rst;
 reg [31:0] wdata;
 wire [31:0] rdata;

 register uut1(.clk(clk), .rst(rst), .write_enable(write_enable), .wdata(wdata), .rdata(rdata));

 initial
  $vcdpluson;

//reset control
 initial
 begin
  rst = 1'b0;
  #10 rst = 1'b1;
  #100 rst= 1'b0;
 end

//clock
 initial
 begin
  clk = 1'b0;
  forever #10 clk = ~clk;
 end

//input variation
 initial
 begin
  wdata = {32{1'b1}};
  write_enable = 1'b1;
  #40;
  wdata = 32'b11111111111111110000000000000000;
  write_enable = 1'b0;
  #40;
  write_enable = 1'b1;
  #40;
  $finish;
 end

endmodule
