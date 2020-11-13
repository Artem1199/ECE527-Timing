`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2020 12:39:09 AM
// Design Name: 
// Module Name: Adder
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


module CLA(
    input [3:0] a,
    input [3:0] b,
    input       cin,
    output [3:0] DataOut,
    output cout
    );
    
    reg [3:0] g;
    reg [3:0] p;
    reg [4:0] c;
    reg [3:0] DataOut_reg;
    
    always_comb begin
             
       p[3:0] = a[3:0] ^ b[3:0];
       g[3:0] = a[3:0] & b[3:0];
                                
       c[0] = cin;                              
       c[1] = g[0] | (c[0] & p[0]); // Thanks Dr. Song
       c[2] = g[1] | (g[0] & p[1]) | (p[1] & p[0] & c[0]);
       c[3] = g[2] | (g[1] & p[2]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c[0]);
       c[4] = g[3] | (g[2] & p[3]) | (p[3] & p[2] & g[1]) | (g[0] & p[3] & p[2] & p[1]) | (p[3] & p[2] & p[1] & p[0] & c[0]);
       
       DataOut_reg[3:0] = c[3:0] ^ p[3:0];
   end

       assign cout = c[4];
       assign DataOut = DataOut_reg;
    
endmodule

module CLA_8 (
    input [7:0] a,
    input [7:0] b,
    input       cin,
    output [7:0] DataOut,
    output      cout
    
    );
    
    wire [7:0] out;
    wire [3:0] adder1;
    wire       cout1;
    
    CLA cla1(.a(a[3:0]), .b(b[3:0]), .cin(cin), .DataOut(DataOut[3:0]), .cout(cout1));
    CLA cla2(.a(a[7:4]), .b(b[7:4]), .cin(cout1), .DataOut(DataOut[7:4]), .cout(cout));
        
endmodule

module CLA_12 (
    input [11:0] a,
    input [11:0] b,
    input       cin,
    output [11:0] DataOut,
    output      cout
    
    );
    
    wire [15:0] out;
    wire [7:0] adder1, adder2;
    wire       cout1, cout2;
    
    CLA cla1(.a(a[3:0]), .b(b[3:0]), .cin(cin), .DataOut(DataOut[3:0]), .cout(cout1));
    CLA cla2(.a(a[7:4]), .b(b[7:4]), .cin(cout1), .DataOut(DataOut[7:4]), .cout(cout2));
    CLA cla3(.a(a[11:8]), .b(b[11:8]), .cin(cout2), .DataOut(DataOut[11:8]), .cout(cout));
        
endmodule

module Full_adder (
    input a,
    input b,
    input c,
    output sum,
    output cout
    );
    
    assign sum = (a ^ b ^ c);
    assign cout =  (a&b)|(b&c)|(a&c);
endmodule