`timescale 1ns / 1ps

module Custom_Logic_Block_2(y,a,clk,mr);

input a,clk,mr;
output y;

wire b,c;

not A0(b,clk);
or C0(c,y,a);

PET_D_FlipFlop B0(y,c,b,mr);

endmodule
