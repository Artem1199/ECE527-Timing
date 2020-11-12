`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2020 02:31:04 AM
// Design Name: 
// Module Name: Accumulator
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


module Accumulator(
    input       [ 7:0] Acc_i,
    input              Rempty_i,
    input              Rclk,
    input              reset,
    output reg  [ 7:0] Average_o
    );
    
    reg  [ 7:0] hold [3:0];
    reg  [ 1:0] counter;
    wire [ 7:0] cla1_dat, cla2_dat;
    wire [11:0] cla3_dat;
    wire        cla1_cout, cla2_cout;
    always_ff @(posedge Rclk or posedge reset) begin
        
        if (reset) begin
            counter <= 0;
            hold[0] <= 0;
            hold[1] <= 0;
            hold[2] <= 0;
            hold[3] <= 0;
        end
        else if(!Rempty_i) begin
            counter <= counter + 1;
            hold[0] <= Acc_i;
            hold[1] <= hold[0];
            hold[2] <= hold[1];
            hold[3] <= hold[2];
        end 
    end
    
    always_ff @(posedge Rclk or posedge reset) begin
        if (reset) begin
            Average_o <= 0;
        end 
        else if (counter == 1) begin
            Average_o <= (cla3_dat >> 2);
           // counter <= 0;
        end
          
    end
        
         CLA_8 cla1     (.a(hold[0]), .b(hold[1]), .cin(1'b0), .DataOut(cla1_dat), .cout(cla1_cout));
         CLA_8 cla2     (.a(hold[2]), .b(hold[3]), .cin(1'b0), .DataOut(cla2_dat), .cout(cla2_cout));
         CLA_12 cla3    (.a({3'b000, cla1_cout, cla1_dat}), .b({3'b000, cla2_cout, cla2_dat}), .cin(1'b0), .DataOut(cla3_dat), .cout(cla3_cout));
         
         

endmodule
