module arcade_check(
    input clk,
    input rst,
    input [3:0] button_in,
    input [3:0] led_position,
    input cheater,
    output [2:0] result,
    output reg leds_active = 1
);

reg [3:0] LEDS;
reg [3:0] BUTTONS = 0;
reg [2:0] STATE = 0;

assign result = STATE;

always @(posedge clk)
if(rst) STATE <= 0;
else if (cheater) STATE <= 3; else
    case (STATE)
        0:  begin // trwa gra
                leds_active <= 1;
                LEDS <= led_position;
                BUTTONS <= button_in;
                if (BUTTONS != 0) // jeśli grcz wcisnął któryś przycisk to...
                    if (BUTTONS & LEDS) STATE <= 1; // Zwycięstwo jeśli taki sam jak pozycja led
                    else STATE <= 2;                // Przegrana w innym wypadku
            end
        1:  begin // zwyciestwo
                leds_active <= 0;
                LEDS <= 0;
                BUTTONS <= 0;
            end
        2:  begin // przegrana
                leds_active <= 0;
                LEDS <= 0;
                BUTTONS <= 0;
        
            end
        3:  begin // cheater
                leds_active <= 0;
                LEDS <= 0;
                BUTTONS <= 0;
        
            end
    endcase
endmodule