

module SC(clk,clr,d);
input clk,clr;
output reg [2:0] d;
initial
begin 
d =3'b000;
end 
always @(posedge clk)
if (clr)
d = 3'b000;
else 
d = d +1;

endmodule
