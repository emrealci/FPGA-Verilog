`timescale 1ns / 1ps

module lab4(in1,in2,s1,out1);

input[7:0] in1,in2;
input s1;
output[7:0] out1;


assign out1 = s1 ? in2:in1;
//ya da assign out1 = (~s1 && in1 ) || (s1 && in2);

endmodule
