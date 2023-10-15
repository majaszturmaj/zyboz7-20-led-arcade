//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Tue Sep 26 11:43:41 2023
//Host        : 15ach6 running 64-bit Ubuntu 22.04.3 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=12,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_ps7_cnt=3,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    LCD,
    RGB_GREENS,
    RGB_REDS,
    Reset,
    button0,
    button1,
    button2,
    button3,
    faster,
    led,
    slower,
    sys_clock);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LCD DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LCD, LAYERED_METADATA undef" *) output LCD;
  output [1:0]RGB_GREENS;
  output [1:0]RGB_REDS;
  input Reset;
  input button0;
  input button1;
  input button2;
  input button3;
  input faster;
  output [3:0]led;
  input slower;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;

  wire Reset_1;
  wire SERIAL_CLOCK_0_CLK_TX;
  wire SERIAL_TX_FIFO_0_TX;
  wire arcade_check_0_leds_active;
  wire [2:0]arcade_check_0_result;
  wire button0_0_1;
  wire button1_0_1;
  wire button2_0_1;
  wire button3_0_1;
  wire clk_wiz_0_clk_out_10MHz;
  wire [3:0]debouncer_0_BUTTONS;
  wire faster_1;
  wire [3:0]led_walk_0_led;
  wire [7:0]messenger_0_LCD_DATA;
  wire messenger_0_LCD_WR_EN;
  wire [1:0]messenger_0_RGB_GREENS;
  wire [1:0]messenger_0_RGB_REDS;
  wire [3:0]mul_cheat_detect_0_button_out;
  wire mul_cheat_detect_0_cheater;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire slower_1;
  wire sys_clock_1;
  wire [1:0]xlconcat_0_dout;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;

  assign LCD = SERIAL_TX_FIFO_0_TX;
  assign RGB_GREENS[1:0] = messenger_0_RGB_GREENS;
  assign RGB_REDS[1:0] = messenger_0_RGB_REDS;
  assign Reset_1 = Reset;
  assign button0_0_1 = button0;
  assign button1_0_1 = button1;
  assign button2_0_1 = button2;
  assign button3_0_1 = button3;
  assign faster_1 = faster;
  assign led[3:0] = led_walk_0_led;
  assign slower_1 = slower;
  assign sys_clock_1 = sys_clock;
  design_1_SERIAL_CLOCK_0_0 SERIAL_CLOCK_0
       (.CLK(processing_system7_0_FCLK_CLK0),
        .CLK_TX(SERIAL_CLOCK_0_CLK_TX));
  design_1_SERIAL_TX_FIFO_0_0 SERIAL_TX_FIFO_0
       (.CLK_TX(SERIAL_CLOCK_0_CLK_TX),
        .CLK_WR(clk_wiz_0_clk_out_10MHz),
        .DATA(messenger_0_LCD_DATA),
        .RST(Reset_1),
        .TX(SERIAL_TX_FIFO_0_TX),
        .WR_EN(messenger_0_LCD_WR_EN));
  design_1_arcade_check_0_0 arcade_check_0
       (.button_in(mul_cheat_detect_0_button_out),
        .cheater(mul_cheat_detect_0_cheater),
        .clk(clk_wiz_0_clk_out_10MHz),
        .led_position(led_walk_0_led),
        .leds_active(arcade_check_0_leds_active),
        .result(arcade_check_0_result),
        .rst(Reset_1));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out_10MHz(clk_wiz_0_clk_out_10MHz));
  design_1_debouncer_0_0 debouncer_0
       (.BUTTONS(debouncer_0_BUTTONS),
        .PB({1'b0,1'b0,xlconcat_0_dout}),
        .clk(clk_wiz_0_clk_out_10MHz));
  design_1_led_walk_0_2 led_walk_0
       (.CLK(clk_wiz_0_clk_out_10MHz),
        .active(arcade_check_0_leds_active),
        .faster(xlslice_0_Dout),
        .led(led_walk_0_led),
        .slower(xlslice_1_Dout));
  design_1_messenger_0_0 messenger_0
       (.LCD_DATA(messenger_0_LCD_DATA),
        .LCD_WR_EN(messenger_0_LCD_WR_EN),
        .RGB_GREENS(messenger_0_RGB_GREENS),
        .RGB_REDS(messenger_0_RGB_REDS),
        .RST(Reset_1),
        .clk(clk_wiz_0_clk_out_10MHz),
        .result(arcade_check_0_result));
  design_1_mul_cheat_detect_0_0 mul_cheat_detect_0
       (.button0(button0_0_1),
        .button1(button1_0_1),
        .button2(button2_0_1),
        .button3(button3_0_1),
        .button_out(mul_cheat_detect_0_button_out),
        .cheater(mul_cheat_detect_0_cheater),
        .clk(clk_wiz_0_clk_out_10MHz),
        .rst(Reset_1));
  design_1_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARREADY(1'b0),
        .M_AXI_GP0_AWREADY(1'b0),
        .M_AXI_GP0_BID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_BRESP({1'b0,1'b0}),
        .M_AXI_GP0_BVALID(1'b0),
        .M_AXI_GP0_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_RID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_RLAST(1'b0),
        .M_AXI_GP0_RRESP({1'b0,1'b0}),
        .M_AXI_GP0_RVALID(1'b0),
        .M_AXI_GP0_WREADY(1'b0),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .USB0_VBUS_PWRFAULT(1'b0));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(slower_1),
        .In1(faster_1),
        .dout(xlconcat_0_dout));
  design_1_xlslice_0_1 xlslice_0
       (.Din(debouncer_0_BUTTONS),
        .Dout(xlslice_0_Dout));
  design_1_xlslice_1_0 xlslice_1
       (.Din(debouncer_0_BUTTONS),
        .Dout(xlslice_1_Dout));
endmodule
