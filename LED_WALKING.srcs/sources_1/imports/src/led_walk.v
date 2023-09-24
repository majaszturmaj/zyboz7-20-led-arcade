`timescale 1ns / 1ps

module led_walk(
    input clk,
    input active,
    output [3:0] led
    );
    
integer counter = 0;  // Licznik 25-bitowy

reg [3:0] position = 0;
reg [3:0] LED_STATE;

assign led = LED_STATE;

always @(posedge clk) begin
    if (counter >= 10000000) begin
        if (active == 1) begin
            position = (position + 1) % 4; // Przesunięcie pozycji diody LED
            counter = 0;
        end
    end
    else begin
        counter <= counter + 1;
    end
end

always @(posedge clk) begin
    case (position)
        0: LED_STATE <= 4'b1000; // Pierwsza dioda świeci
        1: LED_STATE <= 4'b0100; // Druga dioda świeci
        2: LED_STATE <= 4'b0010; // Trzecia dioda świeci
        3: LED_STATE <= 4'b0001; // Czwarta dioda świeci
    endcase
end

endmodule
