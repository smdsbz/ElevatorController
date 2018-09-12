`timescale 1ns / 1ps


module Clock_TB ();

    reg     clk, enable1s, enable2s;
    wire    clk1hz1s, clk1hz2s;     // check internal clock
    wire    out1s, out2s;

    DelaySignalNS #(1, 49) ClockSignalNS_Test_1S (
        .enable     ( enable1s )    ,
        .clkdev     ( clk )         ,
        .clk1hz     ( clk1hz1s )    ,
        .timeout    ( out1s )       );

    DelaySignalNS #(2, 49) ClockSignalNS_Test_2S (
        .enable     ( enable2s )    ,
        .clkdev     ( clk )         ,
        .clk1hz     ( clk1hz2s )    ,
        .timeout    ( out2s )       );

    initial begin
        #0      clk         = 0;
        #0      enable1s    = 0;
        #0      enable2s    = 0;
        #157    enable1s    = 1;
        #96     enable2s    = 1;
    end

    always @ ( * ) #10 clk <= ~clk;

endmodule
