`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// uses the 5 mS clock to cycle the power between each of the four 7_seg displays faster the human eye can notice
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
