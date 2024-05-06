`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2024 10:16:31 AM
// Design Name: 
// Module Name: Common_Bus
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


module Common_Bus(selection ,MEM,AC,DR,PC,AR,IR,C_out,t);

input [7:0] t;
input [7:0] selection; 
input [15:0] AC;
input [15:0] DR;
input [15:0] IR;
input [11:0] PC;
input [11:0] AR;
input [15:0] MEM;
output  [15:0] C_out;
wire[15:0] s1 = {selection [1],selection [1],selection [1],selection [1],selection [1],selection [1],selection [1],selection [1],selection [1],selection [1],selection [1],selection [1],selection [1],selection [1],selection [1],selection [1]}; 
wire[15:0] s2 = {selection [2],selection [2],selection [2],selection [2],selection [2],selection [2],selection [2],selection [2],selection [2],selection [2],selection [2],selection [2],selection [2],selection [2],selection [2],selection [2]}; 
wire[15:0] s3 = {selection [3],selection [3],selection [3],selection [3],selection [3],selection [3],selection [3],selection [3],selection [3],selection [3],selection [3],selection [3],selection [3],selection [3],selection [3],selection [3]}; 
wire[15:0] s4 = {selection [4],selection [4],selection [4],selection [4],selection [4],selection [4],selection [4],selection [4],selection [4],selection [4],selection [4],selection [4],selection [4],selection [4],selection [4],selection [4]};
wire[15:0] s5 ={selection [5],selection [5],selection [5],selection [5],selection [5],selection [5],selection [5],selection [5],selection [5],selection [5],selection [5],selection [5],selection [5],selection [5],selection [5],selection [5]};
wire[15:0] s7 = {selection[7],selection[7],selection[7],selection[7],selection[7],selection[7],selection[7],selection[7],selection[7],selection[7],selection[7],selection[7],selection[7],selection[7],selection[7],selection[7],selection[7]};

 

assign C_out = (s1 & AR) | (s2 & PC) | (s3 & DR) | (s4 & AC) | (s5 & IR) | (s7 & MEM); 


endmodule
