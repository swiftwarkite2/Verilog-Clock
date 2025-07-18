`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// manually sets the clock to a time via the 16 switches and butL. Also intelligently increments the time so as to display in the 4 seven segment displays
//////////////////////////////////////////////////////////////////////////////////

module set(
input wire [15:0]k, // connected to the stating time switches
input wire clk, // minute clock
input wire clr, // connected to btnL. used to latch the starting time switches into the c register
output reg [15:0]c // outputs the time in bcd
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
