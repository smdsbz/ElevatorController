`timescale 1ns / 1ps

module TopModule_TB ();

    reg                     clk;
    reg     [ 15 : 0 ]      sw;
    reg                     btn_open_door, btn_close_door;
    reg                     btn_goup, btn_goto, btn_godown;
    wire    [ 6 : 0 ]       seg;
    wire                    dp;
    wire    [ 7 : 0 ]       an;
    wire    [ 15 : 0 ]      led;
    wire                    RGB_door_closed;
    wire                    RGB_door_open;
    wire                    RGB_moving_down;
    wire                    RGB_moving_up;

    ElevatorEmulator #(24) EE_Test (
        .clk        ( clk )             ,
        .sw         ( sw )              ,
        .btnL       ( btn_open_door )   ,
        .btnR       ( btn_close_door )  ,
        .btnU       ( btn_goup )        ,
        .btnC       ( btn_goto )        ,
        .btnD       ( btn_godown )      ,
        .seg        ( seg )             ,
        .dp         ( dp )              ,
        .an         ( an )              ,
        .led        ( led )             ,
        .RGB1_Red   ( RGB_door_closed ) ,
        .RGB1_Green ( RGB_door_open )   ,
        .RGB2_Green ( RGB_moving_down ) ,
        .RGB2_Blue  ( RGB_moving_up )   );

    initial begin
        #0      sw      = 0;
        #0      clk     = 0;
        #0      { btn_open_door, btn_close_door }   = 0;
        #0      { btn_goup, btn_goto, btn_godown }  = 0;
        #50     sw[2]   = 1;    // turn on power
        #30     sw[3]   = 1;    // 2nd floor go-to request
        #10     btn_goto    = 1;
        #5      btn_goto    = 0;
    end
    
    always @ ( * ) begin
        #1  clk <= ~clk;
    end

endmodule
