`timescale 1ns / 1ps


module ElevatorFile_TB ();

    reg                 power, clk;
    reg     [ 7 : 0 ]   stop_buttons;
    reg     [ 7 : 0 ]   up_buttons;
    reg     [ 7 : 0 ]   down_buttons;
    reg     [ 3 : 0 ]   position;
    reg                 moving;
    reg                 open_up, open_down;
    wire                stop_curr, stop_up, stop_down;
    wire                more_up, more_down;
    wire    [ 7 : 0 ]   stop_requests;
    wire    [ 7 : 0 ]   up_requests;
    wire    [ 7 : 0 ]   down_requests;

    ElevatorFiles ElevatorFiles_TestMod (
        // System Input
        .power          ( power )           ,
        .clk            ( clk )             ,
        // User Input
        .stop_buttons   ( stop_buttons )    ,
        .up_buttons     ( up_buttons )      ,
        .down_buttons   ( down_buttons )    ,
        // Emulator Signals
        .position       ( position )        ,
        .moving         ( moving )          ,
        .open_up        ( open_up )         ,
        .open_down      ( open_down )       ,
        // Outpus
        .stop_curr      ( stop_curr )       ,
        .stop_up        ( stop_up )         ,
        .stop_down      ( stop_down )       ,
        .more_up        ( more_up )         ,
        .more_down      ( more_down )       ,
        // DEBUG
        .__stop_req     ( stop_requests )   ,
        .__up_req       ( up_requests )     ,
        .__down_req     ( down_requests )   );

    initial begin
        #0      power           = 0;    // initializations
        #0      clk             = 0;
        #0      { stop_buttons, up_buttons, down_buttons }  = 0;
        #0      position        = 1;
        #0      moving          = 0;    // force 0, for test purpose
        #0      { open_up, open_down }  = 0;
        #5      power           = 1;
        #5      up_buttons[1]   = 1;    // register go-up request at 2nd floor
        #5      up_buttons[1]   = 0;
        #5      position        = 2;    // elevator arrives at 2nd floor
        #5      open_up         = 1;    // open door for user going up
        #5      open_up         = 0;
        #5      position        = 5;    // went to 5th floor
        #5      stop_buttons[2] = 1;    // go-to request to 3rd floor
        #5      stop_buttons[2] = 0;
        #5      position        = 3;
        #5      open_down       = 1;    // any type of door open should do!!!
        #5      open_down       = 0;
    end

    always @ ( * ) begin
        #1  clk <= ~clk;
    end

endmodule
