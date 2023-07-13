module dff(d,rst,clk,q);
  input d,rst,clk;
  output q;
  reg q;
  always@(posedge clk)
  begin
    if(rst==1)
      if(d==0)
        q=0;
      else
        q=d;
      end
      

endmodule
      