module Counter(clk,en,rst,y);
 input           clk;
 input           en;
 input           rst;
 output          y;
 reg             [31:0]r = 32'd0;
 always@(posedge clk)
  begin
   if(en & ~rst) r = r + 32'd0;
   if(rst) r = 32'd0;
   if(r==32'd255) r = 32'd0;
  end
 assign y = r;
endmodule
