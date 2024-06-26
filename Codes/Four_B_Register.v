`timescale 1ns / 1ps

module Four_B_Register(Q,D,Clk,L,MR);
input [3:0]D; input Clk,L,MR;
output [3:0]Q;

wire v;

and(v,L,Clk);
PET_D_FlipFlop A0(Q[0],D[0],v,MR);
PET_D_FlipFlop A1(Q[1],D[1],v,MR);
PET_D_FlipFlop A2(Q[2],D[2],v,MR);
PET_D_FlipFlop A3(Q[3],D[3],v,MR);

endmodule
