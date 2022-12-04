`timescale 1ns / 1ps

module full_adder(x,y,ci,s,co);

input x,y,ci;
output s,co;

assign s = x ^ y ^ ci;
assign co = (x & y) | (ci & (x ^ y));

endmodule

