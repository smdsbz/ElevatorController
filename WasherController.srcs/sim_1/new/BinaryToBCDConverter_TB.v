`timescale 1ns / 1ps


module BinaryToBCDConverter_TB ();

    reg     [ 7 : 0 ]   data;
    wire    [ 3 : 0 ]   msb;
    wire    [ 3 : 0 ]   lsb;

    initial begin
        #0      data    = 0;
        #3      data    = 27;
        #3      data    = 103;
        #3      data    = 66;
    end

    BinaryToBCDConverter B2BConv_Test (
        .data_in        ( data )    ,
        .higher_byte    ( msb )     ,
        .lower_byte     ( lsb )     );

endmodule











