`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2020 02:31:04 AM
// Design Name: 
// Module Name: Multiplier
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


module Multiplier(
    input            reset,
    input            Wclk,
    input   [ 3:0]   a,
    input   [ 3:0]   b,
    input            Wfull_i,  //what do I even do with this value..?
    output reg [ 7:0]    Mul_o
    
    );
    

    reg [3:0] ba [3:0];
    wire [3:0] adder1;
    wire       cout1;
    wire [3:0] adder2;
    wire       cout2;
    wire [3:0] adder3;
    wire       cout3;
    wire [7:0] Mul;
    
    always_comb
        for (int i = 0; i < 4; i++) begin
            ba[i] = {(b[i] & a[3]), (b[i] & a[2]), (b[i] & a[1]), (b[i] & a[0])} ;
            
        end    
   
    CLA cla1(.a({1'b0, ba[0][3:1]}), .b(ba[1]), .cin(1'b0), .DataOut(adder1), .cout(cout1));
    CLA cla2(.a({cout1, adder1[3:1]}), .b(ba[2]), .cin(1'b0), .DataOut(adder2), .cout(cout2));
    CLA cla3(.a({cout2, adder2[3:1]}), .b(ba[3]), .cin(1'b0), .DataOut(adder3), .cout(cout3));
    
    assign  Mul = {cout3, adder3[3:0], adder2[0], adder1[0], ba[0][0]};
    
    always_ff @(posedge Wclk or posedge reset) begin
        if (reset)
            Mul_o <= 0;
        else if (!Wfull_i)
            Mul_o <= Mul;
        else
            Mul_o <= Mul_o;
    end
    
endmodule
