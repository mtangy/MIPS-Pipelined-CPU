`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
//  Michael Tangy                                                              // 
//  ECE 483-001                                                                //
//                                                                             //
//  7/14/2015                                                                  //
//                                                                             //
//  This file contains our intermediate instruction decode and execute         //
//  register for our single cycle and pipelined CPU's                          //
/////////////////////////////////////////////////////////////////////////////////

module ID_EX(

input clk,
input rst,
input [92:0] in,
output [92:0] out

);

reg [92:0] control;

assign out = control;
	
always @ (posedge clk)	begin	
	if(rst == 1)   
		begin
   	  	control <= 0;
		end
	else 
	
	   control <= in;
		
		/*control[31:0] <= in[31:0];        //A
		control[63:32] <= in[63:32];  	  //B
		control[64] <=  in[64];        	 //WE 
		control[68:65] <= in[68:65];     //ALU control  
		control[73:69] <= in[73:69];    //Destination Address
		control[74] <= in[74];         //Cin*/
		
	end



endmodule
