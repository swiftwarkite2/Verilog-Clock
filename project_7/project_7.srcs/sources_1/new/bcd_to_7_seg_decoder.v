`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2024 05:20:22 PM
// Design Name: 
// Module Name: bcd_to_7_seg_decoder
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


module bcd_to_7_seg_decoder(
input wire w,x,y,z,
output wire g,f,e,d,c,b,a
    );
assign a = (!w && !x && !y && z) || (!w && x && !y && !z) || (w && x && !y && z) || (w && !x && y && z); // logic for each segment
assign b = (!w && x && !y && z) || (w && x && !y && !z) || (w && y && z) || (x && y && !z);
assign c = (!w && !x && y && !z) || (w && x && y) || (w && x && !y && !z);
assign d = (!w && !x && !y && z) || (!w && x && !y && !z) || (x && y && z);
assign e = (!w && !x && z) || (!w && x && !y) || (!w && x && y && z) || (w && !x && !y && z);
assign f = (!w && y && z) || (!x && y && !z) || (!w && !x && !y && z) || (w && x && !y && z);
assign g = (!w && !x && !y) || (!w && x && y && z) || (w && x && !y && !z);
endmodule
