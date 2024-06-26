`timescale 1ns / 1ps

module D_Latch(Q,D,En,MR);
    input D,En,MR;
    output Q;
    
    wire v,w,x,y,z;
    
    not  A0(z,D);
    nand A1(w,D,En);
    nand A2(x,z,En);
    nand B1(Q,w,y);
    nand B2(y,x,Q,v);
    not  R0(v,MR);
    
endmodule