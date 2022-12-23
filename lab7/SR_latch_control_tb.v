`timescale 1ns / 1ps

module SR_latch_control_tb();

reg [3:0] s,r;
reg c;

wire [3:0] q,qn;

SR_latch_control uut(

.s(s),
.r(r),
.c(c),
.q(q),
.qn(qn)
);

initial begin

c = 1'b0;
s = 4'h0;
r = 4'h0;
#10;

c = 1'b0;
s = 4'hF;
r = 4'h0;
#10;

c = 1'b1;
s = 4'h0;
r = 4'h0;
#10;

c = 1'b1;
s = 4'hA;
r = 4'h5;
#10;

c = 1'b1;
s = 4'h0;
r = 4'h0;
#10;

c = 1'b1;
s = 4'hF;
r = 4'hA;
#10;

c = 1'b1;
s = 4'h0;
r = 4'h5;
#10;

c = 1'b1;
s = 4'h0;
r = 4'h0;
#10;

end 

endmodule

