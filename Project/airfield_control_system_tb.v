`timescale 1ns / 1ps
module airfield_control_system_tb();
reg clk , weather , airfield;
reg [5:0] passengers;
wire [2:0] led1 , led2;

airfield_control_system UUT(.clk(clk),.weather(weather),
.passengers(passengers),
.airfield(airfield),.led1(led1),.led2(led2)
);
initial begin 
clk = 0;
passengers = 6'b0;
#10;

airfield = 0;
weather = 1;
passengers = 6'b001111;
#20;

airfield = 0;
weather = 1;
passengers = 6'b111110;
#20;

airfield = 1;
weather = 1;
passengers = 6'b001111;
#20;

airfield = 1;
weather = 1;
passengers = 6'b111101;
#20;

airfield = 1;
weather = 0;
passengers = 6'b111110;
#20;
end

always 
begin
#10;
clk =~ clk;
end
endmodule
