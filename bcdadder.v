module bcdadder(x,y,s,ss,ca,caa,cout,cout1);
  input [3:0]x,y;
  output [2:0]ca,caa;
  output cout,cout1;
  output [3:0]s;
  output [3:0]ss;
  fulladder f1(y[0],x[0],0,s[0],ca[0]);
  fulladder f2(y[1],x[1],ca[0],s[1],ca[1]);
  fulladder f3(y[2],x[2],ca[1],s[2],ca[2]);
  fulladder f4(y[3],x[3],ca[2],s[3],cout);
  wire [1:0]w;
  or ff1(w[0],s[1],s[2]);
  and ff2(w[1],s[3],w[0]);
  or ff3(cout1,cout,w[1]);
  fulladder f5(s[0],0,0,ss[0],caa[0]);
  fulladder f6(s[1],cout1,caa[0],ss[1],caa[1]);
  fulladder f7(s[2],cout1,caa[1],ss[2],caa[2]);
  fulladder f8(s[3],0,caa[2],ss[3],cout1);
endmodule
module fulladder(a,b,c,sum,carry);
  input a,b,c;
  output sum,carry;
  assign sum=a^b^c;
  assign carry=(a&b)|(b&c)|(a&c);
endmodule