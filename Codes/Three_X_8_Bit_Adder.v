`timescale 1ns / 1ps

module Three_X_8_Bit_Adder(Sum,A,B,C);
input [7:0] A,B,C;
output [9:0] Sum;

wire a,b;
wire [7:0] y;

Eight_Bit_Adder A0(a,y,A,B,0);
Eight_Bit_Adder A1(b,Sum[7:0],y,C,0);
Half_Adder B0(Sum[9],Sum[8],a,b);

endmodule
