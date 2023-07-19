module alu(a,b,set,out);
  input [3:0]a,b,set;
  reg [3:0]result;
  output [3:0]out;
  assign out=result;
  always@(set,a)
  begin
  case(set)
    4'b0000:
    result=a|b;
    4'b0001:
    result=a&b;
    4'b0010:
    result=a^b;
    4'b0011:
    result=~(a|b);
    4'b0100:
    result=~(a&b);
    4'b0101:
    result=~(a^b);
    4'b0110:
    result=a+b;
    4'b0111:
    result=a*b;
    4'b1000:
    result=a|b;
    4'b1001:
    result=a|b;
    4'b1010:
    result=a|b;
    4'b1011:
    result=a|b;
    4'b1100:
    result=a|b;
    4'b1101:
    result=a|b;
    4'b1110:
    result=a|b;
    4'b1111:
    result=a|b;
  endcase
end
endmodule
    
    
  