`timescale 1ns / 1ps


module ElevatorFiles
#(  parameter   n_floors    = 8 ,   // bit width of input data, depends on how many floors you have
    parameter   btnOutDown  = 3'b001    ,
    parameter   btnIn       = 3'b010    ,
    parameter   btnOutUp    = 3'b100    )
(   input                   reset       ,   // [posedge] reset signal
    // User Control
    input       [ n_floors - 1 : 0 ]    floor_sel   ,   // [switch] control floor indication
    input       [ 2 : 0 ]   floor_sel_mode  ,   // [button] control signal mode selection
    // Elevator Signals
    input       [ 4 : 0 ]   position    ,   // current position of the elevator (in range [1, 8])
    input                   open_up     ,   // elevator is opening for user wants to go up / down
    input                   open_down   ,   //     (open both if without more requests from up or down)
    // Indications
    output wire             stop_curr   ,   // user inside want's to stop at current floor
    output wire             stop_up     ,   // user at current floor wants to go up / down
    output wire             stop_down   ,
    output wire             more_up     ,   // has request from above / below
    output wire             more_down   );

    /**
     *  for each floor, there's 3-bit state indication:
     *      - if requested to stop by user inside (the elevator)
     *      - if go-down request by user outside
     *      - if go-up request by user outside
     */
    reg     [ n_floors - 1 : 0 ]    stop_requests;
    reg     [ n_floors - 1 : 0 ]    up_requests;
    reg     [ n_floors - 1 : 0 ]    down_requests;

    // reset block
    always @ ( posedge reset ) begin
        stop_requests   <= 0;
        up_requests     <= 0;
        down_requests   <= 0;
    end

    // 1-indexed `position` to 0-indexed `offset`
    wire    [ 4 : 0 ]   offset;
    assign  offset  = position - 1;

    // user request process blocks
    always @ ( posedge floor_sel ) begin
        case ( floor_sel_mode )
            btnOutDown: begin
                down_requests   <= down_requests | floor_sel;
            end
            btnOutUp: begin
                up_requests     <= up_requests | floor_sel;
            end
            btnIn: begin
                stop_requests   <= stop_requests | floor_sel;
            end
            default: begin
                /* pass */
            end
        endcase
    end

    always @ ( posedge open_up or posedge open_down ) begin
        stop_requests[offset]       <= 0;
        if ( open_up ) begin
            up_requests[offset]     <= 0;
        end else begin
            down_requests[offset]   <= 0;
        end
    end

    // current floor request
    assign  stop_curr   = stop_requests[offset];
    assign  stop_up     = up_requests[offset];
    assign  stop_down   = down_requests[offset];

    // next step request block
    wire    [ n_floors - 1 : 0 ]    mask_above;
    wire    [ n_floors - 1 : 0 ]    mask_below;
    assign  mask_above  = (~0) << position;             // HACK: position == offset + 1
    assign  mask_below  = (~0) >> (n_floors - offset);  // HACK: n_floors == len(files) + 1

    assign  more_up     = (mask_above & up_requests) ? 1 : 0;
    assign  more_down   = (mask_below & down_requests) ? 1 : 0;

endmodule


module ElevatorFSM
#(  parameter   n_floors    = 8 )
(   input                   clk         ,   // device clock
    // User Control
    input                   power       ,   // [switch] power signal (release on HIGH)
    input                   door_open   ,   // [button] door open request signal
    input                   door_close  ,   // [button] door close signal, ignored when `door_open` is active
    input       [ n_floors - 1 : 0 ]    floor_sel,  // [switch] floor select
    input       [ 2 : 0 ]   floor_sel_mode  ,   // [button] floor select mode: { out_up, in, out_down }
    // Emulator Interfaces
    input       [ 4 : 0 ]   position    ,   // current position of the elevator (in range [1, 8])
    input                   moving      ,   // is elevator moving (set if moving)
    input                   last_move   ,   // HIGH for up, LOW for down
    // Emulator Control
    output reg              move_up     ,   // move up request
    output reg              move_down   ,   // move down request
    output reg              door_ctl    );  // door contorl (open on HIGH)

    // FSM States
    localparam  S_PowerOff      = 0;
    localparam  S_DoorOpened    = 1;
    localparam  S_DoorClosed    = 2;
    localparam  S_Moving        = 3;
    reg     [ 3 : 0 ]   current_state;
    reg     [ 3 : 0 ]   next_state;
    reg                 delay_enable;
    reg                 open_for_going_up, open_for_going_down;

    // Reset block
    always @ ( posedge power ) begin
        move_up         <= 0;
        move_down       <= 0;
        delay_enable    <= 0;
        open_for_going_up   <= 0;
        open_for_going_down <= 0;
    end

    // Helper block
    wire    stop_at_current_floor, stop_for_user_go_up, stop_for_user_go_down;
    wire    more_user_above, more_user_below;
    ElevatorFiles #(n_floors) FSM_Files (
        // Inputs
        .power      ( power )                   ,
        .floor_sel  ( floor_sel )               ,
        .floor_sel_mode ( floor_sel_mode )      ,
        .position   ( position )                ,
        .open_up    ( open_for_going_up )       ,
        .open_down  ( open_for_going_down )     ,
        // Outputs
        .stop_curr  ( stop_at_current_floor )   ,
        .stop_up    ( stop_for_user_go_up )     ,
        .stop_down  ( stop_for_user_go_down )   ,
        .more_up    ( more_user_above )         ,
        .more_down  ( more_user_below )         );

    wire    delay_timeout;
    DelaySignalNS #(1) FSM_DelayMod (
        .enable     ( delay_enable )    ,
        .clkdev     ( clk )             ,
        .timeout    ( delay_timeout )   );

    // Door open mode handler block
    always @ ( door_ctl ) begin
        if ( door_ctl ) begin   // door opened
            if ( more_user_above != more_user_below ) begin
                if ( more_user_above ) begin
                    open_for_going_up   <= 1;
                    open_for_going_down <= 0;
                end else begin
                    open_for_going_down <= 1;
                    open_for_going_up   <= 0;
                end
            end else begin  // more_user_above == more_user_below
                if ( more_user_above ) begin    // both == 1
                    if ( last_move ) begin  // last is up
                        open_for_going_up   <= 1;
                        open_for_going_down <= 0;
                    end else begin  // last is down
                        open_for_going_down <= 1;
                        open_for_going_up   <= 0;
                    end
                end else begin  // both == 0
                    open_for_going_up   <= 1;
                    open_for_going_down <= 1;
                end
            end
        end else begin  // door closed
            open_for_going_up   <= 0;
            open_for_going_down <= 0;
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
        next_state  = current_state;
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
                    if ( more_user_above | more_user_below ) begin
                        next_state  = S_Moving;
                    end else begin
                        if ( door_open ) begin
                            next_state  = S_DoorOpened;
                        end else begin
                            next_state  = S_DoorClosed;
                        end
                    end
                end
                S_Moving: begin
                    if ( stop_at_current_floor
                            | stop_for_user_go_up
                            | stop_for_user_go_down ) begin
                        next_state  = S_DoorOpened;
                    end else begin
                        if ( more_user_above | more_user_below ) begin
                            next_state  = S_Moving;
                        end else begin
                            next_state  = S_DoorClosed;
                        end
                    end
                end
                default: begin
                    next_state  = S_PowerOff;
                end
            endcase
        end else begin
            next_state  = S_PowerOff;
        end
    end

    // FSM III - State outputs
    always @ ( * ) begin
        case ( current_state )
            S_PowerOff: begin
                /* pass */
            end
            S_DoorOpened: begin
                delay_enable    = 1;
                door_ctl        = 1;
            end
            S_DoorClosed: begin
                delay_enable    = 0;
                door_ctl        = 0;
            end
            S_Moving: begin
                door_ctl        = 0;
                if ( more_user_above != more_user_below ) begin
                    if ( more_user_above ) begin
                        move_up     = 1;
                        move_down   = 0;
                    end else begin
                        move_down   = 1;
                        move_up     = 0;
                    end
                end else begin
                    if ( last_move ) begin
                        move_up     = 1;
                        move_down   = 0;
                    end else begin
                        move_down   = 1;
                        move_up     = 0;
                    end
                end
            end
            default: begin
                /* pass */
            end
        endcase
    end

endmodule













