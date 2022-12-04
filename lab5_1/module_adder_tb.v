`timescale 1ns / 1ps

module module_adder_tb();

reg [2:0] x,y;
wire [3:0] sum;

module_adder UUT(.x(x),.y(y),.sum(sum));

initial begin

x = 3'b101;
y = 3'b011;

end

endmodule
