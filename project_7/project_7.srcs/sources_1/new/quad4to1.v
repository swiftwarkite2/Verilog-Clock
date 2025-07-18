`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// using the 5 mS clock that cycles the power, this module selects which of the four 4bit time digits to feed to the 7_seg_decoder
//////////////////////////////////////////////////////////////////////////////////

module quad4to1(
output wire c0, c1, c2, c3,
input wire s1, s0, d15, d14, d13, d12, d11, d10, d9, d8, d7, d6, d5, d4, d3, d2, d1, d0
    );
mux4to1 U4 (c0, s0, s1, d0, d4, d8, d12);
mux4to1 U5 (c1, s0, s1, d1, d5, d9, d13);
mux4to1 U6 (c2, s0, s1, d2, d6, d10, d14);
mux4to1 U7 (c3, s0, s1, d3, d7, d11, d15);
endmodule
