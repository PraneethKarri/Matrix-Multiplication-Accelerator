`timescale 1ns/1ps

module Five_B_Counter(count,clk,ce,mr);

input clk,ce,mr;
output [4:0] count;

wire [4:0] ct,at,bt,dt;
wire [3:0] s,p;
wire a,b,c;

not A(a,ce);
not B(c,clk);

not E0(ct[0],count[0]);
not E1(ct[1],count[1]);
not E2(ct[2],count[2]);
not E3(ct[3],count[3]);
not E4(ct[4],count[4]);

nand E5(b,count[0],count[4]);

and A0(at[0],count[0],a);
and A1(at[1],count[1],a);
and A2(at[2],count[2],a);
and A3(at[3],count[3],a);
and A4(at[4],count[4],a);

and B0(bt[0],ct[0],ce);
and B1(bt[1],ct[1],b,count[0],ce);
and B2(bt[2],ct[2],b,count[0],count[1],ce);
and B3(bt[3],ct[3],b,count[0],count[1],count[2],ce);
and B4(bt[4],ct[4],b,count[0],count[1],count[2],count[3],ce);

or CD0(p[0],ct[0],ct[1]);
or CD1(p[1],ct[0],ct[1],ct[2]);
or CD2(p[2],ct[0],ct[1],ct[2],ct[3]);

and AB1(s[0],count[1],ce,ct[0],b);
and AB2(s[1],count[2],ce,p[0],b);
and AB3(s[2],count[3],ce,p[1],b);
and AB4(s[3],count[4],ce,p[2],b);

or C0(dt[0],at[0],bt[0]);
or C1(dt[1],at[1],bt[1],s[0]);
or C2(dt[2],at[2],bt[2],s[1]);
or C3(dt[3],at[3],bt[3],s[2]);
or C4(dt[4],at[4],bt[4],s[3]);

PET_D_FlipFlop D0(count[0],dt[0],c,mr);
PET_D_FlipFlop D1(count[1],dt[1],c,mr);
PET_D_FlipFlop D2(count[2],dt[2],c,mr);
PET_D_FlipFlop D3(count[3],dt[3],c,mr);
PET_D_FlipFlop D4(count[4],dt[4],c,mr);

endmodule