`timescale 1ns / 1ps


module ElevatorFiles
#(  parameter   n_floors    = 8         ,   // bit width of input data, depends on how many floors you have
    parameter   btnOutDown  = 3'b001    ,
    parameter   btnIn       = 3'b010    ,
    parameter   btnOutUp    = 3'b100    )
(   input                               power           ,   // power signal
    input                               clk             ,
    // User Control
    input       [ n_floors - 1 : 0 ]    stop_buttons    ,
    input       [ n_floors - 1 : 0 ]    up_buttons      ,
    input       [ n_floors - 1 : 0 ]    down_buttons    ,
    // Emulator Signals
    input       [ 3 : 0 ]               position        ,   // current position of the elevator (in range [1, 8])
    input                               open_up         ,   // elevator is opening for user wants to go up / down
    input                               open_down       ,   //     (open both if without more requests from up or down)
    input                               moving          ,
    // Output Indications
    output wire                         stop_curr       ,   // user inside want's to stop at current floor
    output wire                         stop_up         ,   // user at current floor wants to go up / down
    output wire                         stop_down       ,
    output wire                         more_up         ,   // has request from above / below
    output wire                         more_down       ,
    // Debug Output
    output wire [ n_floors - 1 : 0 ]    __stop_req      ,
    output wire [ n_floors - 1 : 0 ]    __up_req        ,
    output wire [ n_floors - 1 : 0 ]    __down_req      );

    /**
     *  for each floor, there's 3-bit state indication:
     *      - if requested to stop by user inside (the elevator)
     *      - if go-down request by user outside
     *      - if go-up request by user outside
     */
    reg     [ n_floors - 1 : 0 ]    stop_requests;
    reg     [ n_floors - 1 : 0 ]    up_requests;
    reg     [ n_floors - 1 : 0 ]    down_requests;
    assign  __stop_req  = stop_requests;
    assign  __up_req    = up_requests;
    assign  __down_req  = down_requests;

    wire    [ n_floors - 1 : 0 ]    all_requests;
    assign  all_requests    = stop_requests | up_requests | down_requests;

    initial begin
        stop_requests   = 0;
        up_requests     = 0;
        down_requests   = 0;
    end

    // 1-indexed `position` to 0-indexed `offset`
    wire    [ 4 : 0 ]   offset;
    assign  offset  = position - 1;

    // user request process blocks
    // add block
    always @ ( posedge clk ) begin
        if ( !power ) begin
            /* pass */
            stop_requests   <= 0;
            up_requests     <= 0;
            down_requests   <= 0;
        end else begin
            stop_requests   <= ( stop_requests | stop_buttons ) & ~( { 7'b0, (open_up | open_down) } << offset );
            up_requests     <= ( up_requests | up_buttons )     & ~( { 7'b0, open_up } << offset ); 
            down_requests   <= ( down_requests | down_buttons ) & ~( { 7'b0, open_down } << offset );
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
    assign  mask_below  = ~( (~0) << offset );

    assign  more_up     = (mask_above & all_requests) ? 1 : 0;
    assign  more_down   = (mask_below & all_requests) ? 1 : 0;

endmodule
