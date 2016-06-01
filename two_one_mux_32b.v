`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:49:40 07/21/2015 
// Design Name: 
// Module Name:    two_one_mux_32b 
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
module two_one_mux_32b(
output reg [31:0]	m_out,
input [31:0] in_0, 
input [31:0] in_1, 
input select
);

always @ (in_0, in_1, select)	// Verilog 2005 syntax

    case (select)
       1'b00:	m_out = in_0;
       1'b01:	m_out = in_1;
    endcase

endmodule
