`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
//  Michael Tangy                                                              // 
//  ECE 483-001                                                                //
//                                                                             //
//  7/14/2015                                                                  //
//                                                                             //
//  This file contains our behavioral memory descripition                      //
//  for our pipelined CPU                                                      //
/////////////////////////////////////////////////////////////////////////////////
 module Memory(WE,MA,Address,DataIn,DataOut);
    input  WE;
	 input MA;
	 input [15:0] Address;
    input [31:0] DataIn;
    output [31:0] DataOut;
	 
    //wire [31:0] ;
    //reg [31:0] Mem [31:0];          //3 x 32 memory
	 
wire [31:0] romOut,ramOut,MuxOut;


	 
assign select_rom= (Address<=16'h001f)  ?  1'b1 : 1'b0;	 //32 words 	
assign select_ram= ((Address>=16'h0800) & (Address<=16'h083f)) ?  1'b1 : 1'b0;  //64 words (vs. hc12's 1K to 0bff)

assign DataOut = MuxOut;

two_one_mux_32b mux(MuxOut,romOut,ramOut,select_ram);

ReadOnlyMemory ROM(romOut, Address[5:0]);

Main_Memory MM(WE,MA,Address[5:0],DataIn,ramOut);

endmodule 


module ReadOnlyMemory(output reg [31:0] data_out, input [5:0] address);
always@(address)begin
	case(address) 
		
		6'h1c:  data_out=32'h0000_0810;
		
		default: #7 data_out=32'h1234abcd;
	endcase
end
endmodule



module Main_Memory(WE,MA,Address,DataIn,DataOut);
    input  WE;
	 input MA;
	 input [5:0] Address;
    input [31:0] DataIn;
    output [31:0] DataOut;
	 
    reg [31:0] DataOut;
    reg [31:0] Mem [31:0];          //3 x 32 memory

always @ (posedge WE, posedge MA)

if (WE)      
		Mem[Address] = DataIn;    //Write
else if(MA)
		 DataOut = Mem[Address];  //Read
		
endmodule
