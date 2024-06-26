`timescale 1ns / 1ps


module Full_Adder(Co,Sum,A,B,Ci);
input A,B,Ci;
output Sum,Co;

wire x,y,z;

Half_Adder A0(x,y,A,B);
Half_Adder B0(z,Sum,y,Ci);
or B1(Co,x,z);

endmodule
