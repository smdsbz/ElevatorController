`timescale 1ns / 1ps


module ClockSignal1S
#(  parameter   __half_sec_scale    = 49_999_999    )   // scale of .5s (under 100MHz, should be `50M - 1`)
(   input           enable  ,   // enabled on HIGH
    input           clk     ,   // device clock singal
    output reg      clkout  );  // output signal (start on LOW)

    reg [31:0]      counter;

    always @ ( posedge clk ) begin
        if ( !enable ) begin
            counter <= 0;
            clkout  <= 0;
        end else if ( counter == __half_sec_scale ) begin
            counter <= 0;
            clkout  <= ~clkout;
        end else begin
            counter <= counter + 1;
        end
    end

endmodule


module DelaySignalNS
#(  parameter   n_sec               = 1             ,   // seconds per period, SHOULD START ON 1!!!
    parameter   __half_sec_scale    = 49_999_999    )   // real-world timescale
(   input                   enable      ,   // enabled on HIGH
    input                   clkdev      ,   // device signal
    output reg              timeout     ,   // output signal
    // DEBUG
    output reg              clk1hz      ,   // private clock
    output wire [ 3 : 0 ]   __counter   );

    reg [3:0]   counter;
    assign  __counter   = counter;

    reg     [ 31 : 0 ]  __divider_counter;

    always @ ( posedge clkdev ) begin
        if ( !enable ) begin
            __divider_counter   <= 0;
            counter             <= 0;
            timeout             <= 0;
            clk1hz              <= 0;
        end else begin
            if ( __divider_counter == __half_sec_scale ) begin
                clk1hz              <= ~clk1hz;
                __divider_counter   <= __divider_counter + 1;
            end else if ( __divider_counter == __half_sec_scale * 2 + 1 ) begin
                clk1hz              <= ~clk1hz;
                __divider_counter   <= 0;
                counter             <= counter + 1;
            end else begin
                __divider_counter   <= __divider_counter + 1;
            end
            if ( (!timeout) && (counter == n_sec) ) begin
                timeout     <= 1;
            end
        end     // end enable
    end

endmodule
