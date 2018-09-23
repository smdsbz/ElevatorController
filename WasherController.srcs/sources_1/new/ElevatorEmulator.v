`timescale 1ns / 1ps


module ElevatorEmulator
#(  parameter   __half_sec_scale    = 49_999_999    )
(   // System Inputs
    input                   clk         ,   // hardware clock
    // User Inputs
    input       [ 15 : 0 ]  sw          ,   // which-floor indicator
    input                   btnL        ,   // door open
    input                   btnR        ,   // door close
    input                   btnU        ,   // go-up modifier
    input                   btnC        ,   // stop-at modifier
    input                   btnD        ,   // go-down modifier
    // Outputs
    output wire [ 6 : 0 ]   seg         ,
    output wire             dp          ,
    output wire [ 7 : 0 ]   an          ,
    output wire [ 15 : 0 ]  led         ,
    output wire             RGB1_Red    ,   // door closed / open indication
    output wire             RGB1_Green  ,
    output wire             RGB2_Green  ,   // moving down / up indication
    output wire             RGB2_Blue   );

    genvar  __plc;

    // aliases
    wire                power;
    wire                door_open, door_close;
    wire                door_ind;               // door indicator
    wire    [ 7 : 0 ]   floor_sel;
    wire                goup_modif, stopat_modif, godown_modif;
    wire    [ 2 : 0 ]   floor_sel_mod;
    wire    [ 7 : 0 ]   goup_buttons;
    wire    [ 7 : 0 ]   stopat_buttons;
    wire    [ 7 : 0 ]   godown_buttons;

    assign  power   = sw[2];
    assign  { door_open, door_close }   = { btnL, btnR };
    assign  { goup_modif, stopat_modif, godown_modif }  = { btnU, btnC, btnD };
    generate
        for ( __plc = 0; __plc < 8; __plc = __plc + 1 ) begin
            assign  floor_sel[__plc]    = sw[__plc * 2 + 1];
        end
    endgenerate
    assign  floor_sel_mod   = { goup_modif, stopat_modif, godown_modif };
    assign  godown_buttons  = (floor_sel_mod == 3'b001) ?
                                { floor_sel[7:1], 1'b0 } : 8'b0;
    assign  stopat_buttons  = (floor_sel_mod == 3'b010) ?
                                floor_sel : 8'b0;
    assign  goup_buttons    = (floor_sel_mod == 3'b100) ?
                                { 1'b0, floor_sel[6:0] } : 8'b0;

    // Output State Indications
    assign  RGB1_Green  = clk & door_ind;
    assign  RGB1_Red    = clk & ~door_ind;

    wire    [ 7 : 0 ]   __stop_req;
    wire    [ 7 : 0 ]   __up_req;
    wire    [ 7 : 0 ]   __down_req;
    generate
        for ( __plc = 0; __plc < 8; __plc = __plc + 1 ) begin
            assign  led[__plc * 2] = (
                ( clk ) ?               // HACK: 2x PWM
                ( __stop_req[__plc] ) :
                ( __down_req[__plc] )
            );
            assign  led[__plc * 2 + 1] = (
                ( clk ) ?
                ( __stop_req[__plc] ) :
                ( __up_req[__plc] )
            );
        end
    endgenerate

    // Internal Wires
    wire    [ 3 : 0 ]   curr_floor;
    wire    [ 3 : 0 ]   move_res_time;
    wire                moving;
    wire                stop_curr, stop_up, stop_down;
    wire                more_up, more_down;
    wire                move_up, move_down;
    wire                last_move;
    wire                open_up, open_down;

    /******* Motor Emulator *******/

    assign  RGB2_Blue   = clk & ( moving & last_move );
    assign  RGB2_Green  = clk & ( moving & ~last_move );

    MotorSimulator #(12, __half_sec_scale) EE_MotorSimMod (
        .power      ( power )           ,
        .clk        ( clk )             ,
        .move_up    ( move_up )         ,
        .move_down  ( move_down )       ,
        .position   ( curr_floor )      ,
        .moving     ( moving )          ,
        .__count    ( move_res_time )   );

    /******* Sub-Modules *******/

    wire                __slower_clk;
    wire    [ 3 : 0 ]   __FSM_state;
    wire    [ 6 : 0 ]   __seg_reversed;     // a-first, g-last
    generate
        for ( __plc = 0; __plc <= 6; __plc = __plc + 1 ) begin
            assign  __seg_reversed[__plc]   = seg[6 - __plc];
        end
    endgenerate
    ClockSignal1S #(49_999) __EE_SlowerClock (1, clk, __slower_clk);
    DisplayInterfaceDriver EE_DispMod (
        .power          ( power )                       ,
        .clk            ( __slower_clk )                ,
        .curr_floor     ( curr_floor )                  ,
        .move_res_time  ( move_res_time )               ,
        .__state        ( __FSM_state )                 ,
        .segments       ( { __seg_reversed[6:0], dp } ) ,
        .ansel          ( an )                          );

    ElevatorFSM #(8, __half_sec_scale) EE_FSMMod (
        // System Input
        .clk            ( clk )         ,
        .power          ( power )       ,
        // User Contor
        .door_open      ( door_open )   ,
        .door_close     ( door_close )  ,
        // File Inpu
        .stop_curr      ( stop_curr )   ,
        .stop_up        ( stop_up )     ,
        .stop_down      ( stop_down )   ,
        .more_up        ( more_up )     ,
        .more_down      ( more_down )   ,
        // Emulator Input
        .position       ( curr_floor )  ,
        .moving         ( moving )      ,
        // File Output
        .open_up        ( open_up )     ,
        .open_down      ( open_down )   ,
        // Emulator Output
        .move_up        ( move_up )     ,
        .move_down      ( move_down )   ,
        .door_ctl       ( door_ind )    ,
        .last_move      ( last_move )   ,
        .__state        ( __FSM_state ) );

    ElevatorFiles #(8) EE_FileMod (
        // System Input
        .power          ( power )           ,
        .clk            ( clk )             ,
        // User Input
        .stop_buttons   ( stopat_buttons )  ,
        .up_buttons     ( goup_buttons )    ,
        .down_buttons   ( godown_buttons )  ,
        // Emulator Input
        .position       ( curr_floor )      ,
        .open_up        ( open_up )         ,
        .open_down      ( open_down )       ,
        .moving         ( moving )          ,
        // Indications to FSM
        .stop_curr      ( stop_curr )       ,
        .stop_up        ( stop_up )         ,
        .stop_down      ( stop_down )       ,
        .more_up        ( more_up )         ,
        .more_down      ( more_down )       ,
        // DEBUG Output
        .__stop_req     ( __stop_req )      ,
        .__up_req       ( __up_req )        ,
        .__down_req     ( __down_req )      );

endmodule
