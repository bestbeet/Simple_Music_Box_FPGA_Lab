`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:15:34 11/08/2016 
// Design Name: 
// Module Name:    music 
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
module sound(
    input	clk,
	 input	onoff,
	 input [6:0] note,
	 output o
	 );
	parameter doo = (25000000/262/2);
	parameter re = (25000000/294/2);
	parameter mi = (25000000/330/2);
	parameter fa = (25000000/349/2);
	parameter sol = (25000000/392/2);
	parameter la = (25000000/440/2);
	parameter si = (25000000/494/2);
	reg s_do,s_re,s_mi,s_fa,s_sol,s_la,s_si;
	reg [31:0] cnt1,cnt2,cnt3,cnt4,cnt5,cnt6,cnt7;
	reg sp;
	assign	o = sp;

	always@(posedge clk)
	begin
	//do
	if(cnt1 == 0) cnt1 <= doo-1; else cnt1 <= cnt1-1;
	end
	always@(posedge clk) if(cnt1 == 0) s_do <= ~s_do;
	
	always@(posedge clk)
	begin
	//re
	if(cnt2 == 0) cnt2 <= re-1; else cnt2 <= cnt2-1;
	end
	always@(posedge clk) if(cnt2 == 0) s_re <= ~s_re;
	
	always@(posedge clk)
	begin
	//re
	if(cnt3 == 0) cnt3 <= mi-1; else cnt3 <= cnt3-1;
	end
	always@(posedge clk) if(cnt3 == 0) s_mi <= ~s_mi;
	
	always@(posedge clk)
	begin
	//re
	if(cnt4 == 0) cnt4 <= fa-1; else cnt4 <= cnt4-1;
	end
	always@(posedge clk) if(cnt4 == 0) s_fa <= ~s_fa;
	
	always@(posedge clk)
	begin
	//re
	if(cnt5 == 0) cnt5 <= sol-1; else cnt5 <= cnt5-1;
	end
	always@(posedge clk) if(cnt5 == 0) s_sol <= ~s_sol;
	
	always@(posedge clk)
	begin
	//re
	if(cnt6 == 0) cnt6 <= la-1; else cnt6 <= cnt6-1;
	end
	always@(posedge clk) if(cnt6 == 0) s_la <= ~s_la;
	
	always@(posedge clk)
	begin
	//re
	if(cnt7 == 0) cnt7 <= si-1; else cnt7 <= cnt7-1;
	end
	always@(posedge clk) if(cnt7 == 0) s_si <= ~s_si;
	
	reg[6:0] state = 0;
	reg sclk;
	always@(state)
		if(onoff == 0) sp<=0;
		else
			begin
				case (state)
				0 : sp <= 0;
				1 : sp<=s_sol; 
				2 : sp<=s_sol; 
				3 : sp<=s_la; 
				4 : sp<=s_sol;
				5 : sp<=s_do; 
				6 : sp<=s_; 
				7 : sp<=s_sol; 
				8 : sp<=s_sol;
				9 : sp<=s_la; 
				10 : sp<=s_sol; 
				11 : sp<=s_re; 
				12 : sp<=s_do;
				13 : sp<=s_sol; 
				14 : sp<=s_sol; 
				15 : sp<=s_sol; 
				16 : sp<=s_mi; 
				17 : sp<=s_do; 
				18 : sp<=s_;
				19 : sp<=s_la; 
				20 : sp<=s_fa; 
				21 : sp<=s_fa; 
				22 : sp<=s_mi;
				23 : sp<=s_do; 
				24 : sp<=s_mi; 
				25 : sp<=s_re; 
				26 : sp<=s_sol;
				27 : sp<=s_sol; 
				28 : sp<=s_la; 
				29 : sp<=s_sol; 
				30 : sp<=s_do;
				31 : sp<=s_; 
				32 : sp<=s_sol; 
				33 : sp<=s_sol; 
				34 : sp<=s_la;
				35 : sp<=s_sol; 
				36 : sp<=s_re;
				37 : sp<=s_do; 
				38 : sp<=s_sol; 
				39 : sp<=s_sol;  
				40 : sp<=s_sol; 
				41 : sp<=s_mi; 
				42 : sp<=s_do; 
				43 : sp<=s_; 
				44 : sp<=s_la; 
				45 : sp<=s_fa; 
				46 : sp<=s_fa; 
				47 : sp<=s_mi; 
				48 : sp<=s_do; 
				49 : sp<=s_re; 
				50 : sp<=s_do;
				 
				51 : sp<=s_do; 
				52 : sp<=s_do; 
				53 : sp<=s_do; 
				54 : sp<=s_do; 
				55 : sp<=s_do; 
				56 : sp<=s_do; 
				57 : sp<=s_do; 
				58 : sp<=s_do; 
				59 : sp<=s_do; 
				60 : sp<=s_do; 
				61 : sp<=s_do; 
				62 : sp<=s_do; 
				63 : sp<=s_do; 
				64 : sp<=s_do; 
				65 : sp<=s_do; 
				66 : sp<=s_do; 
				67 : sp<=s_do; 
				68 : sp<=s_do; 
				69 : sp<=s_do; 
				70 : sp<=s_do; 
				71 : sp<=s_do; 
				72 : sp<=s_do; 
				73 : sp<=s_do; 
				74 : sp<=s_do; 
				75 : sp<=s_do; 
				76 : sp<=s_do; 
				77 : sp<=s_do; 
				78 : sp<=s_do; 
				79 : sp<=s_do; 
				80 : sp<=s_do; 
				81 : sp<=s_do; 
				82 : sp<=s_do; 
				83 : sp<=s_do; 
				84 : sp<=s_do; 
				85 : sp<=s_do;
				86 : sp<=s_do;  
				87 : sp<=s_do; 
				88 : sp<=s_do; 
				89 : sp<=s_do; 
				90 : sp<=s_do; 
				91 : sp<=s_do; 
				92 : sp<=s_do; 
				93 : sp<=s_do; 
				94 : sp<=s_do; 
				95 : sp<=s_do; 
				96 : sp<=s_do; 
				97 : sp<=s_do; 
				98 : sp<=s_do; 
				99 : sp<=s_do;  
			endcase
		end
	reg [31:0] cnt;
	always@(posedge clk)
	if(onoff ==0) state <=0; else
	begin
		if(cnt == 10000000) begin state <= state+1; cnt <=0; end
		else cnt <= cnt+1;
	end
endmodule
