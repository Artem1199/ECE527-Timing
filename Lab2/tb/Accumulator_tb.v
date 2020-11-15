`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Artem Kulakevich
// 
// Create Date: 11/11/2020 01:49:21 PM
// Design Name: 
// Module Name: Accumulator_tb
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


module Accumulator_tb();

   reg [7:0] Acc_i;
   reg       Rempty_i;
   reg       Rclk;
   reg       reset;
   wire [7:0]  Average_o;
   
   Accumulator UUT (Acc_i, Rempty_i, Rclk, reset, Average_o);
    
  initial begin
  
    reset = 1;
    #1 reset = 0;
    Acc_i = 0;
    Rempty_i = 0;
    Rclk = 0;
    #45 Rempty_i = 1;
    #45 Rempty_i = 0;
    #100 $finish;
    
  
  end
  
  always begin
            #1 Acc_i = Acc_i + 21;
            #1 Rclk = ~Rclk;
            // i = ;
            #1 Rclk = ~Rclk;
  end

    



endmodule
