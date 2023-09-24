//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Tue Sep 19 18:33:00 2023
//Host        : 15ach6 running 64-bit Ubuntu 22.04.3 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=2,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (RGB_GREENS,
    RGB_REDS,
    Reset,
    button0,
    button1,
    button2,
    button3,
    led,
    sys_clk);
  output [1:0]RGB_GREENS;
  output [1:0]RGB_REDS;
  input Reset;
  input button0;
  input button1;
  input button2;
  input button3;
  output [3:0]led;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK, ASSOCIATED_RESET Reset, CLK_DOMAIN design_1_sys_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input sys_clk;

  wire Reset_1;
  wire [2:0]arcade_check_0_result;
  wire button0_0_1;
  wire button1_0_1;
  wire button2_0_1;
  wire button3_0_1;
  wire [3:0]led_walk_0_led;
  wire [1:0]messenger_0_RGB_GREENS;
  wire [1:0]messenger_0_RGB_REDS;
  wire [3:0]mul_cheat_detect_0_button_out;
  wire mul_cheat_detect_0_cheater;
  wire sys_clk_1;

  assign RGB_GREENS[1:0] = messenger_0_RGB_GREENS;
  assign RGB_REDS[1:0] = messenger_0_RGB_REDS;
  assign Reset_1 = Reset;
  assign button0_0_1 = button0;
  assign button1_0_1 = button1;
  assign button2_0_1 = button2;
  assign button3_0_1 = button3;
  assign led[3:0] = led_walk_0_led;
  assign sys_clk_1 = sys_clk;
  design_1_arcade_check_0_0 arcade_check_0
       (.button_in(mul_cheat_detect_0_button_out),
        .cheater(mul_cheat_detect_0_cheater),
        .clk(sys_clk_1),
        .led_position(led_walk_0_led),
        .result(arcade_check_0_result),
        .rst(Reset_1));
  design_1_led_walk_0_2 led_walk_0
       (.clk_50MHz(sys_clk_1),
        .led(led_walk_0_led));
  design_1_messenger_0_0 messenger_0
       (.RGB_GREENS(messenger_0_RGB_GREENS),
        .RGB_REDS(messenger_0_RGB_REDS),
        .clk(sys_clk_1),
        .result(arcade_check_0_result));
  design_1_mul_cheat_detect_0_0 mul_cheat_detect_0
       (.button0(button0_0_1),
        .button1(button1_0_1),
        .button2(button2_0_1),
        .button3(button3_0_1),
        .button_out(mul_cheat_detect_0_button_out),
        .cheater(mul_cheat_detect_0_cheater),
        .clk(sys_clk_1));
endmodule
