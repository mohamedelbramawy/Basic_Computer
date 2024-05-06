`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2024 09:02:09 AM
// Design Name: 
// Module Name: Memory
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


module Memory(clk,Add,M_input,Read,Write,M_output);

input clk,Read,Write;
input [15:0] M_input;
input [11:0] Add;
output reg [15:0] M_output;
reg [15:0] RAM [4096:0];


initial 
begin 
RAM[0] = 16'h200c;
RAM[1] = 16'h100d;
RAM[2] = 16'h000C;
RAM[3] = 16'h7800;
RAM[4] = 16'h7400;
RAM[5] = 16'h7200;
RAM[6] = 16'h7100;
RAM[7] = 16'h200c;
RAM[8] = 16'h7080;
RAM[9] = 16'h7040;
RAM[10] = 16'h7020;
RAM[11] = 16'h7010;



RAM[12] = 16'h0005a;
RAM[13] = 16'h0010;
RAM[14]  = 16'h1262;
end



always @( M_input)

if (Read)
M_output = RAM[Add];

else if (Write)
RAM[Add] = M_input;




   
endmodule
