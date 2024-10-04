`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 19:20:49
// Design Name: 
// Module Name: JK_FF_tb
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


module JK_FF_tb;
  reg J, K, CLK;
  wire Q;
  reg [1:0] counter; // 2-bit counter

  JK_FF dut(.J(J), .K(K), .CLK(CLK), .Q(Q));

  initial begin
    J = 0;            
    K = 0; 
    counter = 2'b00;  // Start counter at 00
    CLK = 0;          // Initialize clock to 0
  end
  always begin
    #5 CLK = ~CLK;    // Toggle clock every 5 time units
  end
  always begin
    #20 counter = counter + 1; // Increment counter every 20 time units
    J = counter[1];            // Assign MSB of counter to J
    K = counter[0];            // Assign LSB of counter to K
  end
  initial begin
    #100 $finish;    // End the simulation after 100 time units
  end
endmodule

