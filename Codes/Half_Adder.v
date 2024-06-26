`timescale 1ns / 1ps


module Half_Adder(Co,Sum,A,B);
input A,B;
output Co,Sum;

xor A0(Sum,A,B);
and A1(Co,A,B);

endmodule
