`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// connects the set module to the following modules that make the clock displayed on the 7_seg
//////////////////////////////////////////////////////////////////////////////////

module four_bit_counter_Basey(
input wire Bclk,
input wire [15:0]Bsw,
input wire BbtnU,
output wire [15:0]Bled,
output wire [3:0]Ban,
output wire [6:0]Bseg
    );
wire [32:0]Q;
wire clear;
wire c0, c1, c2, c3;
assign clear = BbtnU;
four_bit_counter U8(Q,Bclk,clear);
twotofour_decoder U9(Q[19:18],Ban[3:0]);
quad4to1 U10(c0,c1,c2,c3,Q[19],Q[18],Bsw[15],Bsw[14],Bsw[13],Bsw[12],Bsw[11],Bsw[10],Bsw[9],Bsw[8],Bsw[7],Bsw[6],Bsw[5],Bsw[4],Bsw[3],Bsw[2],Bsw[1],Bsw[0]);
assign Bled[15:0] = Bsw[15:0];
bcd_to_7_seg_decoder U11(c3,c2,c1,c0,Bseg[6],Bseg[5],Bseg[4],Bseg[3],Bseg[2],Bseg[1],Bseg[0]);
endmodule
