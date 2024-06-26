`timescale 1ns / 1ps

module Ten_B_Register(Q,D,Clk,L,OE,MR);
input [9:0]D; input Clk,L,MR,OE;
output [9:0]Q;

wire v;
wire [9:0] t;

and(v,L,Clk);
PET_D_FlipFlop A0(t[0],D[0],v,MR);
PET_D_FlipFlop A1(t[1],D[1],v,MR);
PET_D_FlipFlop A2(t[2],D[2],v,MR);
PET_D_FlipFlop A3(t[3],D[3],v,MR);
PET_D_FlipFlop A4(t[4],D[4],v,MR);
PET_D_FlipFlop A5(t[5],D[5],v,MR);
PET_D_FlipFlop A6(t[6],D[6],v,MR);
PET_D_FlipFlop A7(t[7],D[7],v,MR);
PET_D_FlipFlop A8(t[8],D[8],v,MR);
PET_D_FlipFlop A9(t[9],D[9],v,MR);

bufif1 B0(Q[0],t[0],OE);
bufif1 B1(Q[1],t[1],OE);
bufif1 B2(Q[2],t[2],OE);
bufif1 B3(Q[3],t[3],OE);
bufif1 B4(Q[4],t[4],OE);
bufif1 B5(Q[5],t[5],OE);
bufif1 B6(Q[6],t[6],OE);
bufif1 B7(Q[7],t[7],OE);
bufif1 B8(Q[8],t[8],OE);
bufif1 B9(Q[9],t[9],OE);

endmodule