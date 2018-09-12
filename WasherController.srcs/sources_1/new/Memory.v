`timescale 1ns / 1ps


module Memory
#(  parameter   addr_width  = 4 ,
    parameter   data_width  = 8 )
(   input       [ addr_width - 1 : 0 ]  write_addr      ,   // write memory cell address
    input       [ data_width - 1 : 0 ]  write_data      ,   // write data input (ignored when `rw` is `1`)
    input                               write_enable    ,   // read / write flag (0 - read; 1 - write)
    input       [ addr_width - 1 : 0 ]  read_addr       ,   // read memory cell address
    output      [ data_width - 1 : 0 ]  read_data       );  // output data (only 

    reg [ (1 << addr_width) - 1 : 0 ]   __memory    [ data_width - 1 : 0 ];

    always @ ( * ) begin    // write
        if ( write_enable ) begin
            __memory[write_addr]    <=  write_data;
        end else begin
            /* pass */
        end
    end

    assign  read_data   =   __memory[read_addr];

endmodule
