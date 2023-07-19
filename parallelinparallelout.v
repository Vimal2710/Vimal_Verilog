module pipo(a,rst,clk,o);
  input rst,clk;
  input [3:0]a;
  output [3:0]o;
  //reg [3:0]o;
  dff f1(a[0],rst,clk,o[0]);
  dff f2(a[1],rst,clk,o[1]);
  dff f3(a[2],rst,clk,o[2]);
  dff f4(a[3],rst,clk,o[3]);
endmodule
  
  
module dff(d,rst,clk,q);
  input d,rst,clk;
  output q;
  reg q;
  always@(posedge clk)
  begin
    if(rst==1)
        q=0;
    else
        q=d;
      end
      

endmodule
      