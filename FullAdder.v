`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:15:18 11/18/2014 
// Design Name: 
// Module Name:    FullAdder 
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
module FullAdder(
   output S,
	output Co,
	input X,
	input Y,
	input C   
 );

assign S = X^Y^C;
assign Co = ((X&Y)| (X^Y)&C);

endmodule
