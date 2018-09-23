`timescale 1ns / 1ps


module ElevatorFSM_TB ();

    reg                 clk, power;
    reg                 door_open, door_close;
    reg                 stop_curr, stop_up, stop_down,
                        more_up, more_down;
    wire                open_up, open_down;
    reg     [ 3 : 0 ]   position;
    reg                 moving;
    wire                move_up, move_down, door_ctl;
    wire    [ 3 : 0 ]   __state;

    ElevatorFSM #(8, 4) ElevatorFSM_TestMod (
        // System Input
        .clk        ( clk )         ,
        .power      ( power )       ,
        // User Input
        .door_open  ( door_open )   ,
        .door_close ( door_close )  ,
        // File Input
        .stop_curr  ( stop_curr )   ,
        .stop_up    ( stop_up )     ,
        .stop_down  ( stop_down )   ,
        .more_up    ( more_up )     ,
        .more_down  ( more_down )   ,
        // File Output
        .open_up    ( open_up )     ,
        .open_down  ( open_down )   ,
        // Emulator Input
        .position   ( position )    ,
        .moving     ( moving )      ,
        // Emulator Output
        .move_up    ( move_up )     ,
        .move_down  ( move_down )   ,
        .door_ctl   ( door_ctl )    ,
        // Debug
        .__state    ( __state )     );

    initial begin
        #0      { clk, power }  = 0;        // initializations
        #0      { door_open, door_close }   = 0;
        #0      { stop_curr, stop_up, stop_down }   = 0;
        #0      { more_up, more_down }  = 0;
        #0      position    = 1;
        #0      moving      = 0;
        #20     power       = 1;    // turn on power
        #5      stop_curr   = 1;    // should open door for user to get out
        #5      stop_curr   = 0;
        #500    more_up     = 1;    // should detect `move_up` request
        #5      moving      = 1;
        #5      position    = 5;
        #0      stop_up     = 1;
        #0      more_up     = 0;
        #500    moving      = 0;
        #5      stop_up     = 0;
    end

    always @ ( * ) begin
        #3  clk <= ~clk;
    end

endmodule
