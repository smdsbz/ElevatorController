`timescale 1ns / 1ps


module SevenSegDecoder
(   input       [3:0]   data        ,   // 4-bit hex number
    output reg  [7:0]   segments    );  // { a, b, c, d, e, f, g, dp }

    always @ ( * ) begin
        case ( data )
                               // order: { abc_defg_dp }
            4'h0:       segments    =  8'b000_0001_1;
            4'h1:       segments    =  8'b100_1111_1;
            4'h2:       segments    =  8'b001_0010_1;
            4'h3:       segments    =  8'b000_0110_1;
            4'h4:       segments    =  8'b100_1100_1;
            4'h5:       segments    =  8'b010_0100_1;
            4'h6:       segments    =  8'b010_0000_1;
            4'h7:       segments    =  8'b000_1111_1;
            4'h8:       segments    =  8'b000_0000_1;
            4'h9:       segments    =  8'b000_1100_1;
            4'ha:       segments    =  8'b000_1000_1;  // hex-chars are displayed in upper case
            4'hb:       segments    =  8'b110_0000_1;
            4'hc:       segments    =  8'b111_0010_1;
            4'hd:       segments    =  8'b100_0010_1;
            4'he:       segments    =  8'b011_0000_1;
            4'hf:       segments    =  8'b011_1000_1;
            default:    segments    =  8'b111_1111_1;  // otherwise, all black
        endcase
    end

endmodule


module DisplayInterfaceDriver
(   input                       power           ,   // power input
    input                       clk             ,   // device clock
    input       [ 3 : 0 ]       curr_floor      ,   // floor data
    input       [ 3 : 0 ]       move_res_time   ,   // move remain time
    output reg  [ 7 : 0 ]       segments        ,   // 7-segment
    output reg  [ 7 : 0 ]       ansel           );  // active on LOW

    initial begin
        ansel   = 8'b1111_1110;
    end

    always @ ( posedge clk ) begin
        if ( !power ) begin
            ansel   <= 8'b1111_1110;
        end else begin
            ansel   <= { ansel[0], ansel[7:1] };
        end
    end

    // Helper block
    wire    [ 3 : 0 ]   __bcd_data  [ 3 : 0 ];
    BinaryToBCDConverter DID_FloorConv (
        .data_in        ( { 4'b0, curr_floor } )    ,
        // .data_in ( 17 ) ,
        .higher_byte    ( __bcd_data[3] )           ,
        .lower_byte     ( __bcd_data[2] )           );
    BinaryToBCDConverter DID_MoveResConv (
        .data_in        ( { 4'b0, move_res_time } ) ,
        // .data_in ( 17 ) ,
        .higher_byte    ( __bcd_data[1] )           ,
        .lower_byte     ( __bcd_data[0] )           );

    wire    [ 7 : 0 ]   __seg_data  [ 7 : 0 ];
    assign  __seg_data[7]   = 8'b111_1111_1;
    assign  __seg_data[6]   = 8'b111_1111_1;
    assign  __seg_data[1]   = 8'b111_1111_1;
    assign  __seg_data[0]   = 8'b111_1111_1;
    genvar  __plc;
    generate
        for ( __plc = 2; __plc < 6; __plc = __plc + 1 ) begin
            SevenSegDecoder __DID_Decoder (
                .data       ( __bcd_data[__plc - 2] )   ,
                .segments   ( __seg_data[__plc] )       );
        end
    endgenerate

    always @ ( * ) begin
        if ( !power ) begin
            segments    <= 8'b111_1111_1;    // all black
        end else begin
            case ( ansel )
                8'b1111_1110: begin
                    segments    = __seg_data[0];
                end
                8'b1111_1101: begin
                    segments    = __seg_data[1];
                end
                8'b1111_1011: begin
                    segments    = __seg_data[2];
                end
                8'b1111_0111: begin
                    segments    = __seg_data[3];
                end
                8'b1110_1111: begin
                    segments    = __seg_data[4];
                end
                8'b1101_1111: begin
                    segments    = __seg_data[5];
                end
                8'b1011_1111: begin
                    segments    = __seg_data[6];
                end
                8'b0111_1111: begin
                    segments    = __seg_data[7];
                end
                default: begin
                    segments    = 8'b111_1111_1;
                end
            endcase
       end
    end

endmodule
























