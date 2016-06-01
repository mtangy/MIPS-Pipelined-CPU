`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
//  Michael Tangy                                                              // 
//  ECE 483-001                                                                //
//                                                                             //
//  7/14/2015                                                                  //
//                                                                             //
//  This file contains our top level implementation for our five stage          //
//  pipelined CPU                                                              //
//                                                                             // 
/////////////////////////////////////////////////////////////////////////////////

module CPU(
input clk,
input rst 
);

wire Cout,we_sr, we_r,Cin, ma;
wire [3:0] aluControl;
wire [4:0] destAddr;
wire [31:0] aluOut, aOut, bOut, iOut,imOut, mOut,muxOut,sOut,muxOut2;
wire [70:0] meOut;
wire [92:0] idOut;
wire [71:0] wbOut;
wire [15:0] pcOut, addr;

Program_Counter pc(clk, rst, pcOut);

InstructionMemory IM(imOut, pcOut);

IF_ID If_Id(clk, rst, imOut, iOut);

Control_Unit CU(iOut, we_sr, we_r, ma, destAddr, aluControl,addr, Cin);

//                                             WriteAddr      WriteData                 we
Register_Bank RegBank(iOut[25:21], iOut[20:16], meOut[36:32], muxOut2, aOut, bOut, meOut[37],clk, rst);

ID_EX ID(clk,rst,{addr, we_sr, ma, Cin,destAddr,aluControl, we_r, bOut, aOut},idOut);

Sign_Extend SE(idOut[92:77],sOut);

two_one_mux_32b mux2(muxOut, idOut[63:32], sOut,(idOut[76] || idOut[75]));

ALU_32b ALU(idOut[31:0],muxOut,aluOut, idOut[68:65], idOut[74],Cout);

                                     //addr         destaddr      we_r 
EX_WB EX_MEM(clk, rst,{idOut[63:32],idOut[76:75], idOut[73:69], idOut[64], aluOut},wbOut);

                                //dataIn
Memory RAM(wbOut[39],wbOut[38],wbOut[15:0],wbOut[71:40],mOut);
   		                             
											   //destaddr
ME_WB me_wb(clk,rst,{wbOut[38],mOut,wbOut[32],wbOut[37:33],wbOut[31:0]}, meOut);

two_one_mux_32b mux3(muxOut2, meOut[31:0] ,meOut[69:38], meOut[70]);




endmodule
