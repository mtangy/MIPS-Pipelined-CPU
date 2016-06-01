`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
//  Michael Tangy                                                              // 
//  ECE 483-001                                                                
//  7/14/2015                                                                  
//  This file contains the behavioral description of the program   
//  counter used in our pipelined CPU
/////////////////////////////////////////////////////////////////////////////////

module Program_Counter(
input		clk,
input		rst,
input    test,   
output  [15:0] out
);

reg [15:0] pc;

assign out = pc;

always@(posedge clk) begin

	 if(rst == 1)
		pc <= 4'h0;	
	 
	 if(test == 1) 
		pc <= pc + 1;

end

endmodule
