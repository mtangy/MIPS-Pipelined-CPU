`timescale 1ns / 1ps
//*******************************************************************************
//  Michael Tangy                                                              // 
//  ECE 483-001                                                                //
//                                                                             //
//  7/6/2015                                                                   //
//                                                                             //
//  This file contains the control unit for the new pipelined CPU              //
//   supplying the control signals for all our components                      //
//                                                                             //
//*******************************************************************************


module Control_Unit(
input [31:0] inst,
output we_st,
output we_r,
output ma,
output [4:0] destAddr,
output [3:0] aluControl,
output [15:0] addr,
output Cin
);

assign we_st = ((inst[31:26] == 6'b101011) ? 1'b1 : 1'b0); // write enable store

assign we_r = ((inst[31:26] == 6'b000000) || (inst[31:26] == 6'b100011)  ? 1'b1 : 1'b0); // write enable for register bank 

assign ma = ((inst[31:26] == 6'b100011) ? 1'b1 : 1'b0);  // memory access for load

assign destAddr = ((inst[31:26] == 6'b000000) ? inst[15:11] : inst[20:16]);  //;

assign addr = inst[15:0];

assign aluControl = ((inst[31:26] == 6'b101011)|| (inst[31:26] == 6'b100011) ? 4'b0010 : inst[3:0]);//inst[3:0];

assign Cin = ((inst[31:26] == 6'b000000) ? inst[4]: 1'b0); //;

endmodule
