`timescale 1ns / 1ps

module Three_X_Four_In_Mux(Y,A,B,C,S);

input [3:0] A,B,C; 
input [1:0] S;
output [3:0] Y;

Three_X_One_Mux A0(Y[0],A[0],B[0],C[0],S);
Three_X_One_Mux A1(Y[1],A[1],B[1],C[1],S);
Three_X_One_Mux A2(Y[2],A[2],B[2],C[2],S);
Three_X_One_Mux A3(Y[3],A[3],B[3],C[3],S);

endmodule
