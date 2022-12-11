`timescale 1ns / 1ps

module comparator (x,y,z,out);

    input [7:0] x,y,z;
    output reg [7:0] out;
    
    initial begin
        out = 8'b0;
     end

    always @ (x,y,z)
    begin
        if ((x > y) & (x > z)) 
            out = x;
        
        else if ((y > x) & (y > z))
            out = y;
        
        else if ((z > x) & (z > y))
            out = z;
        
        else 
            out = 8'b0;
    end
    
endmodule
