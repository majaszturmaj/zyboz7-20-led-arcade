module mul_cheat_detect (
    input clk, rst,
    input button0, button1, button2, button3,
    output reg [3:0] button_out = 0,
    output reg cheater = 0
);


reg [3:0] BUTTONS;

assign button_out_wire = button_out;

//always @(posedge clk)
//if (rst) cheater = 0;

always @(posedge clk)
if (rst) cheater = 0; else
begin
    BUTTONS [3:3] <= button3;
    BUTTONS [2:2] <= button2;
    BUTTONS [1:1] <= button1;
    BUTTONS [0:0] <= button0;
    //BUTTONS = {button3, button2, button1, button0}; 
    if (BUTTONS != 4'b0000) begin                   // pragnę aby to wyglądało inaczej ale tylko tak działało...
        if (BUTTONS != 4'b1000) begin
            if (BUTTONS != 4'b0100) begin
                if (BUTTONS != 4'b0010) begin
                    if (BUTTONS != 4'b0001) begin
                        cheater = 1;
                        end end end end end
                    
    begin
        case(BUTTONS)
         4'b0001: button_out <= 4'b0001;
         4'b0010: button_out <= 4'b0010;
         4'b0100: button_out <= 4'b0100;
         4'b1000: button_out <= 4'b1000;
         default: button_out <= 4'b0000;
        endcase
    end
end

endmodule