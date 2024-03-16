module led_logic(clk, done, led);
   input logic clk, done;
   output logic led;
    
   always_comb begin
       case(done)
           0: led = 0;
           1: led = 1;
       endcase
   end
endmodule
