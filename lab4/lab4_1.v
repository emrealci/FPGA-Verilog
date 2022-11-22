`timescale 1ns / 1ps

module lab4_1(inp1,inp2,inp3,inp4,s1,s2,outp1);

input [7:0] inp1,inp2,inp3,inp4;
input s1,s2;
output [7:0] outp1;

wire [7:0] w1,w2;

lab4 mux1(inp1,inp2,s1,w1);
lab4 mux2(inp3,inp4,s1,w2);
lab4 mux3(w1,w2,s2,outp1);

endmodule
