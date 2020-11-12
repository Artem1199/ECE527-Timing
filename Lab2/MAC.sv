`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2020 02:10:30 AM
// Design Name: 
// Module Name: MAC
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


module MAC(
    input            Reset,
    input   [ 3:0]   DataIn1,
    input   [ 3:0]   DataIn2,
    input            Wclk,
    input            Rclk,
    output  [ 7:0]   AverageOut,
    output           Wfull
    );
     

       wire          Wclk;
       wire          Rclk;  
       wire          wrst_n;
       wire          rrst_n;
       wire  [ 7:0]  Mul; 
       wire  [ 7:0]  Acc;   
       wire          Rempty;
       wire          Wfull;           
                        
    FIFO fifo(
        .Wclk       (Wclk),
        .Rclk       (Rclk),
        .wrst_n     (~Reset),
        .rrst_n     (~Reset),
        .Mul_i      (Mul),
        .Acc        (Acc),
        .Rempty_o   (Rempty),
        .Wfull_o    (Wfull)
    );
    
    Accumulator Accum1(
        .Acc_i      (Acc),
        .Rempty_i   (Rempty),
        .Rclk       (Rclk),
        .reset      (Reset),
        .Average_o  (AverageOut)
    );
    
    Multiplier Multi1(
        .a          (DataIn1),
        .b          (DataIn2),
        .Wclk       (Wclk),
        .reset      (Reset),
        .Mul_o      (Mul),
        .Wfull_i    (Wfull)
    );
    
endmodule




