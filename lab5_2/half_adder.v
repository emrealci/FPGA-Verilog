`timescale 1ns / 1ps

module half_adder(x,y,s,co);
input x,y;
output s,co;

assign s = x ^ y;
assign co = x & y;

endmodule
