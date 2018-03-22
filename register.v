module register(clk, rst, write_enable, wdata, rdata);

 input write_enable, clk, rst;
 input [31:0] wdata;
 output reg [31:0] rdata;

 always @(posedge(clk), negedge(rst))
 begin
  if(!rst)
   rdata <=  {32{1'b0}};
  else if(write_enable)
   rdata <= wdata;
  else
   rdata <= rdata;
 end
endmodule
