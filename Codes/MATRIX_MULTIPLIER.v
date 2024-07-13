`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Name             : Matrix Multiplier
// Designer         : Praneeth KSS
// Description      : Takes four bit binary values as inputs of two matrices and outputs the product matrix in SISO Foarmat.
// Specifications   : Has 11 input terminals and 10 output terminals and require a total of 27 clock cycles to complete operation.
// Usage Guidelines : Apply a clock pulse after each input and apply 9 additonal clocl pulses after giving all inputs.
//                    To get a specific output, give the respected output address via address lines.
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


module MATRIX_MULTIPLIER (
 output [9:0] data_out,
 output done,
 input [3:0] data_in,
 input clk_i,
 input [3:0] out_sel,
 input enable,
 input reset
);

wire [4:0] count1;
wire [3:0] count2;
wire [17:0] decoderout1;
wire [3:0] inregout [17:0];
wire [3:0] muxout [5:0];
wire [7:0] multiplierout [2:0];
wire a,b,c,d,e,f,g,h,i;
wire [9:0] adderout;
wire [8:0] decoderout2,decoderout3;

//////////// INPUT REGISTERS LOAD CONTROL ////////////

Five_B_Counter A0(count1,clk_i,enable,reset);
Custom_Logic_Block_3 E(f,count1[0],count1[4],clk_i,reset);
and E1(d,f,enable);
Five_In_Decoder B0(decoderout1,count1,d);

///////////// INPUT REGISTERS //////////////

Four_B_Register C0(inregout[0],data_in,clk_i,decoderout1[0],reset);
Four_B_Register C1(inregout[1],data_in,clk_i,decoderout1[1],reset);
Four_B_Register C2(inregout[2],data_in,clk_i,decoderout1[2],reset);
Four_B_Register C3(inregout[3],data_in,clk_i,decoderout1[3],reset);
Four_B_Register C4(inregout[4],data_in,clk_i,decoderout1[4],reset);
Four_B_Register C5(inregout[5],data_in,clk_i,decoderout1[5],reset);
Four_B_Register C6(inregout[6],data_in,clk_i,decoderout1[6],reset);
Four_B_Register C7(inregout[7],data_in,clk_i,decoderout1[7],reset);
Four_B_Register C8(inregout[8],data_in,clk_i,decoderout1[8],reset);
Four_B_Register C9(inregout[9],data_in,clk_i,decoderout1[9],reset);
Four_B_Register C10(inregout[10],data_in,clk_i,decoderout1[10],reset);
Four_B_Register C11(inregout[11],data_in,clk_i,decoderout1[11],reset);
Four_B_Register C12(inregout[12],data_in,clk_i,decoderout1[12],reset);
Four_B_Register C13(inregout[13],data_in,clk_i,decoderout1[13],reset);
Four_B_Register C14(inregout[14],data_in,clk_i,decoderout1[14],reset);
Four_B_Register C15(inregout[15],data_in,clk_i,decoderout1[15],reset);
Four_B_Register C16(inregout[16],data_in,clk_i,decoderout1[16],reset);
Four_B_Register C17(inregout[17],data_in,clk_i,decoderout1[17],reset);

//////////// INPUT REGISTER OUTPUT CONTROL ///////////

Custom_Logic_Block_1 C18(a,decoderout1[16],decoderout1[17],clk_i,reset);
Custom_Counter_1010 D0(count2,clk_i,a,reset);

//////////// MULTIPLEXERS TO GUIDE DATA ////////////

Three_X_Four_In_Mux EA0(muxout[0],inregout[0],inregout[3],inregout[6],count2[3:2]);
Three_X_Four_In_Mux EA1(muxout[1],inregout[1],inregout[4],inregout[7],count2[3:2]);
Three_X_Four_In_Mux EA2(muxout[2],inregout[2],inregout[5],inregout[8],count2[3:2]);
Three_X_Four_In_Mux EB0(muxout[3],inregout[9],inregout[10],inregout[11],count2[1:0]);
Three_X_Four_In_Mux EB1(muxout[4],inregout[12],inregout[13],inregout[14],count2[1:0]);
Three_X_Four_In_Mux EB2(muxout[5],inregout[15],inregout[16],inregout[17],count2[1:0]);

///////////// MULTIPLIERS /////////////

Four_B_Multiplier F0(multiplierout[0],muxout[0],muxout[3]);
Four_B_Multiplier F1(multiplierout[1],muxout[1],muxout[4]);
Four_B_Multiplier F2(multiplierout[2],muxout[2],muxout[5]);

Three_X_8_Bit_Adder G0(adderout,multiplierout[0],multiplierout[1],multiplierout[2]);

////////////// OUTPUT REGISTER LOAD AND OUTPUT CONTROL /////////////

Custom_Logic_Block_2 F3(i,decoderout2[8],clk_i,reset);
not(g,d);
and D1(b,enable,g,h);
and D3(e,enable,g,i);
not E2(h,i);
Custom_Decoder_1010 E0(decoderout2,count2,b);
Custom_Decoder_0to8 A1(decoderout3,out_sel,e);

////////////// OUTPUT REGISTERS //////////////

Ten_B_Register H0(data_out,adderout,clk_i,decoderout2[0],decoderout3[0],reset);
Ten_B_Register H1(data_out,adderout,clk_i,decoderout2[1],decoderout3[1],reset);
Ten_B_Register H2(data_out,adderout,clk_i,decoderout2[2],decoderout3[2],reset);
Ten_B_Register H3(data_out,adderout,clk_i,decoderout2[3],decoderout3[3],reset);
Ten_B_Register H4(data_out,adderout,clk_i,decoderout2[4],decoderout3[4],reset);
Ten_B_Register H5(data_out,adderout,clk_i,decoderout2[5],decoderout3[5],reset);
Ten_B_Register H6(data_out,adderout,clk_i,decoderout2[6],decoderout3[6],reset);
Ten_B_Register H7(data_out,adderout,clk_i,decoderout2[7],decoderout3[7],reset);
Ten_B_Register H8(data_out,adderout,clk_i,decoderout2[8],decoderout3[8],reset);

or A(done,decoderout3[0],decoderout3[1],decoderout3[2],decoderout3[3],decoderout3[4],decoderout3[5],decoderout3[6],decoderout3[7],decoderout3[8]);

endmodule
