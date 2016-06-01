/////////////////////////////////////////////////////////////////////////////////
//  Michael Tangy                                                              // 
//  ECE 483-001                                                                //
//                                                                             //
//  7/14/2015                                                                  //
//                                                                             //
//  This file contains our testbench for simulating our single cycle and       //
//  pipelined CPU's                                                            //
/////////////////////////////////////////////////////////////////////////////////

//Stimulus for testing 

module tb;

  reg CLK,RST;  //inputs for circuit
  //reg [31:0] instruction;
  reg [15:0] out;
	
  reg test; 
  reg [7:0]  clk_count = 'd0;
// ======================================
// Counter of system clock ticks        
// ======================================

always @ ( posedge CLK )
	 clk_count <= clk_count + 1'd1;
	 
Program_Counter pc(CLK,RST,test,out);	 
	 
  initial
     begin
         RST = 1;
         CLK = 0;
      #3 CLK = 1;
      #3 CLK = 0;
      #4 RST = 0;
	   #5 test = 1; // set high to always increment 
	
      repeat (128)
      #4 CLK = ~CLK;
		
     end
 initial
    begin

    end
	initial #750 $finish; 	  
  
endmodule

