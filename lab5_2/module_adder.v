`timescale 1ns / 1ps


module module_adder(x,y,sum);

input [3:0] x,y;
output [4:0] sum;

wire c1,c2,c3;

half_adder islem1(x[0],y[0],sum[0],c1);
full_adder islem2(x[1],y[1],c1,sum[1],c2);
full_adder islem3(x[2],y[2],c2,sum[2],c3);
full_adder islem4(x[3],y[3],c3,sum[3],sum[4]);

endmodule
