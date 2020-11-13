`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2020 02:31:04 AM
// Design Name: 
// Module Name: FIFO
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


module FIFO(
    input           Wclk,
    input           Rclk,
    input           wrst_n,
    input           rrst_n,
    input   [ 7:0]  Mul_i,
    output  [ 7:0]  Acc,
    output          Rempty_o,
    output          Wfull_o
    );
    
    logic [3:0] wr_ptr, wr_ptr_rff, wr_ptr_r1ff;
    logic [3:0] rd_ptr, rd_ptr_wff, rd_ptr_w1ff;
    logic [3:0] rd_ptr_gray, wr_ptr_gray;
    logic [7:0] data [7:0];
    logic Rempty, Wfull;
	logic reset;
    
    // Increment the right pointer if we want to right, and not full
    always_ff @(posedge Wclk or negedge reset) begin
       if (!reset) begin
            wr_ptr <= 0;
       end
       //else if (!Wfull & wen) begin
       else if (!Wfull) begin
            data[wr_ptr[2:0]] <= Mul_i;
            wr_ptr <= wr_ptr + 1;  // CORRECTION

            end
        end
        
    // Sync to Rclk     GOOD
    always_ff @(posedge Rclk or negedge reset) begin
        if (!reset) begin
            wr_ptr_rff <= 0;
            wr_ptr_r1ff <= 0;
        end
        else begin
            wr_ptr_rff <= wr_ptr_gray;
            wr_ptr_r1ff <= wr_ptr_rff;
        end
    end

    // if Not empty and rd_en then updated ptr to next
    always_ff @(posedge Rclk or negedge reset) begin
        if (!reset)
            rd_ptr <= 0;
       // else if (!Rempty & ren)
       else if (!Rempty)
            rd_ptr <= rd_ptr +1;  //
           // Acc <= data[rd_ptr[2:0]]; 
        //else
        //    rd_ptr <= rd_ptr_rff;
    end


    // Sync to Wclk - GOOD
    always_ff @(posedge Wclk or negedge reset) begin
        if (!reset) begin
            rd_ptr_wff <= 0;
            rd_ptr_w1ff <= 0;
        end
        else begin
            rd_ptr_wff <= rd_ptr_gray;
            rd_ptr_w1ff <= rd_ptr_wff;
        end
    end
    
   // assign Acc_reg = data[rd_ptr[2:0]];
     assign Acc = data[rd_ptr[2:0]];
    // Convert wr_ptr to graycode
     assign wr_ptr_gray = (wr_ptr >> 1) ^ wr_ptr;
     
       // Convert rd_ptr to graycode
    assign rd_ptr_gray = (rd_ptr >> 1) ^ rd_ptr;
    
    //combine the resets GOOD
    assign reset = (wrst_n | rrst_n);
    
    // logic for full and empty Updated to test top 2 bits op, and bot 2 bits id
    assign Wfull = (wr_ptr_gray[1:0] == rd_ptr_w1ff[1:0]) &&
                   (wr_ptr_gray[3:3] != rd_ptr_w1ff[3:3]) && (wr_ptr_gray[2:2] != rd_ptr_w1ff[2:2]);
    
    assign Rempty = (wr_ptr_r1ff[3:0] == rd_ptr_gray[3:0]);
    //assign Acc = Acc_reg;
    assign Rempty_o = Rempty;
    assign Wfull_o = Wfull;
endmodule
