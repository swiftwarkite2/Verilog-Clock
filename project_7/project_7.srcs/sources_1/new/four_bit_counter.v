`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// transforms the 100mhz clock into a counting 33 bit register
//////////////////////////////////////////////////////////////////////////////////

module four_bit_counter(
// this is multiplexer counter.v
output reg [32:0]Q,
input wire Clock, clr
    );

always @(posedge Clock, posedge clr)
    begin 
        if(clr == 1)
            Q<=0;
        else
            Q<=Q+1;
    end
endmodule
