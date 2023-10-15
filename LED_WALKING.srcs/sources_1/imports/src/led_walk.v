`timescale 1ns / 1ps

module led_walk(
    input CLK,
    input slower, faster,
    input active,
    output [3:0] led
    );
    
integer counter = 0;  // Licznik 25-bitowy

reg [3:0] position = 0;
reg [3:0] LED_STATE;
reg [2:0] level = 0;
integer divider = 10000000;

assign led = LED_STATE;

always @(posedge CLK) begin
    case (level)
    0: divider <= 10000000;
    1: divider <= 4000000;
    2: divider <= 2000000;
    3: divider <= 1000000;
    endcase
end

always @(posedge slower or posedge faster) begin
    
    if (faster && (level<3))
    level = level + 1;
    
    else if (slower && (level>0))
    level = level - 1;     
    
    
    
end

always @(posedge CLK) begin
    if (counter >= divider) begin
        if (active == 1) begin
            position = (position + 1) % 4; // Przesunięcie pozycji diody LED
            counter = 0;
        end
    end
    else begin
        counter <= counter + 1;
    end
end

always @(posedge CLK) begin
    case (position)
        0: LED_STATE <= 4'b1000; // Pierwsza dioda świeci
        1: LED_STATE <= 4'b0100; // Druga dioda świeci
        2: LED_STATE <= 4'b0010; // Trzecia dioda świeci
        3: LED_STATE <= 4'b0001; // Czwarta dioda świeci
    endcase
end

endmodule
