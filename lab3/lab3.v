`timescale 1ns / 1ps
//num1= 11011011
//num2 10101110

module lab3(num1,num2,out1);

input [7:0] num1;
input [7:0] num2;
output [5:0] out1;

wire [1:0] a_result ;
wire [3:0] b_result;
wire [2:0] c_result;
wire [3:0] d_result;
wire [10:0] e_result;
parameter coef =6'b110010; 

assign a_result = num1[6:5]; 
assign b_result = {2{a_result}}; 
assign c_result =  num1[2:0] ;
assign d_result = num2[3:0];
assign e_result = {d_result,c_result,b_result}; 
assign out1 = e_result / coef;

endmodule
