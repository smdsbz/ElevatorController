`timescale 1ns / 1ps


module DisplayInterfaceDriver_TB ();

    reg                 power, clk;
    reg     [ 3 : 0 ]   curr_floor;
    reg     [ 3 : 0 ]   move_res_time;
    wire    [ 7 : 0 ]   seg;
    wire    [ 7 : 0 ]   ansel;

    initial begin
        #0      power           = 0;
        #0      clk             = 0;
        #0      curr_floor      = 1;
        #0      move_res_time   = 2;
        #20     power           = 1;
        #100    curr_floor      = 11;
        #0      move_res_time   = 13;
        
    end

    always @ ( * ) begin
        #10 clk <= ~clk;
    end

    DisplayInterfaceDriver DisplayInterfaceDriver_Test (
        .power          ( power )       ,
        .clk            ( clk )         ,
        .curr_floor     ( curr_floor )  ,
        .move_res_time  ( move_res_time )   ,
        .segments       ( seg )             ,
        .ansel          ( ansel )           );

endmodule
