`timescale 1ns / 1ps


module MotorSimulator
#(  parameter   move_time           = 12            ,
    parameter   __half_sec_scale    = 49_999_999    )
(   input           clk             ,   // device clock
    input           power           ,   // motor power switch
    input           up_request      ,   // move up / down request from FSM
    input           down_request    ,
    output wire     moving_up       ,   // elevator moving up / down
    output wire     moving_down     ,
    output wire     moving          ,
    // DEBUG
    output reg      __arrival_time  );

    assign  moving  = moving_up | moving_down;

    reg     [ 3 : 0 ]   state;

    always @ ( posedge clk ) begin
        
    end





endmodule
