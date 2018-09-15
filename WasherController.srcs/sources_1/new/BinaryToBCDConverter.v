`timescale 1ns / 1ps


module BinaryToBCDConverter
(   input       [ 7 : 0 ]   data_in     ,   // input binary value
    output reg  [ 3 : 0 ]   higher_byte ,   // converted value (higher 4-bit)
    output reg  [ 3 : 0 ]   lower_byte  );  // converted value (lower 4-bit)

    reg [ 15 : 0 ]   __temp;    // { tens[3:0], ones[3:0], data_in[7:0] }
    
    // TODO: optimize the `for` loop!!!
    integer i;  // loop var
    always @ ( * ) begin
        // convert step
        __temp = { 8'b0, data_in };
        // NOTE: sequential
        for ( i = 8; i != 0; i = i - 1 ) begin
            // HACK: the hundreds place is discarded
            // complement step
            if ( __temp[15:12] >= 3'b101 ) begin        // HACK: 3'b101 == 10 >> 1
                __temp[15:12] = __temp[15:12] + 2'b11;  // HACK: 2'b11 == 6 >> 1
            end
            if ( __temp[11:8] >= 3'b101 ) begin
                __temp[11:8] = __temp[11:8] + 2'b11;
            end
            // shifting step
            __temp = __temp << 1;
        end
        // assign step
        { higher_byte, lower_byte } = __temp[15:8];
    end

endmodule













