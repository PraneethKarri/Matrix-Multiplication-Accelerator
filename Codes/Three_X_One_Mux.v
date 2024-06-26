`timescale 1ns / 1ps

module Three_X_One_Mux(y,a,b,c,S);
input a,b,c;
input [1:0]S;
output y;

wire d,e,f,g,h,i,j;

not A0(e,S[0]);
not A1(d,S[1]);

and B0(f,d,e,a);
and B1(g,d,S[0],b);
and B2(h,S[1],e,c);

or C0(y,f,g,h);

endmodule
