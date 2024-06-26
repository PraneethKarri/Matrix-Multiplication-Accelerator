`timescale 1ns / 1ps

module Four_B_Adder(cout,sum,a0,a1,a2,a3,b0,b1,b2,b3,cin);
    input a0,a1,a2,a3,b0,b1,b2,b3;
    input cin;
    output[3:0]sum;
    wire [2:0]co;
    output cout;
    
 Full_Adder F1(co[0],sum[0],a0,b0,cin);
 Full_Adder F2(co[1],sum[1],a1,b1,co[0]);
 Full_Adder F3(co[2],sum[2],a2,b2,co[1]);
 Full_Adder F4(cout,sum[3],a3,b3,co[2]);

endmodule
