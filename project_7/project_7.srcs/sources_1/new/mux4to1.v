`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// selects between the 1’s minute, 10’s minute, 1’s hour, or 10’s hour bcd to output
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
