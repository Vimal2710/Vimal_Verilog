module acs(aa,bb,cc,m,ss,cout);
  input [3:0]aa,bb;
  input m;
  output [2:0]cc;
  output [3:0]ss;
  output cout;
  wire [3:0]mm;
  assign mm[0]=bb[0]^m;
  fulladder f1(aa[0],mm[0],0,ss[0],cc[0]);
  
  assign mm[1]=bb[1]^m;
  fulladder f2(aa[1],mm[1],cc[0],ss[1],cc[1]);
  
  assign mm[2]=bb[2]^m;
  fulladder f3(aa[2],mm[2],cc[1],ss[2],cc[2]);
  
  assign mm[3]=bb[3]^m;
  fulladder f4(aa[3],mm[3],cc[2],ss[3],cout);
endmodule
  
module fulladder(a,b,c,sum,carry);
  input a,b,c;
  output sum,carry;
  assign sum=a^b^c;
  assign carry=(a&b)|(b&c)|(a&c);
endmodule