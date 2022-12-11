`timescale 1ns / 1ps


module comparator2(x,y,z,out);
    input [7:0] x,y,z;
    output reg [7:0] out;
    wire [7:0] x1,y1,z1;
    
    initial begin
        out = 8'h00;
    end
    
    assign x1 = ~(x - 8'b00000001);
    assign y1 = ~(y - 8'b00000001);
    assign z1 = ~(z - 8'b00000001);

 
    always @ (x,y,z)
    begin
        if ((x1 > y1) & (x1 > z1))
            out = x;
        else if ((y1 > x1) & (y1 > z1))
            out = y;
        else
            out = z;
    end
    
endmodule
