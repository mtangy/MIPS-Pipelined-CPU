`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
//  Michael Tangy                                                              // 
//  ECE 483-001                                                                //
//                                                                             //
//  7/14/2015                                                                  //
//                                                                             //
//  This file contains our intermediate Execute and memort write               //
//  register for our single cycle and pipelined CPU's                          //
/////////////////////////////////////////////////////////////////////////////////

module EX_WB(
input clk,
input rst,
input [71:0] in,
output [71:0] out
);

reg [71:0] control;

assign out = control;

always @ (posedge clk)	begin	
	if(rst == 1)   
		begin
   	  	control <= 0;
		end
	else 
	
	control <= in;
	
/*		control[31:0] <= in[31:0];       //result
		control[32] <=  in[32];         //WE 
		control[37:33] <= in[37:33];   //return Address*/
	end
	

	
endmodule
