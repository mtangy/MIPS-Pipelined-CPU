`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:50 06/16/2015 
// Design Name: 
// Module Name:    two_one_mux 
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
module two_one_mux(
output reg	m_out,
input	in_0, in_1, select
);

always @ (in_0, in_1, select)	// Verilog 2005 syntax

    case (select)
       1'b00:	m_out = in_0;
       1'b01:	m_out = in_1;
    endcase

endmodule
