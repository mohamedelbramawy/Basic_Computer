`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2024 09:14:04 AM
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU(Ac_in,DR_in ,E_in,ALU_out,ADD,AND,LDA,CIR,CIL,CMA,clk,E);
input [15:0]Ac_in;
input [15:0] DR_in;
input ADD,LDA,AND,CIR,CIL,CMA,clk,E_in;
output reg [15:0] ALU_out;
output reg  E ;


initial begin
E <= 1'b0;
ALU_out= 16'h0000;
end 





always @ (clk)


if (ADD)
{E,ALU_out} = Ac_in + DR_in;


else if (AND)
begin 
ALU_out = Ac_in & DR_in;
E = E_in;
end 


else if (LDA)
begin
ALU_out = DR_in ;
E = E_in;
end 

else if (CMA)
begin
ALU_out = ~Ac_in ;
E = E_in;
end 


  else if (CIR && (clk ==0))
begin 
E <= ALU_out[0];
ALU_out = ALU_out >> 1;
ALU_out[15] = E;
end 


  else if (CIL && (clk ==0))
begin 
E <= ALU_out[15];
ALU_out = ALU_out << 1;
ALU_out[0] = E;
end 


else 
E = E_in;


endmodule
