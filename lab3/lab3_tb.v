`timescale 1ns / 1ps

module lab3_tb();

reg [7:0] num1; //main kodumuzdaki inputlar için reg, outputlar için wire olusturduk
reg [7:0] num2;
wire [5:0] out1;

lab3 uut(
    .num1(num1),
    .num2(num2),
    .out1(out1)
    );
   
initial begin //initial begin içine inputlarımızın değerlerini gireriz.

num1 = 8'b11011011;
num2 = 8'b10101110;
end 

endmodule
