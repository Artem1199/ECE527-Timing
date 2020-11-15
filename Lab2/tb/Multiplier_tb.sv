`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Artem Kulakevich
// 
// Create Date: 11/11/2020 11:32:34 AM
// Design Name: 
// Module Name: Multiplier_tb
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


module Multiplier_tb();
    
    reg [3:0] a;
    reg [3:0] b;
    reg clk;
    wire [7:0] DataOut;
    wire cout;
    wire noteq;
    reg [7:0] i;
    reg Wfull;
    
    Multiplier UTT (.a(a), .b(b), .Wfull_i(Wfull), .Wclk(clk), .Mul_o(DataOut));
    
    initial begin
        clk = 0;
        a = 0;
        b = 0;
        i = 0;
        Wfull = 0;
       #100 Wfull = 1;
       #25  Wfull = 0;
  //  #500 $finish;
    end
        always begin
            #1 { a, b} = { a, b } + 1;
            #1 clk = ~clk;
            i = a * b;
            #1 clk = ~clk;
        end
           
    assign noteq = ({DataOut} == i) ? 1'b0: 1'b1;
          
    
    
endmodule