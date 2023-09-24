`timescale 1ns / 1ps


module testbench;

  reg clk;
  reg button0, button1, button2, button3;
  wire [3:0] button_out;
  wire cheater;

  // Instantiate the module to be tested
  mul_cheat_detect uut (
    .clk(clk),
    .button0(button0),
    .button1(button1),
    .button2(button2),
    .button3(button3),
    .button_out(button_out),
    .cheater(cheater)
  );

  // Clock generation
  always begin
    #5 clk = ~clk;
  end

  // Stimulus generation
  initial begin
    clk = 0;
    button0 = 0;
    button1 = 0;
    button2 = 0;
    button3 = 0;

    // Test case 1:
    #10 button0 <= 1;
    #10 button1 <= 0;
    #10 button2 <= 0;
    #10 button3 <= 0;

    // Test case 2:
    #10 button0 <= 0;
    #10 button1 <= 1;
    #10 button2 <= 0;
    #10 button3 <= 0;

    // Test case 3:
    #10 button0 <= 1;
    #10 button1 <= 0;
    #10 button2 <= 0;
    #10 button3 <= 1;
    
    #10 button0 <= 0;
    #10 button1 <= 0;
    #10 button2 <= 1;
    #10 button3 <= 0;

    // Stop simulation
    $finish;
  end

endmodule
