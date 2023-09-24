`timescale 1ns / 1ps

module testbench_arcade_check;

    reg clk;
    reg rst;
    reg [3:0] button_in;
    reg [3:0] led_position;
    reg cheater = 0;
    wire [2:0] result;
    wire active;
    
    arcade_check uut (
        .clk(clk),
        .rst(rst),
        .button_in(button_in),
        .led_position(led_position),
        .cheater(cheater),
        .result(result),
        .active(active)
        );

    // Clock generator
    always begin
        #5 clk = ~clk;
         
    end
    
    initial begin
        clk = 0;
        button_in = 4'b0;
        led_position = 4'b0;
        rst = 0;
        cheater = 0;
        
        // Test case 1:
        
        #5 led_position <= 4'b1000;
        #103 button_in <= 4'b1000;
        
        
    
        $finish;
    end

endmodule
