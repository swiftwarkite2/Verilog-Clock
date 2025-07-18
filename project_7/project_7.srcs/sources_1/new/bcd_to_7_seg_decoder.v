`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// transforms 4 bit binary coded decimal input into a single 7_seg output
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
