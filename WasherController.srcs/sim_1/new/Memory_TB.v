`timescale 1ns / 1ps


module Memory_TB
#(  parameter   addr_width  =   4   ,
    parameter   data_width  =   8   )
();

    reg     [ addr_width - 1 : 0 ]  write_addr;
    reg     [ data_width - 1 : 0 ]  write_data;
    reg                             write_enable;
    reg     [ addr_width - 1 : 0 ]  read_addr;
    wire    [ data_width - 1 : 0 ]  read_data;

    Memory #(addr_width, data_width) Memory_Test (
        .write_addr     ( write_addr )      ,
        .write_data     ( write_data )      ,
        .write_enable   ( write_enable )    ,
        .read_addr      ( read_addr )       ,
        .read_data      ( read_data )       );

    initial begin
        #0      write_enable    =   1;  // enable write channel
        #0      write_addr      =   0;  // mem[0] <= 42
        #0      write_data      =   42;
        #50     write_addr      =   1;  // mem[1] <= 123
        #50     write_data      =   123;
        #50     read_addr       =   1;  // trying to read mem[1]
                                        // expecting `7B`, i.e. `123`
        #50     write_enable    =   0;  // close write channel
        #50     write_addr      =   0;  // void attempt to clear mem[0] bits
        #50     write_data      =   0;
        #50     read_addr       =   0;  // read from mem[0]
                                        // expecting `2A`, i.e. `42`
    end

endmodule
