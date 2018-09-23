`timescale 1ns / 1ps


module ElevatorFSM
#(  parameter   n_floors            = 8             ,
    parameter   __half_sec_scale    = 49_999_999    )
(   input                   clk         ,   // device clock
    // User Contro
    input                   power       ,   // [switch] power signal (release on HIGH)
    input                   door_open   ,   // [button] door open request signal
    input                   door_close  ,   // [button] door close signal, ignored when `door_open` is active
    // File Input
    input                   stop_curr   ,   // if user inside wants to stop at current floor
    input                   stop_up     ,   // if user outside wants to stop for going up / down
    input                   stop_down   ,
    input                   more_up     ,   // if more user outside from above / below
    input                   more_down   ,
    // File Output
    output reg              open_up     ,   // if door opening for user outside going up / down
    output reg              open_down   ,
    // Emulator Input
    input       [ 3 : 0 ]   position    ,   // current position of the elevator (in range [1, 8])
    input                   moving      ,   // is elevator moving (set if moving)
    // Emulator Output
    output reg              move_up     ,   // move up request
    output reg              move_down   ,   // move down request
    output reg              door_ctl    ,   // door contorl (open on HIGH)
    output reg              last_move   ,
    // DEBUG
    output wire [ 3 : 0 ]   __state     );  // current state

    // FSM States
    localparam  S_PowerOff      = 0;
    localparam  S_DoorOpened    = 1;
    localparam  S_DoorClosed    = 2;
    localparam  S_Moving        = 3;
    reg     [ 3 : 0 ]   current_state;
    reg     [ 3 : 0 ]   next_state;
    reg                 delay_enable;

    assign  __state = current_state;

    wire    delay_timeout;
    DelaySignalNS #(5, __half_sec_scale) FSM_DelayMod (
        .enable     ( delay_enable )    ,
        .clkdev     ( clk )             ,
        .timeout    ( delay_timeout )   );

    // Door open mode handler block
    always @ ( * ) begin
        if ( door_ctl ) begin   // door opened
            if ( more_up != more_down ) begin
                if ( more_up ) begin
                    open_up     = 1;
                    open_down   = 0;
                end else begin
                    open_down   = 1;
                    open_up     = 0;
                end
            end else begin      // more_up == more_down
                if ( more_up ) begin    // both == 1
                    if ( last_move ) begin  // last is up
                        open_up     = 1;
                        open_down   = 0;
                    end else begin  // last is down
                        open_down   = 1;
                        open_up     = 0;
                    end
                end else begin  // both == 0
                    open_up     = 1;
                    open_down   = 1;
                end
            end
        end else begin  // door closed
            open_up     = 0;
            open_down   = 0;
        end
    end

    // FSM I - Assignments block
    always @ ( posedge clk ) begin
        if ( power ) begin
            current_state   <= next_state;
        end else begin
            current_state   <= S_PowerOff;
        end
    end

    // FSM II - State transitions
    always @ ( * ) begin
        // next_state  = current_state;
        if ( power ) begin
            case ( current_state )
                S_PowerOff: begin
                    if ( moving ) begin     // re-powered from moving
                        next_state  = S_Moving;
                    end else begin
                        if ( door_ctl ) begin
                            next_state  = S_DoorOpened;
                        end else begin
                            next_state  = S_DoorClosed;
                        end
                    end
                end
                S_DoorOpened: begin
                    if ( door_open ) begin
                        next_state  = S_DoorOpened;
                    end else begin
                        if ( door_close ) begin
                            next_state  = S_DoorClosed;
                        end else begin
                            if ( delay_timeout ) begin
                                next_state  = S_DoorClosed;
                            end else begin
                                next_state  = S_DoorOpened;
                            end
                        end
                    end
                end
                S_DoorClosed: begin
                    if ( stop_curr | stop_up | stop_down ) begin
                        next_state  = S_DoorOpened;
                    end else begin
                        if ( more_up | more_down ) begin
                            next_state  = S_Moving;
                        end else begin
                            if ( door_open ) begin
                                next_state  = S_DoorOpened;
                            end else begin
                                next_state  = S_DoorClosed;
                            end
                        end
                    end
                end
                S_Moving: begin
                    if ( moving ) begin
                        next_state  = S_Moving;
                    end else begin
                        if ( stop_curr | stop_up | stop_down ) begin
                            next_state  = S_DoorOpened;
                        end else begin
                            if ( more_up | more_down ) begin
                                next_state  = S_Moving;
                            end else begin
                                next_state  = S_DoorOpened;
                            end
                        end
                    end
                end
                default: begin
                    next_state  = S_DoorClosed;
                end
            endcase
        end else begin  // !power
            next_state  = S_PowerOff;
        end
    end

    // FSM III - State outputs
    always @ ( * ) begin
        case ( current_state )
            S_PowerOff: begin
                delay_enable    = 0;
                move_up         = 0;
                move_down       = 0;
            end
            S_DoorOpened: begin
                delay_enable    = 1;
                door_ctl        = 1;
                move_up         = 0;
                move_down       = 0;
            end
            S_DoorClosed: begin
                delay_enable    = 0;
                door_ctl        = 0;
                move_up         = 0;
                move_down       = 0;
            end
            S_Moving: begin
                delay_enable    = 0;
                door_ctl        = 0;
                if ( !moving ) begin
                    if ( more_up != more_down ) begin
                        if ( more_up ) begin
                            move_up     = 1;
                            move_down   = 0;
                            last_move   = 1;
                        end else begin
                            move_down   = 1;
                            move_up     = 0;
                            last_move   = 0;
                        end
                    end else begin  // more_up == more_down == 1
                        if ( more_up ) begin
                            if ( position == 8 ) begin
                                move_down   = 1;
                                move_up     = 0;
                                last_move   = 0;
                            end else if ( position == 1 ) begin
                                move_up     = 1;
                                move_down   = 0;
                                last_move   = 1;
                            end else begin  // intermidiate floors
                                if ( last_move ) begin
                                    move_up     = 1;
                                    move_down   = 0;
                                end else begin
                                    move_down   = 1;
                                    move_up     = 0;
                                end
                            end
                        end else begin
                            // waiting to be transferred to S_DoorOpen
                            move_up     = 0;
                            move_down   = 0;
                        end

                    end     // end more_up, more_down
                end else begin  // is moving
                    // request responed by MotorSimulator, retrieve request
                    move_up     = 0;
                    move_down   = 0;
                end
            end
            default: begin
                /* pass */
            end
        endcase
    end

endmodule













