module frequency_divider_tb();
 
 reg clk;
 wire[1:0] out;
 
 frequency_divider uut(
 .clk(clk),
 .out(out)
 );
 
 initial begin
 clk = 0;
 
 forever
 #10 clk = ~clk; // T = 20
 end
 
endmodule