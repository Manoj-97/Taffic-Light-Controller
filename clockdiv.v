`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:46:26 03/31/2017 
// Design Name: 
// Module Name:    clockdiv 
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
module clockdiv(
input clk,
    input reset,
    output reg slowclk
    );
	 
	 reg [25:0]count;
	always@(posedge clk)
	begin
	      if(reset)
			count<=26'b0;
			else
			count<=count+1;
			slowclk<=count[25];
	end

endmodule
