`timescale 1ns / 1ps


module MotorSimulator_TB ();

    reg                 power, clk;
    reg                 move_up, move_down;
    wire    [ 3 : 0 ]   position;
    wire                moving;
    wire    [ 3 : 0 ]   __count;

    MotorSimulator #(5, 4) MotorSimulator_Test (
        .power      ( power )       ,
        .clk        ( clk )         ,
        .move_up    ( move_up )     ,
        .move_down  ( move_down )   ,
        .position   ( position )    ,
        .moving     ( moving )      ,
        .__count    ( __count )     );

    initial begin
        #0      { power, clk }  = 0;
        #0      { move_up, move_down }  = 0;
        #5      power           = 1;
        #5      move_up         = 1;
        #50     move_up         = 0;
    end

    always @ ( * ) begin
        #3  clk <= ~clk;
    end


endmodule
