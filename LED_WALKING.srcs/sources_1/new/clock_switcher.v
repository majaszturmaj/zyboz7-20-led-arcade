`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2023 06:43:15 PM
// Design Name: 
// Module Name: clock_switcher
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


module clock_switcher(
    input slower, faster,
    input clk_10MHz,
    input clk_25MHz,
    input clk_50MHz,
    input clk_100MHz,
    output clk
    );
    
    reg [3:0] level = 4'b1000;
    reg current_clock;
    
    assign clk = current_clock;
    
    always @(clk_100MHz) begin
        if (slower) level <= level << 1;
        else if (faster) level <= level >> 1;
        
        case (level)
            4'b1000: current_clock <= clk_10MHz;
            4'b0100: current_clock <= clk_25MHz;
            4'b0010: current_clock <= clk_50MHz;
            4'b0001: current_clock <= clk_100MHz;
        endcase
    
    end
    
endmodule
