`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////
//  Michael Tangy                                                              
//  ECE 483-001                                                                
//  7/14/2015                                                                  
//  This file contains the behavioral description of the Instruction fetch/
//  Instruction decode module used in our pipelined CPU
////////////////////////////////////////////////////////////////////////////
module IF_ID(

input clk,
input rst,
input [31:0] in,
output [31:0] out

);

reg [31:0] inst;

assign out = inst;
	
always @ (posedge clk)	begin	

	if(rst == 1)   
		begin
   	  inst <= 0;
		end
	else 
	   inst <= in;
	end

endmodule
