`timescale 1ns / 1ps

module Five_In_Decoder(Y,A,En);

input [4:0] A;
input En;
output [17:0] Y;

wire [4:0] a;

not A0(a[0],A[0]);
not A1(a[1],A[1]);
not A2(a[2],A[2]);
not A3(a[3],A[3]);
not A4(a[4],A[4]);

and B0(Y[0],a[4],a[3],a[2],a[1],a[0],En);
and B1(Y[1],a[4],a[3],a[2],a[1],A[0],En);
and B2(Y[2],a[4],a[3],a[2],A[1],a[0],En);
and B3(Y[3],a[4],a[3],a[2],A[1],A[0],En);
and B4(Y[4],a[4],a[3],A[2],a[1],a[0],En);
and B5(Y[5],a[4],a[3],A[2],a[1],A[0],En);
and B6(Y[6],a[4],a[3],A[2],A[1],a[0],En);
and B7(Y[7],a[4],a[3],A[2],A[1],A[0],En);
and B8(Y[8],a[4],A[3],a[2],a[1],a[0],En);
and B9(Y[9],a[4],A[3],a[2],a[1],A[0],En);
and B10(Y[10],a[4],A[3],a[2],A[1],a[0],En);
and B11(Y[11],a[4],A[3],a[2],A[1],A[0],En);
and B12(Y[12],a[4],A[3],A[2],a[1],a[0],En);
and B13(Y[13],a[4],A[3],A[2],a[1],A[0],En);
and B14(Y[14],a[4],A[3],A[2],A[1],a[0],En);
and B15(Y[15],a[4],A[3],A[2],A[1],A[0],En);
and B16(Y[16],A[4],a[3],a[2],a[1],a[0],En);
and B17(Y[17],A[4],a[3],a[2],a[1],A[0],En);

endmodule