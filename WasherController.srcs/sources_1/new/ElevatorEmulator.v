`timescale 1ns / 1ps


module ElevatorEmulator
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
    output wire             RGB1_Red    ,
    output wire             RGB1_Green  ,
    output wire             RGB2_Blue   ,
    output wire             RGB2_Green  );

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
    assign  RGB1_Green  = (clk) ? door_ind : 0;
    assign  RGB1_Red    = (clk) ? ~door_ind : 0;

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
    reg                 curr_floor;
    wire    [ 3 : 0 ]   move_res_time;
    wire                stop_curr, stop_up, stop_down;
    wire                more_up, more_down;
    wire                move_up, move_down;
    wire                open_up, open_down;

    /******* Motor Emulator *******/

    reg                 moving, last_move;
    reg                 move_delay_enable;
    wire                move_delay_timeout;

    assign  RGB2_Blue   = moving & move_up;
    assign  RGB2_Green  = moving & move_down;

    always @ ( posedge move_up or posedge move_down ) begin
        if ( move_up ) begin
            last_move   <= 1;
        end else begin
            last_move   <= 0;
        end
    end

    DelaySignalNS #(10) (
        .enable         ( move_delay_enable )   ,
        .clkdev         ( clk )                 ,
        .__counter      ( move_res_time )       ,
        .timeout        ( move_delay_timeout )  );

    // Motor Emulator FSM (compact implementation)
    always @ ( * ) begin
        if ( !power ) begin
            curr_floor  = (curr_floor < 1 || curr_floor > 8) ? 1 : curr_floor;
        end else begin
            if ( !moving ) begin
                move_delay_enable   = 0;
                if ( move_up || move_down ) begin
                    moving  = 1;
                end else begin
                    // NOTE: no move requests, do nothing!!!
                    /* pass */
                end
            end else begin
                move_delay_enable   = 1;
                if ( move_delay_timeout ) begin     // arriving
                    if ( move_up ) begin
                        // curr_floor  = (curr_floor != 8) ? curr_floor + 1, 8;
                        curr_floor  = curr_floor + 1;   // HACK: be confident!!!
                    end else if ( move_down ) begin
                        // curr_floor  = (curr_floor != 1) ? curr_floor - 1, 1;
                        curr_floor  = curr_floor - 1;
                    end else begin
                        // NOTE: moving without request from FSM, should be impossible!!!
                        /* pass */
                    end
                    moving  = 0;
                end else begin
                    // NOTE: still moving, do nothing!!!
                    /* pass */
                end
            end     // end moving
        end
    end

    /******* Sub-Modules *******/

    wire    __slower_clk;
    ClockSignal1S #(49_999) __EE_SlowerClock (1, clk, __slower_clk);
    DisplayInterfaceDriver EE_DispMod (
        .power          ( power )           ,
        .clk            ( __slower_clk )    ,
        .curr_floor     ( curr_floor )      ,
        .move_res_time  ( move_res_time )   ,
        .segments       ( { seg[0], seg[1], seg[2], seg[3], seg[4], seg[5], seg[6], dp } )  ,
        .ansel          ( an )              );

    ElevatorFSM EE_FSMMod (
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
        // Emulator Inpu
        .position       ( curr_floor )  ,
        .moving         ( moving )      ,
        .last_move      ( last_move )   ,
        // File Outpu
        .open_up        ( open_up )     ,
        .open_down      ( open_down )   ,
        // Emulator Outpu
        .move_up        ( move_up )     ,
        .move_down      ( move_down )   ,
        .door_ctl       ( door_ind )    );

    ElevatorFiles EE_FileMod (
        // System Input
        .reset          ( power )           ,
        // User Input
        .stop_buttons   ( stopat_buttons )  ,
        .up_buttons     ( goup_buttons )    ,
        .down_buttons   ( godown_buttons )  ,
        // Emulator Input
        .position       ( curr_floor )      ,
        .open_up        ( open_up )         ,
        .open_down      ( open_down )       ,
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
