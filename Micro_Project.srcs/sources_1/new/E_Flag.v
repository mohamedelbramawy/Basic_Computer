`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2024 07:45:22 PM
// Design Name: 
// Module Name: E_Flag
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


module E_Flag(in,clk ,cmp,clr,out);

 input in,clk,cmp ,clr;
 output  reg out;
 reg temp ; 
 initial
 out = 0;
 begin 
 
 end 
 always @ ( posedge clk)
 
 if(clr)
 out = 1'b0;
 
 else if (cmp)
 begin 
   if (out == 1)
    out = 1'b0;
   else
    out = 1'b1;
 end   
 
 
 else
    out = in; 
    
    
 
 
 
  
  
 

 
endmodule
