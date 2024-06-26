`timescale 1ns / 1ps

module Four_B_Multiplier(T,A,B);
input [3:0] A,B;
output [7:0] T;

wire a,b,c;
wire [3:0] p,q,r,s,sum1,sum2,sum3;

and A0(p[0],A[0],B[0]);
and A1(p[1],A[0],B[1]);
and A2(p[2],A[0],B[2]);
and A3(p[3],A[0],B[3]);

and A4(q[0],A[1],B[0]);
and A5(q[1],A[1],B[1]);
and A6(q[2],A[1],B[2]);
and A7(q[3],A[1],B[3]);

and A8 (r[0],A[2],B[0]);
and A9 (r[1],A[2],B[1]);
and A10(r[2],A[2],B[2]);
and A11(r[3],A[2],B[3]);

and A12(s[0],A[3],B[0]);
and A13(s[1],A[3],B[1]);
and A14(s[2],A[3],B[2]);
and A15(s[3],A[3],B[3]);

assign T[0] = p[0];
Four_B_Adder B0(a,sum1,p[1],p[2],p[3],0,q[0],q[1],q[2],q[3],0);
assign T[1] = sum1[0];
Four_B_Adder B1(b,sum2,sum1[1],sum1[2],sum1[3],a,r[0],r[1],r[2],r[3],0);
assign T[2] = sum2[0];
Four_B_Adder B2(c,sum3,sum2[1],sum2[2],sum2[3],b,s[0],s[1],s[2],s[3],0);
assign T[3] = sum3[0];
assign T[4] = sum3[1];
assign T[5] = sum3[2];
assign T[6] = sum3[3];
assign T[7] = c ;

endmodule
