// This file is not used in the design

module Control_s(I,t,D,clk,OUT);
  
input clk,I;
input [7:0] t;
input [7:0] D;
output reg [7:0] OUT;

always @(t)
if((D[4] &&  t[4]) || (D[5] && t[5]))
OUT = 8'h02;

else if (t[0] || (D[5] && t[4]))
OUT = 8'h04;

else if ((D[2] && t[5]) || (D[6] && t[6]) )
OUT = 8'h08;


else if (D[3] && t[4])
OUT = 8'h10;

else if ( t[2] )
OUT = 8'h20;

else if ((t[1]&& (clk == 1)) || (~D[7] && I && t[3]) || (t[4] && (D[0] || D[1] || D[2] || D[3])))
OUT = 8'h80;

else 
OUT = 8'h00;







  
endmodule
