`timescale 1ns / 1ps
//*******************************************************************************
//  Michael Tangy                                                              // 
//  ECE 483-001                                                                //
//                                                                             //
//  6/22/2015                                                                  //
//                                                                             //
//  This file contains the structural Description of the 1 bit ALU using logic //
//  gates adders and multiplexers                                              //
//*******************************************************************************
module ALU_1_Bit(
	input A,
	input B,
	input Cin,
	input [3:0] select,
	output Co,
	output O
	);

wire Aout, Bout, Anot, Bnot, AndOut, OrOut, Sum;

not n1(Anot, A); 
not n2(Bnot, B); 

two_one_mux M1(Aout,A,Anot,select[3]);
two_one_mux M2(Bout,B,Bnot,select[2]);

and G1(AndOut, Aout, Bout);
or G2(OrOut, Aout, Bout);
FullAdder FA(Sum,Co,Aout,Bout,Cin);

not n3(NandOut, AndOut); 

four_one_mux M3(O, AndOut, OrOut, Sum, B, select[1:0]);

endmodule
