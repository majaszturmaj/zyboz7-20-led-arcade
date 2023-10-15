`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2023 03:01:24 PM
// Design Name: 
// Module Name: tb_messenger
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


module tb_messenger;

// Deklaracje sygnałów
  reg clk;
  reg RST;
  reg [2:0] result;
  wire [7:0] LCD_DATA;
  wire LCD_WR_EN;
  wire [1:0] RGB_GREENS;
  wire [1:0] RGB_REDS;

  // Instancja modułu messenger
  messenger uut (
    .clk(clk),
    .RST(RST),
    .result(result),
    .LCD_DATA(LCD_DATA),
    .LCD_WR_EN(LCD_WR_EN),
    .RGB_GREENS(RGB_GREENS),
    .RGB_REDS(RGB_REDS)
  );

  // Generacja zegara
  always begin
    #5 clk = ~clk; // Przykład prostego zegara o okresie 10 ns (50% duty cycle)
  end

  // Inicjalizacja sygnałów wejściowych
  initial begin
    clk = 0;
    RST = 0;
    result = 3'b000;
    // Dodaj inne inicjalizacje według potrzeb
  end

  // Wyłączenie resetu po pewnym czasie
  initial begin
    #20 RST = 1;
  end

  // Generacja testowych wejść
  initial begin
    //#30 result = 3'b001; // Przykład zmiany wartości wejścia result
    //#300 result = 3'b010; // Kolejna zmiana wartości wejścia result
    // Dodaj inne zmiany wartości wejść według potrzeb
    //#100 $finish; // Zakończenie symulacji po pewnym czasie
  end

  // Wyświetlenie informacji w trakcie symulacji
  initial begin
    $monitor("Time=%0t RST=%b result=%b LCD_DATA=%b LCD_WR_EN=%b RGB_GREENS=%b RGB_REDS=%b",
             $time, RST, result, LCD_DATA, LCD_WR_EN, RGB_GREENS, RGB_REDS);
  end


endmodule
