module mc(a,b,out);
  input a,b;
  output [2:0]out;
  reg [2:0]out;
  always@(*)
  begin
  if(a > b)
    out=3'b001;
  else if(a<b)
    out=3'b010;
  else
    out=3'b110;
  end
endmodule