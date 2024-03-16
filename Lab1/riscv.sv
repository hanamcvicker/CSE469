module riscv(CLK100MHZ, sw, led);

    input logic CLK100MHZ;
    input logic [3:0] sw;
    output logic [3:0]led;
    
    logic done;
    logic reset;
    assign reset = sw[0];
    
    top top(.clk(CLK100MHZ), .reset, .done(done));
    led_logic led_logic(.clk(CLK100MHZ), .done(done), .led(led[0]));
     
endmodule
