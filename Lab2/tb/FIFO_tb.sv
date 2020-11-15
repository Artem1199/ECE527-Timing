`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Artem Kulakevich
// 
// Create Date: 11/07/2020 12:12:38 PM
// Design Name: 
// Module Name: FIFO_tb
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


module FIFO_tb(
        
    );
    
    reg Wclk, Rclk, wrst_n, rrst_n;
    reg [ 7:0]  Mul;
    reg [ 7:0] hold;
    reg [ 7:0] exp;

    wire[ 7:0]  Acc;
    wire        Rempty;
    wire        Wfull;
    wire        noteq;
    FIFO UUT(
                .Wclk   (Wclk), 
                .Rclk   (Rclk),
                .wrst_n (wrst_n),
                .rrst_n (rrst_n),
                .Mul_i  (Mul),
                .Acc    (Acc),
                .Rempty_o (Rempty),
                .Wfull_o  (Wfull)
                );
    initial begin 
        Wclk = 0;
        Rclk = 0;
        Mul = 0;
        wrst_n = 1;
        rrst_n = 1;
        #1 wrst_n = 0;
          rrst_n = 0;
        #1 wrst_n = 1;
           rrst_n = 1;  
        Mul = 1;

     end
     
     always begin 
        #6 Rclk <= ~Rclk;
           Mul = Mul + 1;
     end
       
     always begin
        #8 Wclk <= ~Wclk;
     end
     
     always @(posedge Wclk) begin
        hold <= Mul;
     end
     always @(posedge Rclk) begin
        if (!Rempty)
            exp <= hold;
     end
     
     assign noteq = (Acc == exp) ? 1'b0: 1'b1;
          
    
    
endmodule
