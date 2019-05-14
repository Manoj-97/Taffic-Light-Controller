`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:03:07 03/31/2017 
// Design Name: 
// Module Name:    tlc 
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
module tlc(
    input X,
    input slowclk,
    input clr,
    output reg [1:0] hwy,
    output reg [1:0] cntry
    );

parameter R=2'd0,
			 Y=2'd1,
			 G=2'd2;
			
parameter S0=3'd0,
			 S1=3'd1,
			 S2=3'd2,
			 S3=3'd3,
			 S4=3'd4;
			 
parameter Y2RD = 2'd3,
			 R2GD = 2'd2;
			 
			 
reg [2:0] state;
reg [2:0] next_state;

always@(posedge slowclk)
if(clr)
	state<=S0;
else
	state<=next_state;

always@(state)
begin	
	hwy=G;
	cntry=R;
	case(state)
	S0: ;
	S1: hwy=Y;
	S2: hwy=R;
	S3: begin
		 hwy=R;
		 cntry=G;
		 end
	S4: begin
		 hwy=R;
		 cntry=Y;
		 end
	endcase
end

always@(state or X)
begin
case(state)
S0: if(X)
		next_state=S1;
		else
		next_state=S0;
	S1: begin
		repeat(Y2RD) 
		next_state=S2;
		end
	S2: begin
		repeat(R2GD) 
		next_state=S3;
		end
	S3: if(X)
		next_state=S3;
		else
		next_state=S4;
	S4: begin 
		repeat(Y2RD) 
		next_state=S0;
		end	
		
default: next_state=S0;
endcase
end


endmodule


