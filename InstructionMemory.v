`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////
//  Michael Tangy                                                              
//  ECE 483-001                                                                
//  7/14/2015                                                                  
//  This file contains the behavioral description of the Instruction memory 
//  module used in our pipelined CPU
////////////////////////////////////////////////////////////////////////////


module InstructionMemory(output [31:0] data_out, input [15:0] address);

reg [31:0] tdata_out;

always@(address)begin
	case(address) 

	//Program 1
	      /*5'h00:  tdata_out=32'b000000_00010_00011_00001_00000_000010;
		5'h01:  tdata_out=32'b000000_00101_00110_00100_00000_010110;
		5'h02:  tdata_out=32'b000000_01000_01001_00111_00000_000000;	
		5'h03:  tdata_out=32'b000000_01011_01100_01010_00000_000001;	
		5'h04:  tdata_out=32'b000000_01110_00001_01101_00000_001100;
       	*/

		//Program 2
                5'h00:    tdata_out=32'b100011_00111_00001_00000_00000_010000;  //lw R1, 10(R7)
		5'h01:    tdata_out=32'b100011_00101_00010_00000_11111110110;   //lw R2, 7F6(R5)
		5'h02:    tdata_out=32'b000000_01000_01001_00100_00000_000000;	 //AND R4, R8, R9	
		5'h03:    tdata_out=32'b000000_10101_01100_00111_00000_000001;  //OR R7, R21, R12
		5'h04:    tdata_out=32'b101011_10000_00011_00000_11111101011;   //sw 7EB(R16), R3
		5'h05:    tdata_out=32'b100011_00001_01010_11111_11111110000;   //lw R3, -16(R1)    (-16 is in base 10) 
		
		//5'h02: #6 tdata_out=32'b000000_01000_01001_00111_00000_000000;	
		default: tdata_out=32'h1234abcd;
		
	endcase
end

assign #6 data_out = tdata_out;

endmodule
