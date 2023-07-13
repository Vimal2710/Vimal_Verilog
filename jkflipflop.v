module jkff(clk,rst,j,k,q,qb);
  input clk,rst,j,k;
  output reg q,qb;
  always@(posedge clk)
  begin
    if(rst==1)
      q=0;
    else
      case({j,k})
        2'b00:
        begin
        q=q;
        qb=~q;
      end
        2'b01:
        begin
        q=0;
        qb=1;
      end
        2'b10:
        begin
        q=1;
        qb=0;
      end
        2'b11:
        begin
        q=~q;
        qb=~qb;
      end
      endcase
    end
  endmodule
  