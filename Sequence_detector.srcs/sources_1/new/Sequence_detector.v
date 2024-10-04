`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 20:18:39
// Design Name: 
// Module Name: Sequence_detector
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Sequence_detector(Y,X,CLK);

output  Y;
input X,CLK;
wire J0,J1,K0,K1,Q0,Q1;

 assign J0 = X;
 assign J1 = X && Q0;
 assign K0 = !(X && Q1);
 assign K1 = !X;
 assign Y = Q1 && Q0;

JK_FF JK0 (Q0,J0,K0,CLK);
JK_FF JK1 (Q1,J1,K1,CLK);

endmodule
