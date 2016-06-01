`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:17:58 11/18/2014 
// Design Name: 
// Module Name:    four_one_mux 
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
module four_one_mux(
output reg	m_out,
input 	in_0, in_1, in_2, in_3,
input [1:0]	select
);

always @ (in_0, in_1, in_2, in_3, select)	// Verilog 2005 syntax
    case (select)
       2'b00:	m_out = in_0;
       2'b01:	m_out = in_1;
       2'b10:	m_out = in_2;
       2'b11:	m_out = in_3;
    endcase

endmodule
