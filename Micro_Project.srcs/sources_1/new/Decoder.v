`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2024 07:56:30 AM
// Design Name: 
// Module Name: Decoder
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


module Decoder(d_in,d_out );
 input  [2:0] d_in;

 output  [7:0] d_out;

assign d_out[0] = ~d_in[2] &&~ d_in[1] && ~d_in[0];

assign d_out[1] = ~d_in[2] && ~d_in[1] && d_in[0];
assign d_out[2] = ~d_in[2] && d_in[1] && ~d_in[0];
assign d_out[3] =~d_in[2] && d_in[1] && d_in[0];
assign d_out[4] = d_in[2] && ~d_in[1] && ~d_in[0];

assign d_out[5] = d_in[2] && ~d_in[1] && d_in[0];

assign d_out[6] =d_in[2] && d_in[1] && ~d_in[0];

assign d_out[7] = d_in[2] && d_in[1] && d_in[0];

endmodule
