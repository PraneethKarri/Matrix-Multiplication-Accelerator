`timescale 1ns / 1ps

module Custom_Counter_1010(count,clk,ce,mr);

input clk,ce,mr;
output [3:0] count;

//always@(negedge clk or posedge mr)
//begin

//if(count < 4'b1010 & ~mr)
//begin

//if(count[1])
//begin
//count[3:2] = ce? count[3:2]+1  : count[3:2];
//count[1:0] = ce? 2'b00 : count[1:0];
//end
//else
//count = ce? count+1: count;

//end

//else 
//count = 4'b0000;

//end

wire [3:0] pt,ct,st,data;
wire a,b,c,d;

not A(b,clk);

not A0(a,ce);
not A1(ct[0],count[0]);
not A2(ct[1],count[1]); 
not A3(ct[2],count[2]); 
not A4(ct[3],count[3]);  

and B0(pt[0],a,count[0]);
and B1(pt[1],a,count[1]);
and B2(pt[2],a,count[2]);
and B3(pt[3],a,count[3]);

and B4(st[0],ce,ct[0],ct[1]);
and B5(st[1],ce,ct[1],count[0]);
and B6(st[2],ce,ct[2],ct[3]);
and B7(st[3],ce,ct[3],count[2]);

or C0(data[0],pt[0],st[0]);
or C1(data[1],pt[1],st[1]);
or C2(data[2],pt[2],st[2]);
or C3(data[3],pt[3],st[3]);

PET_D_FlipFlop D0(count[0],data[0],b,mr);
PET_D_FlipFlop D1(count[1],data[1],b,mr);
PET_D_FlipFlop D2(count[2],data[2],ct[1],mr);
PET_D_FlipFlop D3(count[3],data[3],ct[1],mr);

endmodule
