`timescale 1ns / 1ps


module PET_D_FlipFlop(Q,D,Clk,MR);
    input D,Clk,MR;
    output Q;
    
    wire x,y;
    
    not A0(y,Clk);
    D_Latch A1(x,D,y,MR);
    D_Latch B0(Q,x,Clk,MR);

endmodule

