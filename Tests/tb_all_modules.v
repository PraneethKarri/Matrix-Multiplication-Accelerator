`timescale 1ns / 1ps

module tb_all_modules();

parameter dt = 30;

////////////////// Code for CLOCK //////////////////

// parameter ct = dt;
//reg clk;

//initial
// clk = 1'b0;

//always
//#(ct/2) clk = ~(clk);


/////////////////// Code for FIVE TO THIRTY TWO DECODER //////////////////

//reg [4:0] a;reg b;
//wire [31:0] y;

//Five_In_Decoder a1(y,a,b);

//initial
//begin
//b=1;

//    a = 5'b0000;
//#60 a = 5'b01001;
//#60 a = 5'b01101;
//#60 a = 5'b01011;
//#60 b = 0;
//end


/////////////////// Code for FIVE-BIT (0 TO 17) COUNTER ////////////////////

//reg ce,mr;
//wire [4:0] count;

//Five_B_Counter A2(count,clk,ce,mr);

//initial
//begin 
//ce = 1; mr = 1;#1 mr = 0;

//#700 ce = 0;
//#100 mr = 1;
//#110  mr = 0;ce= 1;
//end


///////////////// Code for 4-BIT REGISTER  ///////////////

//reg l,mr;
//reg [3:0] d;
//wire [3:0] q;

//Four_B_Register A0(q,d,clk,l,mr);

//initial
//begin

//l = 1; mr = 0;

//    d=4'b0000; 
//#dt d=4'b0001; 
//#dt d=4'b0010; 
//#dt d=4'b0011; 
//#dt d=4'b0100; 
//#dt d=4'b0101; 
//#dt d=4'b0110; 
//#dt d=4'b0111;  
//#dt d=4'b1000;
//#dt d=4'b1001; l = 0;
//#dt d=4'b1010; 
//#dt d=4'b1011; 
//#dt d=4'b1100; 
//#dt d=4'b1101; mr = 1; #1mr = 0;
//#dt d=4'b1110; 
//#dt d=4'b1111; 
//end


/////////////// Code for FOUR-BIT MULTIPLIER ///////////////

//reg [3:0]a,b;
//wire [7:0]out;

//Four_B_Multiplier A1(out,a,b);

//initial
//begin

//b = 4'b0011;

//    a=4'b0000; 
//#dt a=4'b0001; 
//#dt a=4'b0010; 
//#dt a=4'b0011; 
//#dt a=4'b0100; 
//#dt a=4'b0101; 
//#dt a=4'b0110; 
//#dt a=4'b0111;  
//#dt a=4'b1000;
//#dt a=4'b1001;  
//#dt a=4'b1010; 
//#dt a=4'b1011; 
//#dt a=4'b1100; 
//#dt a=4'b1101; 
//#dt a=4'b1110; 
//#dt a=4'b1111; 
//end


///////////////// Code for Three_X_Four_In_Mux ////////////////

//reg [3:0] a,b,c;
//reg [1:0] s;
//wire [3:0] y;

//Three_X_Four_In_Mux A0(y,a,b,c,s);

//initial
//begin

//a = 4'b0001; b = 4'b0101 ; c=4'b1111;

//    s = 2'b00;
//#dt s = 2'b01;
//#dt s = 2'b10;
//#dt s = 2'b11; 

//end


/////////////////// Code for FOUR-BIT (1010) CUSTOM COUNTER ////////////////////

//reg ce,mr;
//wire [3:0] count;

//Custom_Counter_1010 A2(count,clk,ce,mr);

//initial
//begin 
//ce = 1; mr = 1;#1 mr = 0;

//#700 ce = 0;
//#100 mr = 1;
//#110  mr = 0;ce= 1;
//end


///////////////// Code for CUSTOM DECODER (1010) /////////////

//reg en;
//wire [8:0] y;
//reg ce,mr;
//wire [3:0] count;

//Custom_Counter_1010 A2(count,clk,ce,mr);
//Custom_Decoder_1010 A0(y,count,en);

//initial
//begin

//ce = 1;mr=0;en = 1;
//#300 ce = 0;
//end


//////////////// Code for CUSTOM LOGIC BLOCK 1 ////////////////

//reg mr;
//wire y;

//reg en;
//wire [17:0] q;

//reg ce;
//wire [4:0] count;

//Five_B_Counter A2(count,clk,ce,mr);

//Five_In_Decoder a1(q,count,en);

//Custom_Logic_Block_1 A1(y,q[16],q[17],clk,mr);

//initial begin
//ce = 1;en = 1;mr = 1; #1 mr = 0;
//end


////////////// Code for THREE X 8-BIT ADDER //////////////

//reg [7:0] a,b,c;
//wire [9:0] sum;

//Three_X_8_Bit_Adder A4(sum,c,b,a);

//initial begin

//a = 8'hff;b = 8'hff;c = 'b0;

//while(1)
//#dt c=c+1;

//end


/////////////// Code for TEN-BIT REGISTER /////////////////

//reg l,mr,oe;
//reg [9:0] d;
//wire [9:0] q;

//Ten_B_Register A0(q,d,clk,l,oe,mr);

//initial
//begin

//l = 1; mr = 0; oe = 1;d=10'd0;

//while(1)
//#dt d=d+10;

//end

//initial begin
//#(6*dt) oe = 0; # dt mr= 1; #(5*dt) oe = 1;#200 mr = 0;#100 l = 0;
//end


/////////////////// Code for FOUR-BIT (0 TO 8) COUNTER ////////////////////

//reg ce,mr;
//wire [3:0] count;

//Custom_Counter_0to8 A2(count,clk,ce,mr);

//initial
//begin 
//ce = 1; mr = 1;#1 mr = 0;

//#700 ce = 0;
//#100 mr = 1;
//#110  mr = 0;ce= 1;
//end


////////////// Code for CUSTOM DECODER 0TO8 //////////////

//reg En;
//wire [8:0] y;

//reg ce,mr;
//wire [3:0] count;

//Custom_Counter_0to8 A2(count,clk,ce,mr);
//Custom_Decoder_0to8 A1(y,count,En);

//initial
//begin

//ce = 1;mr = 1; #1 mr = 0;
//En = 1;
//#(10*dt) En  = 0;
//#(10*dt) En  = 1;

//end
//always@(y) $display("out = %b", y);
//initial $monitor("[Monitoring data]  time=%0d  count=%b  y=%b  mr=%b  En=%b",$time,count,y,mr,En);


/////////////// Code for MATRIX MULTIPLIER /////////////////

reg [3:0] i,os;
reg ic,en,mr;
wire [9:0] matrix;

parameter ict = 0.5;
parameter oadt = 2;

MATRIX_MULTIPLIER A1(matrix,i,ic,os,en,mr);

initial begin
$monitor($time, "  Output Matrix Value are  M = %0d", matrix  );
en = 1;ic =0;os = 0;
mr=0;#1 mr = 1;#1 mr= 0;

i = 1;#ict ic = 1;#ict ic= 0;#ict
i = 4;#ict ic = 1;#ict ic= 0;#ict
i = 5;#ict ic = 1;#ict ic= 0;#ict
i = 4;#ict ic = 1;#ict ic= 0;#ict
i = 5;#ict ic = 1;#ict ic= 0;#ict
i = 6;#ict ic = 1;#ict ic= 0;#ict
i = 0;#ict ic = 1;#ict ic= 0;#ict
i = 0;#ict ic = 1;#ict ic= 0;#ict
i = 0;#ict ic = 1;#ict ic= 0;#ict
i = 10;#ict ic = 1;#ict ic= 0;#ict
i = 11;#ict ic = 1;#ict ic= 0;#ict
i = 7;#ict ic = 1;#ict ic= 0;#ict
i = 13;#ict ic = 1;#ict ic= 0;#ict
i = 14;#ict ic = 1;#ict ic= 0;#ict
i = 9;#ict ic = 1;#ict ic= 0;#ict
i = 2;#ict ic = 1;#ict ic= 0;#ict
i = 3;#ict ic = 1;#ict ic= 0;#ict
i = 4;#ict ic = 1;#ict ic= 0;#ict

ic = 1;#ict ic= 0;#ict
ic = 1;#ict ic= 0;#ict
ic = 1;#ict ic= 0;#ict
ic = 1;#ict ic= 0;#ict
ic = 1;#ict ic= 0;#ict
ic = 1;#ict ic= 0;#ict
ic = 1;#ict ic= 0;#ict
ic = 1;#ict ic= 0;#ict
ic = 1;#ict ic= 0;

#oadt os = 0;
#oadt os = 1;
#oadt os = 2;
#oadt os = 3;
#oadt os = 4;
#oadt os = 5;
#oadt os = 6;
#oadt os = 7;
#oadt os = 8;
#oadt

 $finish;
end 

endmodule





