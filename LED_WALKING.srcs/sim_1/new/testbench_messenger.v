`timescale 1ns / 1ps


module testbench_messenger;

reg clk;
reg [2:0] result;
wire LCD;
wire [1:0] RGB_GREENS;
wire [1:0] RGB_REDS;

messenger uut (
    .clk(clk),
    .result(result),
    .LCD(LCD),
    .RGB_GREENS(RGB_GREENS),
    .RGB_REDS(RGB_REDS)
    );
    
always begin
    #5 clk = ~clk;
end

initial begin
    clk = 0;
    result = 0;
    
    // 1 test case
    #1000 result = 2;
    
    $finish;
end


endmodule
