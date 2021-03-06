`timescale 1ns / 1ps


module MotorSimulator 
#(  parameter   move_delay          = 10            ,
    parameter   __half_sec_scale    = 49_999_999    )
(   // System Input
    input                   power       ,
    input                   clk         ,
    // FSM Control Signal Input
    input                   move_up     ,
    input                   move_down   ,
    // Output
    output reg  [ 3 : 0 ]   position    ,
    output reg              moving      ,
    // Debug
    output wire [ 3 : 0 ]   __count     );

    reg     delay_enable;
    wire    delay_timeout;

    DelaySignalNS #(move_delay, __half_sec_scale) __MS_MotorDelayMod (
        .enable     ( delay_enable )    ,
        .clkdev     ( clk )             ,
        .__counter  ( __count )         ,
        .timeout    ( delay_timeout )   );

    reg     [ 3 : 0 ]   next_position;

    initial begin
        delay_enable    = 0;
        position        = 1;
        next_position   = 1;
        moving          = 0;
    end

    always @ ( posedge move_up or posedge move_down ) begin
        // HACK: move_up != move_down
        if ( move_up ) begin
            next_position   <= position + 1;
        end else begin
            next_position   <= position - 1;
        end
    end

    reg         __helper_delay_enable;
    wire        __helper_delay_timeout;
    DelaySignalNS #(3, 2) __MotorSim_HelperDelay (
        .enable     ( __helper_delay_enable )   ,
        .clkdev     ( clk )                     ,
        .timeout    ( __helper_delay_timeout )  );

    always @ ( negedge clk ) begin
        if ( !power ) begin
            moving          <= 0;
            delay_enable    <= 0;
            __helper_delay_enable   <= 0;
            if ( position == 0 || position > 8 ) begin
                position    <= 1;
            end
        end else begin  // is powered
            if ( !moving ) begin
                // if ( next_position != position ) begin
                if ( move_up | move_down ) begin
                    moving          <= 1;
                    delay_enable    <= 1;
                end else begin
                    moving          <= 0;
                    delay_enable    <= 0;
                end
            end else begin  // is moving
                if ( delay_timeout ) begin
                    position        <= next_position;
                    if ( __helper_delay_timeout ) begin     // HACK: manual delay, leaving room for FSM to respond
                        moving          <= 0;
                        delay_enable    <= 0;
                        __helper_delay_enable   <= 0;
                    end else begin
                        __helper_delay_enable   <= 1;
                    end
                end else begin
                    moving          <= 1;
                    delay_enable    <= 1;
                end
            end     // end moving
        end     // end power
    end

endmodule













