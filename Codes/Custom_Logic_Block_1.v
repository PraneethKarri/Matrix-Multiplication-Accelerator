`timescale 1ns / 1ps

module Custom_Logic_Block_1(y,a,b,clk,mr);

input a,b,clk,mr;
output y;

wire c,d,e,f,g,h;

or A0(c,a,b);
not A1(e,clk);
and(g,e,h);
PET_D_FlipFlop B0(d,c,g,mr);
PET_D_FlipFlop B1(f,d,g,mr);
and C0(y,d,f);
not D0(h,y);

endmodule
