`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2024 05:06:59 PM
// Design Name: 
// Module Name: mux4to1
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


module mux4to1(
output wire y,
input wire s0, s1, d0, d1, d2, d3
    );
wire c0, c1;
mux2to1 U0 (c0, d0, d1, s0);
mux2to1 U1 (c1, d2, d3, s0);
mux2to1 U2 (y, c0, c1, s1);
endmodule
