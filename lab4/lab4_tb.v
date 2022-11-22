
`timescale 1ns / 1ps

module lab4_tb();

reg [7:0] inp1_tb,inp2_tb,inp3_tb,inp4_tb;
reg s1_tb,s2_tb;
wire[7:0] outp1_tb;

lab4_1 UUT(
.inp1(inp1_tb),
.inp2(inp2_tb),
.inp3(inp3_tb),
.inp4(inp4_tb),
.s1(s1_tb),
.s2(s2_tb),
.outp1(outp1_tb)
);

initial begin
s1_tb=0;
s2_tb=1;

inp1_tb = 8'ha5;
inp2_tb = 8'hb8;
inp3_tb = 8'hc7;
inp4_tb = 8'hd2;

end

endmodule
