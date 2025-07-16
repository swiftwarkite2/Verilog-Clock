`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2024 04:56:42 PM
// Design Name: 
// Module Name: twotofour_decoder
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


module twotofour_decoder(
input [1:0]A,
output reg[3:0]an
    );
integer i;

always @(A)
    begin
        an = 15;
        for(i=0; i<4; i=i+1)
            begin
            if(A==i)
                an[i] = 0;
            end
    end
endmodule
