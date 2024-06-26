`timescale 1ns / 1ps

`timescale 1ns / 1ps

module Custom_Logic_Block_3(y,a,b,clk,mr);

input a,b,clk,mr;
output y;

wire c,d,e,g;

and A0(e,a,b);
or A1(c,e,d);
not(g,clk);
PET_D_FlipFlop B0(d,c,g,mr);
not c0(y,d);

endmodule
