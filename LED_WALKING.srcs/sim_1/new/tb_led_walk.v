`timescale 1ns / 100ps

module tb_led_walk;

reg CLK;
reg slower, faster;
reg active;

wire [3:0] led;


led_walk uut (
    .CLK(CLK),
    .slower(slower),
    .faster(faster),
    .active(active),
    .led(led)
);

always begin
   #5 CLK = ~CLK;
end

// Proces odpowiedzialny za generowanie wejść
  initial begin
    CLK = 0;
    slower = 0;
    faster = 0;
    active = 1;

    // Symulacja zachowania
    $monitor("Time=%0t slower=%b faster=%b active=%b led=%b", $time, slower, faster, active, led);

    // Przykład sekwencji sygnałów
    slower = 1;
    #20 slower = 0;
    
    #10 faster = 1;
    #20 faster = 0;
    
    #10 faster = 1;
    #10 faster = 0;
    
    #10 faster = 1;
    #10 faster = 0;
    
    #10 faster = 1;
    #10 faster = 0;
    // Dodaj więcej sekwencji lub testów według potrzeb

    // Zakończenie symulacji
    $finish;
  end

endmodule
