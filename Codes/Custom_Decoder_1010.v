`timescale 1ns / 1ps

module Custom_Decoder_1010(Y,A,En);

input En;
input [3:0] A;
output [8:0] Y;

wire [4:0] a;

not A0(a[0],A[0]);
not A1(a[1],A[1]);
not A2(a[2],A[2]);
not A3(a[3],A[3]);

and B0(Y[0],a[3],a[2],a[1],a[0],En);
and B1(Y[1],a[3],a[2],a[1],A[0],En);
and B2(Y[2],a[3],a[2],A[1],a[0],En);
and B3(Y[3],a[3],A[2],a[1],a[0],En);
and B4(Y[4],a[3],A[2],a[1],A[0],En);
and B5(Y[5],a[3],A[2],A[1],a[0],En);
and B6(Y[6],A[3],a[2],a[1],a[0],En);
and B7(Y[7],A[3],a[2],a[1],A[0],En);
and B8(Y[8],A[3],a[2],A[1],a[0],En);

endmodule
