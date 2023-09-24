module messenger (
    input clk, RST,
    input [2:0] result,
    output reg [7:0] LCD_DATA,
    output reg LCD_WR_EN,
    output reg [1:0] RGB_GREENS = 0,
    output reg [1:0] RGB_REDS = 0
    );

reg [2:0] message_number;
reg [7:0] STR;
reg [4:0] disp_addr;
reg [2:0] s2;
reg wr_en, disp_en;

always @(posedge clk)
 case (result)
  0: begin // trwa gra
    RGB_GREENS <= 0;
    RGB_REDS <= 0;
    //message to tx fifo output
    LCD_WR_EN <= 1;
    message_number <= 0;
  end
  1: begin // udało się złapać światło
    RGB_REDS <= 0;
    RGB_GREENS <= 2'b10;
    message_number <= 1;
  end
  2: begin // nie udało się złapać światła
    RGB_REDS <= 2'b10;
    RGB_GREENS <= 0;
  end
  3: begin // cheater złapany na goracym uczynku!!!
    RGB_REDS <= 2'b11;
    RGB_GREENS <= 0;
  end
 endcase
 
function [7:0] STR1 (input [4:0] ADDR); //(2)
 case (ADDR) //Tekst: PBlaze Downloader by ZH
  0:STR1=80; 1:STR1=66; 2:STR1=108; 3:STR1=97;
  4:STR1=122; 5:STR1=101; 6:STR1=32; 7:STR1=68;
  8:STR1=111; 9:STR1=119; 10:STR1=110; 11:STR1=108;
  12:STR1=111; 13:STR1=97; 14:STR1=100; 15:STR1=101;
  16:STR1=114; 17:STR1=32; 18:STR1=98; 19:STR1=121;
  20:STR1=32; 21:STR1=90; 22:STR1=72; 23:STR1=10;
  24:STR1=13; 25:STR1=0; default: STR1=8'hxx;
 endcase
endfunction

function [7:0] STR2 (input [3:0] ADDR);
 case (ADDR) //Kod czyszczenia ekranu i ustawienia kursora w (1,1)
  0:STR2=8'h1B; 1:STR2=8'h5B; 2:STR2=8'h6A; 3:STR2=82;
  4:STR2=61; 5:STR2=48; 6:STR2=10; 7:STR2=13; 
  8:STR2=0; default: STR2=8'hxx;
 endcase
endfunction

always @(*) //(8)
 (* full_case *)
 case (message_number)
  0: STR=STR1(disp_addr);
  1: STR=STR2(disp_addr[3:0]);
 endcase 

always @(posedge clk) //(9)
if(~RST) s2<=0; else
 case (s2)
  0: begin disp_addr<=0; wr_en<=0;
     if(disp_en) s2<=1;  end
  1: begin wr_en<=1; s2<=2; end
  2: begin wr_en<=0; s2<=3; disp_addr<=disp_addr+1; end
  3: begin if(STR==0) s2<=0; else s2<=1; end 
 endcase

endmodule




