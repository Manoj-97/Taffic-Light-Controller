`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:47:50 03/31/2017 
// Design Name: 
// Module Name:    main 
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
module main(
input X,
    input clk,
    input clr,
	 input reset,
    output  [1:0] hwy,
    output  [1:0] cntry
    );
	 
	wire slowclk;
	clockdiv m1(clk,reset,slowclk);
	tlc m2(X,slowclk,clr,hwy,cntry); 



endmodule
