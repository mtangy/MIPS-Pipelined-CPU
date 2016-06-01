`timescale 1ns / 1ps
//*******************************************************************************
//  Michael Tangy                                                              // 
//  ECE 483-001                                                                //
//                                                                             //
//  6/23/2015                                                                  //
//                                                                             //
//  This file contains our 32bit ALU formed from 32 instantiaded 1bit ALU's    //
//  with their Carry in's and out's tied together                              //
//*******************************************************************************

module ALU_32b(

   input [31:0] A,
	input [31:0] B,
	output [31:0] Out,
	input [3:0] Select,
	input Cin,
	output Co
	 );

wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31;


ALU_1_Bit b0(A[0],B[0],Cin, Select,c1,Out[0]);
ALU_1_Bit b1(A[1],B[1],c1, Select,c2,Out[1]);
ALU_1_Bit b2(A[2],B[2],c2, Select,c3,Out[2]);
ALU_1_Bit b3(A[3],B[3],c3, Select,c4,Out[3]);
ALU_1_Bit b4(A[4],B[4],c4, Select,c5,Out[4]);
ALU_1_Bit b5(A[5],B[5],c5, Select,c6,Out[5]);
ALU_1_Bit b6(A[6],B[6],c6, Select,c7,Out[6]);
ALU_1_Bit b7(A[7],B[7],c7, Select,c8,Out[7]);
ALU_1_Bit b8(A[8],B[8],c8, Select,c9,Out[8]);
ALU_1_Bit b9(A[9],B[9],c9, Select,c10,Out[9]);
ALU_1_Bit b10(A[10],B[10],c10, Select,c11,Out[10]);
ALU_1_Bit b11(A[11],B[11],c11, Select,c12,Out[11]);
ALU_1_Bit b12(A[12],B[12],c12, Select,c13,Out[12]);
ALU_1_Bit b13(A[13],B[13],c13, Select,c14,Out[13]);
ALU_1_Bit b14(A[14],B[14],c14, Select,c15,Out[14]);
ALU_1_Bit b15(A[15],B[15],c15, Select,c16,Out[15]);
ALU_1_Bit b16(A[16],B[16],c16, Select,c17,Out[16]);
ALU_1_Bit b17(A[17],B[17],c17, Select,c18,Out[17]);
ALU_1_Bit b18(A[18],B[18],c18, Select,c19,Out[18]);
ALU_1_Bit b19(A[19],B[19],c19, Select,c20,Out[19]);
ALU_1_Bit b20(A[20],B[20],c20, Select,c21,Out[20]);
ALU_1_Bit b21(A[21],B[21],c21, Select,c22,Out[21]);
ALU_1_Bit b22(A[22],B[22],c22, Select,c23,Out[22]);
ALU_1_Bit b23(A[23],B[23],c23, Select,c24,Out[23]);
ALU_1_Bit b24(A[24],B[24],c24, Select,c25,Out[24]);
ALU_1_Bit b25(A[25],B[25],c25, Select,c26,Out[25]);
ALU_1_Bit b26(A[26],B[26],c26, Select,c27,Out[26]);
ALU_1_Bit b27(A[27],B[27],c27, Select,c28,Out[27]);
ALU_1_Bit b28(A[28],B[28],c28, Select,c29,Out[28]);
ALU_1_Bit b29(A[29],B[29],c29, Select,c30,Out[29]);
ALU_1_Bit b30(A[30],B[30],c30, Select,c31,Out[30]);
ALU_1_Bit b31(A[31],B[31],c31, Select,Co,Out[31]);



endmodule
