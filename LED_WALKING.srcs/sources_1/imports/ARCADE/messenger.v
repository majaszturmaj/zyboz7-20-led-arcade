module messenger (
    input clk, RST,
    input [2:0] result,
    output reg [7:0] LCD_DATA,
    output reg LCD_WR_EN,
    output reg [1:0] RGB_GREENS = 0,
    output reg [1:0] RGB_REDS = 0
    );

//reg [2:0] message_number = 0;
//reg [4:0] disp_addr;
//reg [2:0] s2;



always @(posedge clk)
 case (result)
  0: begin // trwa gra
    RGB_GREENS <= 0;
    RGB_REDS <= 0;
    LCD_WR_EN = 1;
    LCD_DATA = 8'h1B;
    LCD_DATA = 8'h5B;
    LCD_DATA = 8'h6A;
    LCD_DATA = 8'h48;  // ASCII 'H'
    LCD_DATA = 8'h65;  // ASCII 'e'
    LCD_DATA = 8'h6C;  // ASCII 'l'
    LCD_DATA = 8'h6C;  // ASCII 'l'
    LCD_DATA = 8'h0;  
  end
  1: begin // udało się złapać światło
    RGB_REDS <= 0;
    RGB_GREENS <= 2'b10;
    LCD_WR_EN = 1;
    LCD_DATA = 8'h1B;
    LCD_DATA = 8'h5B;
    LCD_DATA = 8'h6A;
    LCD_DATA = 8'h48;  // ASCII 'H'
    LCD_DATA = 8'h65;  // ASCII 'e'
    LCD_DATA = 8'h6C;  // ASCII 'l'
    LCD_DATA = 8'h0;  
  end
  2: begin // nie udało się złapać światła
    RGB_REDS <= 2'b10;
    RGB_GREENS <= 0;
    LCD_WR_EN = 1;
    LCD_DATA = 8'h1B;
    LCD_DATA = 8'h5B;
    LCD_DATA = 8'h6A;
    LCD_DATA = 8'h48;  // ASCII 'H'
    LCD_DATA = 8'h6C;  // ASCII 'l'
    LCD_DATA = 8'h6C;  // ASCII 'l'
    LCD_DATA = 8'h0;  
  end
  3: begin // cheater złapany na goracym uczynku!!!
    RGB_REDS <= 2'b11;
    RGB_GREENS <= 0;
    
    LCD_WR_EN = 1;
    LCD_DATA = 8'h1B;
    LCD_DATA = 8'h5B;
    LCD_DATA = 8'h6A;
    LCD_DATA = 8'h48;  // ASCII 'H'
    LCD_DATA = 8'h6C;  // ASCII 'l'
    LCD_DATA = 8'h0;  
  end
 endcase

//function [7:0] STR1 (input [4:0] ADDR); //(2)
// case (ADDR) 
//  0:STR1=8'h1B; 1:STR1=8'h5B; 2:STR1=8'h6A;
//  3:STR1=32; 4:STR1=90; 5:STR1=72; 6:STR1=10;
//  7:STR1=13; 8:STR1=0; default: STR1=8'hxx;
// endcase
//endfunction

//function [7:0] STR2 (input [3:0] ADDR);
// case (ADDR) //Kod czyszczenia ekranu i ustawienia kursora w (1,1)
//  0:STR2=8'h1B; 1:STR2=8'h5B; 2:STR2=8'h6A; 3:STR2=8'h4D;
//  4:STR2=8'h6A; 5:STR2=8'h61; 6:STR2=8'h6A; 7:STR2=0; 
//  default: STR2=8'hxx;
// endcase
//endfunction

//always @(*) //(8)
// (* full_case *)
// case (message_number)
//  0: LCD_DATA=STR1(disp_addr);
//  1: LCD_DATA=STR2(disp_addr[3:0]);
// endcase 

//always @(posedge clk) //(9)
//if(~RST) s2<=0; else
// case (s2)
//  0: begin disp_addr<=0; LCD_WR_EN<=0;
//     s2<=1;  end
//  1: begin LCD_WR_EN<=1; s2<=2; end
//  2: begin LCD_WR_EN<=0; s2<=3; disp_addr<=disp_addr+1; end
//  3: begin if(LCD_DATA==0) s2<=0; else s2<=1; end 
// endcase

//    message[0] = 8'h1B;
//    message[1] = 8'h5B;
//    message[2] = 8'h6A;
//    message[3] = 8'h48;  // ASCII 'H'
//    message[4] = 8'h65;  // ASCII 'e'
//    message[5] = 8'h6C;  // ASCII 'l'
//    message[6] = 8'h6C;  // ASCII 'l'

always @(result == 2)
begin
    LCD_WR_EN = 1;
    LCD_DATA = 8'h1B;
    LCD_DATA = 8'h5B;
    LCD_DATA = 8'h6A;
    LCD_DATA = 8'h48;  // ASCII 'H'
    LCD_DATA = 8'h65;  // ASCII 'e'
    LCD_DATA = 8'h6C;  // ASCII 'l'
    LCD_DATA = 8'h6C;  // ASCII 'l'
    LCD_DATA = 8'h0;  
end

endmodule




