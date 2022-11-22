`timescale 1ns / 1ps

module lab4_2_tb();

reg [7:0] inp1_tb,inp2_tb,inp3_tb,inp4_tb,inp5_tb,inp6_tb,inp7_tb,inp8_tb;
reg s1_tb,s2_tb,s3_tb;
wire [7:0] w_out_tb;

lab6_1 UUT(
.inp1(inp1_tb),
.inp2(inp2_tb),
.inp3(inp3_tb),
.inp4(inp4_tb),
.inp5(inp5_tb),
.inp6(inp6_tb),
.inp7(inp7_tb),
.inp8(inp8_tb),
.s1(s1_tb),
.s2(s2_tb),
.s3(s3_tb),
.w_out(w_out_tb)
);

initial begin

s1_tb=0;
s2_tb=1;
s3_tb=0;
inp1_tb = 8'hAA;
inp2_tb = 8'hBA;
inp3_tb = 8'hBB;
inp4_tb = 8'hCB;
inp5_tb = 8'hCC;
inp6_tb = 8'hDC;
inp7_tb = 8'hDD;
inp8_tb = 8'hFF;


end
endmodule
