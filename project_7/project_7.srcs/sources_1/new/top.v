`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// connects the Basys 3 hardware components to the fpga modules. It also decodes the 33 bit clock register into minutes
//////////////////////////////////////////////////////////////////////////////////

module top(
input clk,
input [15:0]sw,
input btnL,
input btnU,
output [15:0]led,
output [3:0]an,
output [6:0]seg
    );
    wire [15:0]c;
    wire [32:0]Q;
    wire min;
    wire clr = 0;
four_bit_counter U14 (Q, clk, min);
assign min = (Q[32]&&Q[30]&&Q[29]&&Q[26]&&Q[24]&&Q[23]&&Q[21]&&Q[15]&&Q[13]&&Q[12]&&Q[11]&&Q[10]);
set U13 (sw, min,btnL, c);
four_bit_counter_Basey U12 (clk, c[15:0], btnU, led[15:0], an[3:0], seg[6:0]);
endmodule
