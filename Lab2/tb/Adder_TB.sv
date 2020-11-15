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


module Adder_TB();
    
    reg [11:0] a;
    reg [11:0] b;
    reg       cin;
    wire [11:0] DataOut;
    wire cout;
    wire noteq;
    reg [12:0] i;
    
    CLA_12 UTT (a, b, cin, DataOut, cout);
    
    initial begin
        a = 0;
        b = 0;
        cin = 0;
        i = 0;
        
  //  #500 $finish;
    end
        always begin
            #1 { cin, a, b} = { cin, a, b } + 1;
             i = cin + a + b;
            
        end
           
    assign noteq = ({cout, DataOut} == i) ? 1'b0: 1'b1;
          
    
    
endmodule
