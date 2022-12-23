`timescale 1ns / 1ps

module SR_latch_control(s,r,c,q,qn);

input c;
input [3:0] s,r;

output [3:0] q,qn;

SR_latch islem1(s[0],r[0],c,q[0],qn[0]);
SR_latch islem2(s[1],r[1],c,q[1],qn[1]);
SR_latch islem3(s[2],r[2],c,q[2],qn[2]);
SR_latch islem4(s[3],r[3],c,q[3],qn[3]);


endmodule
