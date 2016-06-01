`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:33:36 07/21/2015 
// Design Name: 
// Module Name:    Sign_Extend 
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
module Sign_Extend(
input [15:0] in,
output reg [31:0] out
);

always@(in) begin

	 if(in[15] == 1'b1)
		out <= {16'h1111, in};	
	 else 
	 out <= {16'h0000, in};
	 
end

endmodule
