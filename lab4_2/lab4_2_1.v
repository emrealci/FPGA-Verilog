`timescale 1ns / 1ps

module lab4_2_1(inp1,inp2,inp3,inp4,inp5,inp6,inp7,inp8,s1,s2,s3,w_out);

input [7:0] inp1,inp2,inp3,inp4,inp5,inp6,inp7,inp8;
input s1,s2,s3;
output [7:0] w_out;

wire [7:0] w1,w2,w3,w4,w5,w6;

lab6 u1(inp1,inp2,s1,w1);
lab6 u2(inp3,inp4,s1,w2);
lab6 u3(inp5,inp6,s1,w3);
lab6 u4(inp7,inp8,s1,w4);

lab6 u5(w1,w2,s2,w5);
lab6 u6(w3,w4,s2,w6);
lab6 u7(w5,w6,s3,w_out);


endmodule
