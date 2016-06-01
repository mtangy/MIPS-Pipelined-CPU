`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
//  Michael Tangy                                                              // 
//  ECE 483-001                                                                //
//                                                                             //
//  7/14/2015                                                                  //
//                                                                             //
//  This file contains our register bank used our single cycle and pipelined   //
//  CPU's                                                                      //
//                                                                             // 
/////////////////////////////////////////////////////////////////////////////////

module Register_Bank(

	input [4:0] readA,
	input [4:0] readB,
	input [4:0] write,
	input [31:0] writeData,
	output [31:0] A, 
	output [31:0] B,
	input regWrite,
	input clk,
	input rst

);

reg [31:0] regBank [31:0];
integer i;

assign A = regBank[readA];
assign B = regBank[readB];

always @ (posedge clk)	begin
	
	if(rst == 1)   
		for (i = 0; i <= 31; i=i+1) begin
   	  	regBank[i] <= i+5;
    	end
	else if(regWrite) 
		regBank[write] <= writeData;
	end
	
endmodule
