`timescale 1ns / 1ps

module Eight_Bit_Adder(cout,sum,a,b,cin);
input cin;
input [7:0] a,b;
output cout;
output [7:0] sum;

wire [6:0]co;
    
 Full_Adder F1(co[0],sum[0],a[0],b[0],cin  );
 Full_Adder F2(co[1],sum[1],a[1],b[1],co[0]);
 Full_Adder F3(co[2],sum[2],a[2],b[2],co[1]);
 Full_Adder F4(co[3],sum[3],a[3],b[3],co[2]);
 Full_Adder F5(co[4],sum[4],a[4],b[4],co[3]);
 Full_Adder F6(co[5],sum[5],a[5],b[5],co[4]);
 Full_Adder F7(co[6],sum[6],a[6],b[6],co[5]);
 Full_Adder F8(cout ,sum[7],a[7],b[7],co[6]);
 
endmodule
