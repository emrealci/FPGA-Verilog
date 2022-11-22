`timescale 1ns / 1ps

module lab2(in1,in2,out1);

input [7:0] in1,in2;
output [7:0] out1;

assign out1 = in1 - in2;

endmodule
