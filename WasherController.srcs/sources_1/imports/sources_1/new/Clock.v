`timescale 1ns / 1ps


module ClockSignal1S
#(  parameter   __half_sec_scale    = 49_999_999    )   // scale of .5s (under 100MHz, should be `50M - 1`)
(   input           enable  ,   // enabled on HIGH
    input           clk     ,   // device clock singal
    output reg      clkout  );  // output signal (start on LOW)

    reg [31:0]      counter;

    // HACK: easy for simulation, won't matter circuit behaviour
    initial begin
        clkout = 0;
        counter = 0;
    end

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
    output                  clk1hz      ,   // private clock
    output wire [ 3 : 0 ]   __counter   ,
    output reg              timeout     );  // output interrupt signal

    reg [3:0]   counter;
    assign  __counter   = counter;

    ClockSignal1S #(__half_sec_scale) __PrivateClock (
        .enable ( enable )  ,
        .clk    ( clkdev )  ,
        .clkout ( clk1hz )  );

    always @ ( posedge clk1hz ) begin
        if ( !enable ) begin
            counter <= 0;
            timeout <= 0;
        end else begin
            if ( timeout ) begin
                // stay in HIGH after triggered timer output
                /* pass */
            end else if ( counter == (n_sec - 1) ) begin
                timeout <= ~timeout;
                counter <= 0;
            end else begin
                counter <= counter + 1;
            end
        end
    end

endmodule
