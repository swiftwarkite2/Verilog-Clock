`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2024 04:42:34 PM

// Module Name: four_bit_counter
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
