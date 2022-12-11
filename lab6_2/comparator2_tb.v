`timescale 1ns / 1ps


module comparator2_tb();
    
    reg [7:0] x,y,z;
    wire [7:0] out;
    
    comparator2 UUT(
    .x(x),
    .y(y),
    .z(z),
    .out(out)
    );
    
    initial begin
    x = 8'hA5;
    y = 8'hCF;
    z = 8'hF1;
    end
    
endmodule
