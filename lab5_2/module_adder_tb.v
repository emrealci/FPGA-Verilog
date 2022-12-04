`timescale 1ns / 1ps



module module_adder_tb();

reg [3:0] x,y;
wire [4:0] sum;

module_adder UUT(.x(x),.y(y),.sum(sum));

initial begin

x = 4'b1010;
y = 4'b1100;
end

endmodule
