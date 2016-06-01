`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:42:32 07/14/2015 
// Design Name: 
// Module Name:    ME_WB 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ME_WB(
input clk,
input rst,
input [70:0] in,
output [70:0] out
);

reg [70:0] control;

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
