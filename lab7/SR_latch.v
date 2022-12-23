`timescale 1ns / 1ps

module SR_latch(s,r,c,q,qn);

input s,r,c;

output reg q;
output reg qn;

always @ (s,r,c)

if (c & s) 
    {q,qn} <= 2'b10;

else if (c & r)
    {q,qn} <= 2'b01;


endmodule
