`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:04:45 03/31/2017
// Design Name:   tlc
// Module Name:   E:/FPGA/TL/Traf/test.v
// Project Name:  Traf
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tlc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_v;

	// Inputs
	reg X;
	reg clk;
	reg clr;
	reg reset;

	// Outputs
	wire [1:0] hwy;
	wire [1:0] cntry;
	wire slowclk;

	// Instantiate the Unit Under Test (UUT)
	tlc uut (
		.X(X),  
		.clr(clr), 
		.hwy(hwy), 
		.slowclk(slowclk),
		.cntry(cntry)
	);

	initial begin
		// Initialize Inputs
		X = 0;
		clk = 0;
		clr = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		clr=0;
		
		
		
        
		// Add stimulus here

	end
	
	always #5 clk=~clk;
			always #20 X=~X;

      
endmodule
