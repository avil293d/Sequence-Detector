`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 20:37:04
// Design Name: 
// Module Name: sequence_tb
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


module Sequence_detector_tb;

  reg X, CLK;
  wire Y;

  Sequence_detector dut(
    .Y(Y), 
    .X(X), 
    .CLK(CLK)
  );
  
  initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;  // Toggle clock every 5 time units
  end

  initial begin
    X = 0;
    // Apply test patterns (sequence of X values)
    #10 X = 1;  // After 10 time units, set X to 1
    #10 X = 0;  // After another 10 time units, set X to 0
    #10 X = 1;  // Apply a few toggles to check the behavior
    #10 X = 1;
    #10 X = 1;
    #10 X = 0;
    #10 X = 0;
    #10 X = 1;
    #10 X = 1;  // After 10 time units, set X to 1
    #10 X = 0;  // After another 10 time units, set X to 0
    #10 X = 1;  // Apply a few toggles to check the behavior
    #10 X = 1;
    #10 X = 1;
    #10 X = 0;
    #10 X = 0;
    #10 X = 1;
    #160 $stop;
  end

endmodule
