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


  reg [7:0]  clk_count = 'd0;
// ======================================
// Counter of system clock ticks        
// ======================================
CPU cpu(CLK,RST);
always @ ( posedge CLK )
	 clk_count <= clk_count + 1'd1;
	 
  initial
     begin
         RST = 1;
         CLK = 0;
      #3 CLK = 1;
      #3 CLK = 0;
      #4 RST = 0;
      repeat (128)
      #6 CLK = ~CLK;
     end
   initial #750 $finish; 	  
  
endmodule
