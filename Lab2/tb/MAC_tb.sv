`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Artem Kulakevich
// 
// Create Date: 11/11/2020 06:52:54 PM
// Design Name: 
// Module Name: MAC_tb
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


module MAC_tb();


    reg             Reset;    
    reg    [ 3:0]   DataIn1;  
    reg    [ 3:0]   DataIn2;  
    reg             Wclk;     
    reg             Rclk;     
    wire   [ 7:0]   AverageOut;
    wire            Wfull;
    
    integer i[3:0];
    integer ctr;    
    integer result;
    
    MAC mac1 (Reset, DataIn1, DataIn2, Wclk, Rclk, AverageOut, Wfull);

    initial begin
        Reset = 0;
        ctr = -1;
        #1 Reset = 1;
        #1 Reset = 0;     
        DataIn1 = 0;   
        DataIn2 = 0;   
        Wclk = 0;      
        Rclk = 0;

        #4000 $finish;
    end

    always begin 
                #6 Rclk <= ~Rclk;
                {DataIn1, DataIn2} = {DataIn1, DataIn2} + 1;
               end
               
     always
        #8 Wclk <= ~Wclk;
        
     always @(posedge Wclk) begin
      if (!Wfull) begin
        i[0] <= DataIn1 * DataIn2;
        i[1] <= i[0];
        i[2] <= i[1];
        i[3] <= i[2];
        ctr = ctr + 1;
        end
        if (ctr > 3) begin
            result <= (i[3] + i[2] + i[1] + i[0])/4;
            ctr = 0;
         end
     end
     
//     always @(posedge Rclk) begin
//        if (ctr > 3) begin
//            result <= (i[3] + i[2] + i[1] + i[0])/4;
//            ctr = 0;
//            end
//     end
        
        assign noteq = (result == AverageOut) ? 1'b0: 1'b1;
        
        initial begin
            $monitor ("%d,", AverageOut);
        end
        
endmodule
