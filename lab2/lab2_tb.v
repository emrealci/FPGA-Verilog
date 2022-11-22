`timescale 1ns / 1ps

module lab2_tb();

reg [7:0] inp1,inp2;
wire [7:0] outp1;

lab2 UUT(

.in1(inp1),
.in2(inp2),
.out1(outp1)

);

inital begin

inp1 = 8'b00011001;
inp2 = 8'b11011001;

end 

endmodule
