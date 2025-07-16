`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2024 12:45:32 PM
// Design Name: 
// Module Name: set
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


module set(
input wire [15:0]k,
input wire clk,
input wire clr,
output reg [15:0]c
    );

always @(posedge clk, posedge clr)
    begin 
        if(clr == 1)
            c<=k;
        else
            if(c[3:0]==9)
                begin
                c[3:0]=0;
                c[7:4]=c[7:4]+1;
                    if(c[7:4]==6)
                        begin
                            c[7:4]=0;
                            c[11:8]=c[11:8]+1;
                                if(c[11:8]==10)
                                    begin
                                        c[11:8]=0;
                                        c[15:12]=1;
                                    end
                                else
                                if(c[11:8]==3&&c[15:12]==1)
                                    begin
                                        c[11:8]=1;
                                        c[15:12]=0;
                                    end
                        end
                end
                else
                    c<=c+1;
    end
endmodule
