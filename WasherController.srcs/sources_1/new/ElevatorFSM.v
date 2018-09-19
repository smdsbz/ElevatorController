`timescale 1ns / 1ps


module ElevatorFiles
#(  parameter   n_floors    = 8 )   // bit width of input data, depends on how many floors you have
(   input                   reset       ,   // [posedge] reset signal
    // User Control
    // input       [ n_floors - 1 : 0] floor_sel   ,   // [switch] control floor indication
    // input       [ 2 : 0 ]   open_mode   ,   // [button] control signal mode selection
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

    // state change block
    always @ ( * ) begin
        if ( reset ) begin
            /* pass */
        end else begin
            // requests from inside
            if ( open_up || open_down ) begin
                stop_requests[offset]   <= 0;
            end
            // requests from outside
            if ( open_up ) begin
                up_requests[offset]     <= 0;
            end else if ( open_down ) begin
                down_requests[offset]   <= 0;
            end else begin
                // do nothing if door's not opened
                /* pass */
            end
        end
    end

endmodule


module ElevatorFSM
#(  parameter   n_floors    = 8 )
(   // User Control
    input                   reset       ,   // [switch] power signal (release on HIGH)
    input                   door_open   ,   // [button] door open request signal
    input                   door_close  ,   // [button] door close signal, ignored when `door_open` is active
    // Interfaces
    input       [ 4 : 0 ]   position    ,   // current position of the elevator (in range [1, 8])
    input                   moving      ,   // is elevator moving (set if moving)
    // Emulator Control
    output reg              move_up     ,   // move up request
    output reg              move_down   );  // move down request

    // FSM States
    parameter   S_PowerOff      = 0;
    parameter   S_DoorOpened    = 1;
    parameter   S_Moving        = 2;

    always @ ( posedge reset ) begin
        move_up     <= 0;
        move_down   <= 0;
    end

    wire    stop_at_current_floor, stop_for_user_go_up, stop_for_user_go_down;
    wire    more_user_above, more_user_below;

    ElevatorFiles #(n_floors) FSM_Files (
        // Inputs
        .reset      ( reset )       ,
        .position   ( position )    ,
        .open_up    ( TODO ) ,
        .open_down  ( TODO ) ,
        // Outputs
        .stop_curr  ( TODO ) ,
        .stop_up    ( TODO ) ,
        .stop_down  ( TODO ) ,
        .more_up    ( TODO ) ,
        .more_down  ( TODO ) );





endmodule













