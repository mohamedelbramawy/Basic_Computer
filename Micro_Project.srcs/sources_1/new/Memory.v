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
RAM[0] = 16'h2009;   // LDA
RAM[1] = 16'h100A;   // ADD
RAM[2] = 16'h000B;  // AND
RAM[3] = 16'h7800;   // CLA
RAM[4] = 16'h7200;    // CMA
RAM[5] = 16'h7100;    //CME

// DATA SEGMENT      
RAM[9] = 16'h0001;  
RAM[10] = 16'h0002;
RAM[11] = 16'h0005;
end



   always @( clk)

if (Read)
M_output = RAM[Add];

else if (Write)
RAM[Add] = M_input;




   
endmodule
