// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Sep 26 15:02:00 2018
// Host        : DESKTOP-01D8GON running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/smdsbz/Projects/WasherController/WasherController.sim/sim_1/impl/timing/xsim/TopModule_Bug_TB_time_impl.v
// Design      : ElevatorEmulator
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module ClockSignal1S
   (\ansel_reg[7] ,
    clk_IBUF_BUFG);
  output \ansel_reg[7] ;
  input clk_IBUF_BUFG;

  wire \ansel_reg[7] ;
  wire clk_IBUF_BUFG;
  wire clkout;
  wire clkout_i_1_n_0;
  wire [31:0]counter;
  wire \counter[31]_i_10_n_0 ;
  wire \counter[31]_i_3_n_0 ;
  wire \counter[31]_i_4_n_0 ;
  wire \counter[31]_i_5_n_0 ;
  wire \counter[31]_i_6_n_0 ;
  wire \counter[31]_i_7_n_0 ;
  wire \counter[31]_i_8_n_0 ;
  wire \counter[31]_i_9_n_0 ;
  wire [0:0]counter_0;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_4 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[28]_i_1_n_0 ;
  wire \counter_reg[28]_i_1_n_4 ;
  wire \counter_reg[28]_i_1_n_5 ;
  wire \counter_reg[28]_i_1_n_6 ;
  wire \counter_reg[28]_i_1_n_7 ;
  wire \counter_reg[31]_i_2_n_5 ;
  wire \counter_reg[31]_i_2_n_6 ;
  wire \counter_reg[31]_i_2_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [2:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[31]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFE0001)) 
    clkout_i_1
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(\ansel_reg[7] ),
        .O(clkout_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkout_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clkout_i_1_n_0),
        .Q(\ansel_reg[7] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__1 
       (.I0(counter[0]),
        .O(counter_0));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[31]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .O(clkout));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_10 
       (.I0(counter[21]),
        .I1(counter[20]),
        .I2(counter[23]),
        .I3(counter[22]),
        .O(\counter[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \counter[31]_i_3 
       (.I0(counter[10]),
        .I1(counter[11]),
        .I2(counter[8]),
        .I3(counter[9]),
        .I4(\counter[31]_i_7_n_0 ),
        .O(\counter[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \counter[31]_i_4 
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_8_n_0 ),
        .O(\counter[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_5 
       (.I0(counter[26]),
        .I1(counter[27]),
        .I2(counter[24]),
        .I3(counter[25]),
        .I4(\counter[31]_i_9_n_0 ),
        .O(\counter[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_6 
       (.I0(counter[18]),
        .I1(counter[19]),
        .I2(counter[16]),
        .I3(counter[17]),
        .I4(\counter[31]_i_10_n_0 ),
        .O(\counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \counter[31]_i_7 
       (.I0(counter[13]),
        .I1(counter[12]),
        .I2(counter[15]),
        .I3(counter[14]),
        .O(\counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[31]_i_8 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[6]),
        .I3(counter[7]),
        .O(\counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_9 
       (.I0(counter[29]),
        .I1(counter[28]),
        .I2(counter[31]),
        .I3(counter[30]),
        .O(\counter[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_0),
        .Q(counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter[10]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter[11]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter[12]),
        .R(clkout));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter[13]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter[14]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter[15]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter[16]),
        .R(clkout));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter[17]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter[18]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter[19]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter[1]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter[20]),
        .R(clkout));
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\NLW_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S(counter[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter[21]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter[22]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter[23]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_4 ),
        .Q(counter[24]),
        .R(clkout));
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1_n_4 ,\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S(counter[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_7 ),
        .Q(counter[25]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_6 ),
        .Q(counter[26]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_5 ),
        .Q(counter[27]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_4 ),
        .Q(counter[28]),
        .R(clkout));
  CARRY4 \counter_reg[28]_i_1 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CO({\counter_reg[28]_i_1_n_0 ,\NLW_counter_reg[28]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[28]_i_1_n_4 ,\counter_reg[28]_i_1_n_5 ,\counter_reg[28]_i_1_n_6 ,\counter_reg[28]_i_1_n_7 }),
        .S(counter[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[31]_i_2_n_7 ),
        .Q(counter[29]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter[2]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[31]_i_2_n_6 ),
        .Q(counter[30]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[31]_i_2_n_5 ),
        .Q(counter[31]),
        .R(clkout));
  CARRY4 \counter_reg[31]_i_2 
       (.CI(\counter_reg[28]_i_1_n_0 ),
        .CO(\NLW_counter_reg[31]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[31]_i_2_O_UNCONNECTED [3],\counter_reg[31]_i_2_n_5 ,\counter_reg[31]_i_2_n_6 ,\counter_reg[31]_i_2_n_7 }),
        .S({1'b0,counter[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter[3]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter[4]),
        .R(clkout));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter[5]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter[6]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter[7]),
        .R(clkout));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter[8]),
        .R(clkout));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter[9]),
        .R(clkout));
endmodule

module DelaySignalNS
   (D,
    \seg[6] ,
    E,
    \seg[5] ,
    moving_reg,
    clk_IBUF_BUFG,
    \position_reg[0] ,
    \ansel_reg[5] ,
    \current_state_reg[1] ,
    Q,
    moving_reg_0,
    \position_reg[2] ,
    \position_reg[3] ,
    \position_reg[2]_0 ,
    \ansel_reg[6] ,
    \position_reg[0]_0 ,
    \ansel_reg[5]_0 ,
    \ansel_reg[2] ,
    \current_state_reg[1]_0 ,
    \position_reg[0]_1 ,
    \position_reg[3]_0 ,
    \position_reg[1] ,
    \ansel_reg[5]_1 ,
    \ansel_reg[5]_2 ,
    \ansel_reg[4] ,
    \sw_IBUF[2] ,
    \ansel_reg[2]_0 ,
    \ansel_reg[7] ,
    moving_reg_1,
    \position_reg[2]_1 ,
    \position_reg[3]_1 ,
    \position_reg[3]_2 );
  output [5:0]D;
  output \seg[6] ;
  output [0:0]E;
  output \seg[5] ;
  output moving_reg;
  input clk_IBUF_BUFG;
  input \position_reg[0] ;
  input \ansel_reg[5] ;
  input \current_state_reg[1] ;
  input [4:0]Q;
  input moving_reg_0;
  input \position_reg[2] ;
  input \position_reg[3] ;
  input \position_reg[2]_0 ;
  input \ansel_reg[6] ;
  input [0:0]\position_reg[0]_0 ;
  input \ansel_reg[5]_0 ;
  input \ansel_reg[2] ;
  input \current_state_reg[1]_0 ;
  input \position_reg[0]_1 ;
  input \position_reg[3]_0 ;
  input \position_reg[1] ;
  input \ansel_reg[5]_1 ;
  input \ansel_reg[5]_2 ;
  input \ansel_reg[4] ;
  input \sw_IBUF[2] ;
  input \ansel_reg[2]_0 ;
  input \ansel_reg[7] ;
  input moving_reg_1;
  input \position_reg[2]_1 ;
  input \position_reg[3]_1 ;
  input \position_reg[3]_2 ;

  wire [5:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [31:0]__divider_counter;
  wire __divider_counter0_carry__0_n_0;
  wire __divider_counter0_carry__1_n_0;
  wire __divider_counter0_carry__2_n_0;
  wire __divider_counter0_carry__3_n_0;
  wire __divider_counter0_carry__4_n_0;
  wire __divider_counter0_carry__5_n_0;
  wire __divider_counter0_carry_n_0;
  wire \__divider_counter[31]_i_3_n_0 ;
  wire \__divider_counter[31]_i_4_n_0 ;
  wire \__divider_counter[31]_i_5_n_0 ;
  wire \__divider_counter[31]_i_6_n_0 ;
  wire \__divider_counter[31]_i_7_n_0 ;
  wire \__divider_counter[31]_i_8_n_0 ;
  wire \__divider_counter[31]_i_9_n_0 ;
  wire \ansel_reg[2] ;
  wire \ansel_reg[2]_0 ;
  wire \ansel_reg[4] ;
  wire \ansel_reg[5] ;
  wire \ansel_reg[5]_0 ;
  wire \ansel_reg[5]_1 ;
  wire \ansel_reg[5]_2 ;
  wire \ansel_reg[6] ;
  wire \ansel_reg[7] ;
  wire clear;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter[3]_i_4_n_0 ;
  wire \counter[3]_i_5_n_0 ;
  wire \counter[3]_i_6_n_0 ;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire [31:1]data0;
  wire delay_timeout;
  wire [3:0]move_res_time;
  wire moving_i_2_n_0;
  wire moving_reg;
  wire moving_reg_0;
  wire moving_reg_1;
  wire [3:1]p_0_in;
  wire [31:0]p_1_in;
  wire \position_reg[0] ;
  wire [0:0]\position_reg[0]_0 ;
  wire \position_reg[0]_1 ;
  wire \position_reg[1] ;
  wire \position_reg[2] ;
  wire \position_reg[2]_0 ;
  wire \position_reg[2]_1 ;
  wire \position_reg[3] ;
  wire \position_reg[3]_0 ;
  wire \position_reg[3]_1 ;
  wire \position_reg[3]_2 ;
  wire \seg[5] ;
  wire \seg[6] ;
  wire \segments_reg[2]_i_4_n_0 ;
  wire \segments_reg[3]_i_5_n_0 ;
  wire \segments_reg[4]_i_4_n_0 ;
  wire \segments_reg[5]_i_3_n_0 ;
  wire \segments_reg[6]_i_6_n_0 ;
  wire \segments_reg[7]_i_6_n_0 ;
  wire \segments_reg[7]_i_7_n_0 ;
  wire \sw_IBUF[2] ;
  wire timeout_i_1_n_0;
  wire [2:0]NLW___divider_counter0_carry_CO_UNCONNECTED;
  wire [2:0]NLW___divider_counter0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW___divider_counter0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW___divider_counter0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW___divider_counter0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW___divider_counter0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW___divider_counter0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW___divider_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW___divider_counter0_carry__6_O_UNCONNECTED;

  CARRY4 __divider_counter0_carry
       (.CI(1'b0),
        .CO({__divider_counter0_carry_n_0,NLW___divider_counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(__divider_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(__divider_counter[4:1]));
  CARRY4 __divider_counter0_carry__0
       (.CI(__divider_counter0_carry_n_0),
        .CO({__divider_counter0_carry__0_n_0,NLW___divider_counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(__divider_counter[8:5]));
  CARRY4 __divider_counter0_carry__1
       (.CI(__divider_counter0_carry__0_n_0),
        .CO({__divider_counter0_carry__1_n_0,NLW___divider_counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(__divider_counter[12:9]));
  CARRY4 __divider_counter0_carry__2
       (.CI(__divider_counter0_carry__1_n_0),
        .CO({__divider_counter0_carry__2_n_0,NLW___divider_counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(__divider_counter[16:13]));
  CARRY4 __divider_counter0_carry__3
       (.CI(__divider_counter0_carry__2_n_0),
        .CO({__divider_counter0_carry__3_n_0,NLW___divider_counter0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(__divider_counter[20:17]));
  CARRY4 __divider_counter0_carry__4
       (.CI(__divider_counter0_carry__3_n_0),
        .CO({__divider_counter0_carry__4_n_0,NLW___divider_counter0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(__divider_counter[24:21]));
  CARRY4 __divider_counter0_carry__5
       (.CI(__divider_counter0_carry__4_n_0),
        .CO({__divider_counter0_carry__5_n_0,NLW___divider_counter0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(__divider_counter[28:25]));
  CARRY4 __divider_counter0_carry__6
       (.CI(__divider_counter0_carry__5_n_0),
        .CO(NLW___divider_counter0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW___divider_counter0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,__divider_counter[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    \__divider_counter[0]_i_1 
       (.I0(__divider_counter[0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[10]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[10]),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[11]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[11]),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'hFEFFAAAA)) 
    \__divider_counter[12]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[12]),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'hFEFFAAAA)) 
    \__divider_counter[13]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[13]),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'hFEFFAAAA)) 
    \__divider_counter[14]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[14]),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'hFEFFAAAA)) 
    \__divider_counter[15]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[15]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[16]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[16]),
        .O(p_1_in[16]));
  LUT5 #(
    .INIT(32'hFEFFAAAA)) 
    \__divider_counter[17]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[17]),
        .O(p_1_in[17]));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[18]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[18]),
        .O(p_1_in[18]));
  LUT5 #(
    .INIT(32'hFEFFAAAA)) 
    \__divider_counter[19]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[19]),
        .O(p_1_in[19]));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[1]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[1]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hFEFFAAAA)) 
    \__divider_counter[20]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[20]),
        .O(p_1_in[20]));
  LUT5 #(
    .INIT(32'hFEFFAAAA)) 
    \__divider_counter[21]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[21]),
        .O(p_1_in[21]));
  LUT5 #(
    .INIT(32'hFEFFAAAA)) 
    \__divider_counter[22]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[22]),
        .O(p_1_in[22]));
  LUT5 #(
    .INIT(32'hFEFFAAAA)) 
    \__divider_counter[23]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[23]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[24]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[24]),
        .O(p_1_in[24]));
  LUT5 #(
    .INIT(32'hFEFFAAAA)) 
    \__divider_counter[25]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[25]),
        .O(p_1_in[25]));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[26]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[26]),
        .O(p_1_in[26]));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[27]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[27]),
        .O(p_1_in[27]));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[28]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[28]),
        .O(p_1_in[28]));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[29]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[29]),
        .O(p_1_in[29]));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[2]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[2]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[30]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[30]),
        .O(p_1_in[30]));
  LUT1 #(
    .INIT(2'h1)) 
    \__divider_counter[31]_i_1 
       (.I0(moving_reg_0),
        .O(clear));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[31]_i_2 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[31]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \__divider_counter[31]_i_3 
       (.I0(\__divider_counter[31]_i_5_n_0 ),
        .I1(\__divider_counter[31]_i_6_n_0 ),
        .I2(__divider_counter[26]),
        .I3(__divider_counter[19]),
        .I4(__divider_counter[7]),
        .I5(\__divider_counter[31]_i_7_n_0 ),
        .O(\__divider_counter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \__divider_counter[31]_i_4 
       (.I0(\__divider_counter[31]_i_6_n_0 ),
        .I1(\__divider_counter[31]_i_8_n_0 ),
        .I2(__divider_counter[26]),
        .I3(__divider_counter[18]),
        .I4(__divider_counter[17]),
        .I5(__divider_counter[12]),
        .O(\__divider_counter[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \__divider_counter[31]_i_5 
       (.I0(\counter[3]_i_3_n_0 ),
        .I1(\__divider_counter[31]_i_9_n_0 ),
        .I2(\counter[3]_i_4_n_0 ),
        .O(\__divider_counter[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \__divider_counter[31]_i_6 
       (.I0(__divider_counter[4]),
        .I1(__divider_counter[1]),
        .I2(__divider_counter[3]),
        .I3(__divider_counter[2]),
        .I4(__divider_counter[22]),
        .I5(__divider_counter[21]),
        .O(\__divider_counter[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \__divider_counter[31]_i_7 
       (.I0(__divider_counter[12]),
        .I1(__divider_counter[16]),
        .I2(__divider_counter[18]),
        .I3(__divider_counter[25]),
        .I4(__divider_counter[24]),
        .I5(__divider_counter[17]),
        .O(\__divider_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \__divider_counter[31]_i_8 
       (.I0(__divider_counter[24]),
        .I1(__divider_counter[7]),
        .I2(__divider_counter[16]),
        .I3(__divider_counter[19]),
        .O(\__divider_counter[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \__divider_counter[31]_i_9 
       (.I0(__divider_counter[10]),
        .I1(__divider_counter[9]),
        .I2(__divider_counter[8]),
        .I3(__divider_counter[11]),
        .I4(__divider_counter[20]),
        .I5(__divider_counter[23]),
        .O(\__divider_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[3]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[4]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[4]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[5]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[5]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[6]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[6]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hFEFFAAAA)) 
    \__divider_counter[7]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[7]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[8]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[8]),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'h54550000)) 
    \__divider_counter[9]_i_1 
       (.I0(\__divider_counter[31]_i_3_n_0 ),
        .I1(__divider_counter[25]),
        .I2(\__divider_counter[31]_i_4_n_0 ),
        .I3(\__divider_counter[31]_i_5_n_0 ),
        .I4(data0[9]),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(__divider_counter[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(__divider_counter[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(__divider_counter[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(__divider_counter[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(__divider_counter[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(__divider_counter[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(__divider_counter[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(__divider_counter[16]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(__divider_counter[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(__divider_counter[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(__divider_counter[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(__divider_counter[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[20]),
        .Q(__divider_counter[20]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[21]),
        .Q(__divider_counter[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[22]),
        .Q(__divider_counter[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[23]),
        .Q(__divider_counter[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[24]),
        .Q(__divider_counter[24]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[25]),
        .Q(__divider_counter[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[26]),
        .Q(__divider_counter[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[27]),
        .Q(__divider_counter[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[28]),
        .Q(__divider_counter[28]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[29]),
        .Q(__divider_counter[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(__divider_counter[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[30]),
        .Q(__divider_counter[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[31]),
        .Q(__divider_counter[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(__divider_counter[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(__divider_counter[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(__divider_counter[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(__divider_counter[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(__divider_counter[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(__divider_counter[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(__divider_counter[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(move_res_time[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(move_res_time[1]),
        .I1(move_res_time[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(move_res_time[2]),
        .I1(move_res_time[0]),
        .I2(move_res_time[1]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[3]_i_1 
       (.I0(\counter[3]_i_3_n_0 ),
        .I1(\counter[3]_i_4_n_0 ),
        .I2(\counter[3]_i_5_n_0 ),
        .I3(\__divider_counter[31]_i_4_n_0 ),
        .O(\counter[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_2 
       (.I0(move_res_time[0]),
        .I1(move_res_time[1]),
        .I2(move_res_time[2]),
        .I3(move_res_time[3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \counter[3]_i_3 
       (.I0(__divider_counter[29]),
        .I1(__divider_counter[31]),
        .I2(__divider_counter[27]),
        .I3(__divider_counter[30]),
        .I4(__divider_counter[28]),
        .O(\counter[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[3]_i_4 
       (.I0(__divider_counter[5]),
        .I1(__divider_counter[14]),
        .I2(__divider_counter[0]),
        .I3(__divider_counter[13]),
        .I4(__divider_counter[15]),
        .I5(__divider_counter[6]),
        .O(\counter[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[3]_i_5 
       (.I0(__divider_counter[8]),
        .I1(__divider_counter[11]),
        .I2(__divider_counter[25]),
        .I3(\counter[3]_i_6_n_0 ),
        .I4(__divider_counter[9]),
        .I5(__divider_counter[10]),
        .O(\counter[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \counter[3]_i_6 
       (.I0(__divider_counter[20]),
        .I1(__divider_counter[23]),
        .O(\counter[3]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[3]_i_1_n_0 ),
        .D(\counter[0]_i_1_n_0 ),
        .Q(move_res_time[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[3]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(move_res_time[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[3]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(move_res_time[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[3]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(move_res_time[3]),
        .R(clear));
  LUT6 #(
    .INIT(64'hFFFFFF0100000000)) 
    moving_i_1
       (.I0(moving_reg_1),
        .I1(\position_reg[2]_1 ),
        .I2(\position_reg[3]_1 ),
        .I3(\position_reg[3]_2 ),
        .I4(moving_i_2_n_0),
        .I5(\sw_IBUF[2] ),
        .O(moving_reg));
  LUT2 #(
    .INIT(4'h2)) 
    moving_i_2
       (.I0(moving_reg_0),
        .I1(delay_timeout),
        .O(moving_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    \position[3]_i_2 
       (.I0(\sw_IBUF[2] ),
        .I1(delay_timeout),
        .I2(moving_reg_0),
        .O(E));
  LUT6 #(
    .INIT(64'h0880000808000008)) 
    \segments_reg[1]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(move_res_time[2]),
        .I3(move_res_time[3]),
        .I4(move_res_time[1]),
        .I5(move_res_time[0]),
        .O(\seg[6] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45555555)) 
    \segments_reg[2]_i_1 
       (.I0(\position_reg[2] ),
        .I1(\position_reg[3] ),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\segments_reg[2]_i_4_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAEEAEAEEAEAAAAEA)) 
    \segments_reg[2]_i_4 
       (.I0(\ansel_reg[2] ),
        .I1(\ansel_reg[4] ),
        .I2(move_res_time[1]),
        .I3(move_res_time[2]),
        .I4(move_res_time[3]),
        .I5(move_res_time[0]),
        .O(\segments_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF700)) 
    \segments_reg[3]_i_1 
       (.I0(\position_reg[2]_0 ),
        .I1(\ansel_reg[6] ),
        .I2(\position_reg[0]_0 ),
        .I3(\ansel_reg[5]_0 ),
        .I4(\ansel_reg[2] ),
        .I5(\segments_reg[3]_i_5_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFF820000)) 
    \segments_reg[3]_i_5 
       (.I0(move_res_time[2]),
        .I1(move_res_time[3]),
        .I2(move_res_time[1]),
        .I3(move_res_time[0]),
        .I4(\ansel_reg[4] ),
        .O(\segments_reg[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00E0)) 
    \segments_reg[3]_i_8 
       (.I0(move_res_time[1]),
        .I1(move_res_time[2]),
        .I2(move_res_time[3]),
        .I3(Q[0]),
        .O(\seg[5] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4445)) 
    \segments_reg[4]_i_1 
       (.I0(\position_reg[0] ),
        .I1(\ansel_reg[5] ),
        .I2(\current_state_reg[1] ),
        .I3(Q[4]),
        .I4(\segments_reg[4]_i_4_n_0 ),
        .I5(\segments_reg[7]_i_6_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0880080880000080)) 
    \segments_reg[4]_i_4 
       (.I0(\ansel_reg[4] ),
        .I1(Q[4]),
        .I2(move_res_time[2]),
        .I3(move_res_time[3]),
        .I4(move_res_time[1]),
        .I5(move_res_time[0]),
        .O(\segments_reg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF57550000)) 
    \segments_reg[5]_i_1 
       (.I0(\ansel_reg[6] ),
        .I1(\position_reg[0]_0 ),
        .I2(\position_reg[3]_0 ),
        .I3(\position_reg[1] ),
        .I4(\ansel_reg[5]_2 ),
        .I5(\segments_reg[5]_i_3_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABBAAA)) 
    \segments_reg[5]_i_3 
       (.I0(\ansel_reg[2]_0 ),
        .I1(\ansel_reg[7] ),
        .I2(move_res_time[3]),
        .I3(move_res_time[2]),
        .I4(move_res_time[1]),
        .I5(move_res_time[0]),
        .O(\segments_reg[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55D70000)) 
    \segments_reg[6]_i_1 
       (.I0(\ansel_reg[6] ),
        .I1(\position_reg[0]_0 ),
        .I2(\position_reg[3]_0 ),
        .I3(\position_reg[1] ),
        .I4(\ansel_reg[5]_1 ),
        .I5(\segments_reg[6]_i_6_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAEBAAAEAA)) 
    \segments_reg[6]_i_6 
       (.I0(\ansel_reg[2]_0 ),
        .I1(move_res_time[0]),
        .I2(move_res_time[3]),
        .I3(move_res_time[2]),
        .I4(move_res_time[1]),
        .I5(\ansel_reg[7] ),
        .O(\segments_reg[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF100)) 
    \segments_reg[7]_i_1 
       (.I0(\current_state_reg[1]_0 ),
        .I1(Q[4]),
        .I2(\ansel_reg[5] ),
        .I3(\position_reg[0]_1 ),
        .I4(\segments_reg[7]_i_6_n_0 ),
        .I5(\segments_reg[7]_i_7_n_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hFFFF4440)) 
    \segments_reg[7]_i_6 
       (.I0(Q[0]),
        .I1(move_res_time[3]),
        .I2(move_res_time[2]),
        .I3(move_res_time[1]),
        .I4(\ansel_reg[2]_0 ),
        .O(\segments_reg[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0082000082000000)) 
    \segments_reg[7]_i_7 
       (.I0(\ansel_reg[4] ),
        .I1(move_res_time[1]),
        .I2(move_res_time[3]),
        .I3(move_res_time[2]),
        .I4(Q[4]),
        .I5(move_res_time[0]),
        .O(\segments_reg[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    timeout_i_1
       (.I0(move_res_time[3]),
        .I1(move_res_time[0]),
        .I2(move_res_time[1]),
        .I3(move_res_time[2]),
        .I4(delay_timeout),
        .O(timeout_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    timeout_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timeout_i_1_n_0),
        .Q(delay_timeout),
        .R(clear));
endmodule

(* ORIG_REF_NAME = "DelaySignalNS" *) 
module DelaySignalNS__parameterized0
   (\current_state_reg[0] ,
    \current_state_reg[1] ,
    clk_IBUF_BUFG,
    Q,
    \current_state_reg[1]_0 ,
    moving,
    btnR_IBUF,
    btnL_IBUF);
  output \current_state_reg[0] ;
  output \current_state_reg[1] ;
  input clk_IBUF_BUFG;
  input [1:0]Q;
  input \current_state_reg[1]_0 ;
  input moving;
  input btnR_IBUF;
  input btnL_IBUF;

  wire [1:0]Q;
  wire __divider_counter0_carry__0_n_0;
  wire __divider_counter0_carry__0_n_4;
  wire __divider_counter0_carry__0_n_5;
  wire __divider_counter0_carry__0_n_6;
  wire __divider_counter0_carry__0_n_7;
  wire __divider_counter0_carry__1_n_0;
  wire __divider_counter0_carry__1_n_4;
  wire __divider_counter0_carry__1_n_5;
  wire __divider_counter0_carry__1_n_6;
  wire __divider_counter0_carry__1_n_7;
  wire __divider_counter0_carry__2_n_0;
  wire __divider_counter0_carry__2_n_4;
  wire __divider_counter0_carry__2_n_5;
  wire __divider_counter0_carry__2_n_6;
  wire __divider_counter0_carry__2_n_7;
  wire __divider_counter0_carry__3_n_0;
  wire __divider_counter0_carry__3_n_4;
  wire __divider_counter0_carry__3_n_5;
  wire __divider_counter0_carry__3_n_6;
  wire __divider_counter0_carry__3_n_7;
  wire __divider_counter0_carry__4_n_0;
  wire __divider_counter0_carry__4_n_4;
  wire __divider_counter0_carry__4_n_5;
  wire __divider_counter0_carry__4_n_6;
  wire __divider_counter0_carry__4_n_7;
  wire __divider_counter0_carry__5_n_0;
  wire __divider_counter0_carry__5_n_4;
  wire __divider_counter0_carry__5_n_5;
  wire __divider_counter0_carry__5_n_6;
  wire __divider_counter0_carry__5_n_7;
  wire __divider_counter0_carry__6_n_5;
  wire __divider_counter0_carry__6_n_6;
  wire __divider_counter0_carry__6_n_7;
  wire __divider_counter0_carry_n_0;
  wire __divider_counter0_carry_n_4;
  wire __divider_counter0_carry_n_5;
  wire __divider_counter0_carry_n_6;
  wire __divider_counter0_carry_n_7;
  wire \__divider_counter[0]_i_1__0_n_0 ;
  wire \__divider_counter[10]_i_1__0_n_0 ;
  wire \__divider_counter[11]_i_1__0_n_0 ;
  wire \__divider_counter[12]_i_1__0_n_0 ;
  wire \__divider_counter[13]_i_1__0_n_0 ;
  wire \__divider_counter[14]_i_1__0_n_0 ;
  wire \__divider_counter[15]_i_1__0_n_0 ;
  wire \__divider_counter[16]_i_1__0_n_0 ;
  wire \__divider_counter[17]_i_1__0_n_0 ;
  wire \__divider_counter[18]_i_1__0_n_0 ;
  wire \__divider_counter[19]_i_1__0_n_0 ;
  wire \__divider_counter[1]_i_1__0_n_0 ;
  wire \__divider_counter[20]_i_1__0_n_0 ;
  wire \__divider_counter[21]_i_1__0_n_0 ;
  wire \__divider_counter[22]_i_1__0_n_0 ;
  wire \__divider_counter[23]_i_1__0_n_0 ;
  wire \__divider_counter[24]_i_1__0_n_0 ;
  wire \__divider_counter[25]_i_1__0_n_0 ;
  wire \__divider_counter[26]_i_1__0_n_0 ;
  wire \__divider_counter[27]_i_1__0_n_0 ;
  wire \__divider_counter[28]_i_1__0_n_0 ;
  wire \__divider_counter[29]_i_1__0_n_0 ;
  wire \__divider_counter[2]_i_1__0_n_0 ;
  wire \__divider_counter[30]_i_1__0_n_0 ;
  wire \__divider_counter[31]_i_1__0_n_0 ;
  wire \__divider_counter[31]_i_2__0_n_0 ;
  wire \__divider_counter[31]_i_3__0_n_0 ;
  wire \__divider_counter[31]_i_4__0_n_0 ;
  wire \__divider_counter[31]_i_5__0_n_0 ;
  wire \__divider_counter[31]_i_6__0_n_0 ;
  wire \__divider_counter[31]_i_7__0_n_0 ;
  wire \__divider_counter[3]_i_1__0_n_0 ;
  wire \__divider_counter[4]_i_1__0_n_0 ;
  wire \__divider_counter[5]_i_1__0_n_0 ;
  wire \__divider_counter[6]_i_1__0_n_0 ;
  wire \__divider_counter[7]_i_1__0_n_0 ;
  wire \__divider_counter[8]_i_1__0_n_0 ;
  wire \__divider_counter[9]_i_1__0_n_0 ;
  wire \__divider_counter_reg_n_0_[0] ;
  wire \__divider_counter_reg_n_0_[10] ;
  wire \__divider_counter_reg_n_0_[11] ;
  wire \__divider_counter_reg_n_0_[12] ;
  wire \__divider_counter_reg_n_0_[13] ;
  wire \__divider_counter_reg_n_0_[14] ;
  wire \__divider_counter_reg_n_0_[15] ;
  wire \__divider_counter_reg_n_0_[16] ;
  wire \__divider_counter_reg_n_0_[17] ;
  wire \__divider_counter_reg_n_0_[18] ;
  wire \__divider_counter_reg_n_0_[19] ;
  wire \__divider_counter_reg_n_0_[1] ;
  wire \__divider_counter_reg_n_0_[20] ;
  wire \__divider_counter_reg_n_0_[21] ;
  wire \__divider_counter_reg_n_0_[22] ;
  wire \__divider_counter_reg_n_0_[23] ;
  wire \__divider_counter_reg_n_0_[24] ;
  wire \__divider_counter_reg_n_0_[25] ;
  wire \__divider_counter_reg_n_0_[26] ;
  wire \__divider_counter_reg_n_0_[27] ;
  wire \__divider_counter_reg_n_0_[28] ;
  wire \__divider_counter_reg_n_0_[29] ;
  wire \__divider_counter_reg_n_0_[2] ;
  wire \__divider_counter_reg_n_0_[30] ;
  wire \__divider_counter_reg_n_0_[31] ;
  wire \__divider_counter_reg_n_0_[3] ;
  wire \__divider_counter_reg_n_0_[4] ;
  wire \__divider_counter_reg_n_0_[5] ;
  wire \__divider_counter_reg_n_0_[6] ;
  wire \__divider_counter_reg_n_0_[7] ;
  wire \__divider_counter_reg_n_0_[8] ;
  wire \__divider_counter_reg_n_0_[9] ;
  wire btnL_IBUF;
  wire btnR_IBUF;
  wire clk_IBUF_BUFG;
  wire \counter[3]_i_1__0_n_0 ;
  wire \counter[3]_i_3__0_n_0 ;
  wire \counter[3]_i_4__0_n_0 ;
  wire \counter[3]_i_5__0_n_0 ;
  wire \counter[3]_i_6__0_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \current_state[1]_i_5_n_0 ;
  wire \current_state_reg[0] ;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire delay_timeout;
  wire moving;
  wire [3:0]p_0_in__0;
  wire timeout_i_1__0_n_0;
  wire [2:0]NLW___divider_counter0_carry_CO_UNCONNECTED;
  wire [2:0]NLW___divider_counter0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW___divider_counter0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW___divider_counter0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW___divider_counter0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW___divider_counter0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW___divider_counter0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW___divider_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW___divider_counter0_carry__6_O_UNCONNECTED;

  CARRY4 __divider_counter0_carry
       (.CI(1'b0),
        .CO({__divider_counter0_carry_n_0,NLW___divider_counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\__divider_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({__divider_counter0_carry_n_4,__divider_counter0_carry_n_5,__divider_counter0_carry_n_6,__divider_counter0_carry_n_7}),
        .S({\__divider_counter_reg_n_0_[4] ,\__divider_counter_reg_n_0_[3] ,\__divider_counter_reg_n_0_[2] ,\__divider_counter_reg_n_0_[1] }));
  CARRY4 __divider_counter0_carry__0
       (.CI(__divider_counter0_carry_n_0),
        .CO({__divider_counter0_carry__0_n_0,NLW___divider_counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({__divider_counter0_carry__0_n_4,__divider_counter0_carry__0_n_5,__divider_counter0_carry__0_n_6,__divider_counter0_carry__0_n_7}),
        .S({\__divider_counter_reg_n_0_[8] ,\__divider_counter_reg_n_0_[7] ,\__divider_counter_reg_n_0_[6] ,\__divider_counter_reg_n_0_[5] }));
  CARRY4 __divider_counter0_carry__1
       (.CI(__divider_counter0_carry__0_n_0),
        .CO({__divider_counter0_carry__1_n_0,NLW___divider_counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({__divider_counter0_carry__1_n_4,__divider_counter0_carry__1_n_5,__divider_counter0_carry__1_n_6,__divider_counter0_carry__1_n_7}),
        .S({\__divider_counter_reg_n_0_[12] ,\__divider_counter_reg_n_0_[11] ,\__divider_counter_reg_n_0_[10] ,\__divider_counter_reg_n_0_[9] }));
  CARRY4 __divider_counter0_carry__2
       (.CI(__divider_counter0_carry__1_n_0),
        .CO({__divider_counter0_carry__2_n_0,NLW___divider_counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({__divider_counter0_carry__2_n_4,__divider_counter0_carry__2_n_5,__divider_counter0_carry__2_n_6,__divider_counter0_carry__2_n_7}),
        .S({\__divider_counter_reg_n_0_[16] ,\__divider_counter_reg_n_0_[15] ,\__divider_counter_reg_n_0_[14] ,\__divider_counter_reg_n_0_[13] }));
  CARRY4 __divider_counter0_carry__3
       (.CI(__divider_counter0_carry__2_n_0),
        .CO({__divider_counter0_carry__3_n_0,NLW___divider_counter0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({__divider_counter0_carry__3_n_4,__divider_counter0_carry__3_n_5,__divider_counter0_carry__3_n_6,__divider_counter0_carry__3_n_7}),
        .S({\__divider_counter_reg_n_0_[20] ,\__divider_counter_reg_n_0_[19] ,\__divider_counter_reg_n_0_[18] ,\__divider_counter_reg_n_0_[17] }));
  CARRY4 __divider_counter0_carry__4
       (.CI(__divider_counter0_carry__3_n_0),
        .CO({__divider_counter0_carry__4_n_0,NLW___divider_counter0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({__divider_counter0_carry__4_n_4,__divider_counter0_carry__4_n_5,__divider_counter0_carry__4_n_6,__divider_counter0_carry__4_n_7}),
        .S({\__divider_counter_reg_n_0_[24] ,\__divider_counter_reg_n_0_[23] ,\__divider_counter_reg_n_0_[22] ,\__divider_counter_reg_n_0_[21] }));
  CARRY4 __divider_counter0_carry__5
       (.CI(__divider_counter0_carry__4_n_0),
        .CO({__divider_counter0_carry__5_n_0,NLW___divider_counter0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({__divider_counter0_carry__5_n_4,__divider_counter0_carry__5_n_5,__divider_counter0_carry__5_n_6,__divider_counter0_carry__5_n_7}),
        .S({\__divider_counter_reg_n_0_[28] ,\__divider_counter_reg_n_0_[27] ,\__divider_counter_reg_n_0_[26] ,\__divider_counter_reg_n_0_[25] }));
  CARRY4 __divider_counter0_carry__6
       (.CI(__divider_counter0_carry__5_n_0),
        .CO(NLW___divider_counter0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW___divider_counter0_carry__6_O_UNCONNECTED[3],__divider_counter0_carry__6_n_5,__divider_counter0_carry__6_n_6,__divider_counter0_carry__6_n_7}),
        .S({1'b0,\__divider_counter_reg_n_0_[31] ,\__divider_counter_reg_n_0_[30] ,\__divider_counter_reg_n_0_[29] }));
  LUT1 #(
    .INIT(2'h1)) 
    \__divider_counter[0]_i_1__0 
       (.I0(\__divider_counter_reg_n_0_[0] ),
        .O(\__divider_counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[10]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__1_n_6),
        .O(\__divider_counter[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[11]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__1_n_5),
        .O(\__divider_counter[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    \__divider_counter[12]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__1_n_4),
        .O(\__divider_counter[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    \__divider_counter[13]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__2_n_7),
        .O(\__divider_counter[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    \__divider_counter[14]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__2_n_6),
        .O(\__divider_counter[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    \__divider_counter[15]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__2_n_5),
        .O(\__divider_counter[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[16]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__2_n_4),
        .O(\__divider_counter[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    \__divider_counter[17]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__3_n_7),
        .O(\__divider_counter[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[18]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__3_n_6),
        .O(\__divider_counter[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    \__divider_counter[19]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__3_n_5),
        .O(\__divider_counter[19]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[1]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry_n_7),
        .O(\__divider_counter[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    \__divider_counter[20]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__3_n_4),
        .O(\__divider_counter[20]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    \__divider_counter[21]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__4_n_7),
        .O(\__divider_counter[21]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    \__divider_counter[22]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__4_n_6),
        .O(\__divider_counter[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    \__divider_counter[23]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__4_n_5),
        .O(\__divider_counter[23]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[24]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__4_n_4),
        .O(\__divider_counter[24]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    \__divider_counter[25]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__5_n_7),
        .O(\__divider_counter[25]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[26]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__5_n_6),
        .O(\__divider_counter[26]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[27]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__5_n_5),
        .O(\__divider_counter[27]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[28]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__5_n_4),
        .O(\__divider_counter[28]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[29]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__6_n_7),
        .O(\__divider_counter[29]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[2]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry_n_6),
        .O(\__divider_counter[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[30]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__6_n_6),
        .O(\__divider_counter[30]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \__divider_counter[31]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\__divider_counter[31]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[31]_i_2__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__6_n_5),
        .O(\__divider_counter[31]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \__divider_counter[31]_i_3__0 
       (.I0(\__divider_counter[31]_i_5__0_n_0 ),
        .I1(\__divider_counter[31]_i_6__0_n_0 ),
        .I2(\__divider_counter_reg_n_0_[25] ),
        .I3(\__divider_counter_reg_n_0_[26] ),
        .I4(\__divider_counter_reg_n_0_[7] ),
        .O(\__divider_counter[31]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \__divider_counter[31]_i_4__0 
       (.I0(\__divider_counter_reg_n_0_[7] ),
        .I1(\__divider_counter_reg_n_0_[26] ),
        .I2(\__divider_counter_reg_n_0_[25] ),
        .I3(\__divider_counter[31]_i_7__0_n_0 ),
        .O(\__divider_counter[31]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \__divider_counter[31]_i_5__0 
       (.I0(\counter[3]_i_6__0_n_0 ),
        .I1(\counter[3]_i_3__0_n_0 ),
        .I2(\counter[3]_i_4__0_n_0 ),
        .I3(\counter[3]_i_5__0_n_0 ),
        .O(\__divider_counter[31]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \__divider_counter[31]_i_6__0 
       (.I0(\__divider_counter_reg_n_0_[19] ),
        .I1(\__divider_counter_reg_n_0_[12] ),
        .I2(\__divider_counter_reg_n_0_[24] ),
        .I3(\__divider_counter_reg_n_0_[17] ),
        .I4(\__divider_counter_reg_n_0_[16] ),
        .I5(\__divider_counter_reg_n_0_[18] ),
        .O(\__divider_counter[31]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \__divider_counter[31]_i_7__0 
       (.I0(\__divider_counter_reg_n_0_[16] ),
        .I1(\__divider_counter_reg_n_0_[24] ),
        .I2(\__divider_counter_reg_n_0_[17] ),
        .I3(\__divider_counter_reg_n_0_[19] ),
        .I4(\__divider_counter_reg_n_0_[12] ),
        .I5(\__divider_counter_reg_n_0_[18] ),
        .O(\__divider_counter[31]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[3]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry_n_5),
        .O(\__divider_counter[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[4]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry_n_4),
        .O(\__divider_counter[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[5]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__0_n_7),
        .O(\__divider_counter[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[6]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__0_n_6),
        .O(\__divider_counter[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    \__divider_counter[7]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__0_n_5),
        .O(\__divider_counter[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[8]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__0_n_4),
        .O(\__divider_counter[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4500)) 
    \__divider_counter[9]_i_1__0 
       (.I0(\__divider_counter[31]_i_3__0_n_0 ),
        .I1(\__divider_counter[31]_i_4__0_n_0 ),
        .I2(\__divider_counter[31]_i_5__0_n_0 ),
        .I3(__divider_counter0_carry__1_n_7),
        .O(\__divider_counter[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[0]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[0] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[10]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[10] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[11]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[11] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[12]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[12] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[13]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[13] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[14]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[14] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[15]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[15] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[16]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[16] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[17]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[17] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[18]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[18] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[19]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[19] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[1]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[1] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[20]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[20] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[21]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[21] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[22]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[22] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[23]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[23] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[24]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[24] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[25]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[25] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[26]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[26] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[27]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[27] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[28]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[28] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[29]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[29] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[2]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[2] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[30]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[30] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[31]_i_2__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[31] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[3]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[3] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[4]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[4] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[5]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[5] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[6]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[6] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[7]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[7] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[8]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[8] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \__divider_counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\__divider_counter[9]_i_1__0_n_0 ),
        .Q(\__divider_counter_reg_n_0_[9] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(\counter_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__0 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1__0 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .O(p_0_in__0[2]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \counter[3]_i_1__0 
       (.I0(\counter[3]_i_3__0_n_0 ),
        .I1(\counter[3]_i_4__0_n_0 ),
        .I2(\counter[3]_i_5__0_n_0 ),
        .I3(\counter[3]_i_6__0_n_0 ),
        .I4(\__divider_counter[31]_i_4__0_n_0 ),
        .O(\counter[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_2__0 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \counter[3]_i_3__0 
       (.I0(\__divider_counter_reg_n_0_[29] ),
        .I1(\__divider_counter_reg_n_0_[31] ),
        .I2(\__divider_counter_reg_n_0_[27] ),
        .I3(\__divider_counter_reg_n_0_[30] ),
        .I4(\__divider_counter_reg_n_0_[28] ),
        .O(\counter[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \counter[3]_i_4__0 
       (.I0(\__divider_counter_reg_n_0_[20] ),
        .I1(\__divider_counter_reg_n_0_[10] ),
        .I2(\__divider_counter_reg_n_0_[9] ),
        .I3(\__divider_counter_reg_n_0_[23] ),
        .I4(\__divider_counter_reg_n_0_[8] ),
        .I5(\__divider_counter_reg_n_0_[11] ),
        .O(\counter[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[3]_i_5__0 
       (.I0(\__divider_counter_reg_n_0_[4] ),
        .I1(\__divider_counter_reg_n_0_[1] ),
        .I2(\__divider_counter_reg_n_0_[3] ),
        .I3(\__divider_counter_reg_n_0_[2] ),
        .I4(\__divider_counter_reg_n_0_[22] ),
        .I5(\__divider_counter_reg_n_0_[21] ),
        .O(\counter[3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[3]_i_6__0 
       (.I0(\__divider_counter_reg_n_0_[0] ),
        .I1(\__divider_counter_reg_n_0_[6] ),
        .I2(\__divider_counter_reg_n_0_[13] ),
        .I3(\__divider_counter_reg_n_0_[14] ),
        .I4(\__divider_counter_reg_n_0_[5] ),
        .I5(\__divider_counter_reg_n_0_[15] ),
        .O(\counter[3]_i_6__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[3]_i_1__0_n_0 ),
        .D(p_0_in__0[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[3]_i_1__0_n_0 ),
        .D(p_0_in__0[1]),
        .Q(\counter_reg_n_0_[1] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[3]_i_1__0_n_0 ),
        .D(p_0_in__0[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[3]_i_1__0_n_0 ),
        .D(p_0_in__0[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2220)) 
    \current_state[0]_i_3 
       (.I0(\current_state[1]_i_5_n_0 ),
        .I1(Q[1]),
        .I2(\current_state_reg[1]_0 ),
        .I3(moving),
        .I4(Q[0]),
        .O(\current_state_reg[0] ));
  LUT5 #(
    .INIT(32'h555555DF)) 
    \current_state[1]_i_3 
       (.I0(\current_state[1]_i_5_n_0 ),
        .I1(moving),
        .I2(\current_state_reg[1]_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\current_state_reg[1] ));
  LUT5 #(
    .INIT(32'hFFFFBBBF)) 
    \current_state[1]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(delay_timeout),
        .I3(btnR_IBUF),
        .I4(btnL_IBUF),
        .O(\current_state[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    timeout_i_1__0
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(delay_timeout),
        .O(timeout_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    timeout_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(timeout_i_1__0_n_0),
        .Q(delay_timeout),
        .R(\__divider_counter[31]_i_1__0_n_0 ));
endmodule

module DisplayInterfaceDriver
   (\seg[4] ,
    Q,
    \seg[5] ,
    \seg[3] ,
    \seg[1] ,
    \seg[2] ,
    \seg[5]_0 ,
    \seg[2]_0 ,
    \seg[2]_1 ,
    \seg[0] ,
    \seg[0]_0 ,
    \position_reg[1] ,
    \position_reg[3] ,
    \ansel_reg[5]_0 ,
    \position_reg[0] ,
    \current_state_reg[1] ,
    \counter_reg[1] ,
    D,
    E,
    SR,
    clkout_reg,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7);
  output \seg[4] ;
  output [7:0]Q;
  output \seg[5] ;
  output \seg[3] ;
  output \seg[1] ;
  output \seg[2] ;
  output \seg[5]_0 ;
  output \seg[2]_0 ;
  output \seg[2]_1 ;
  output \seg[0] ;
  output [6:0]\seg[0]_0 ;
  input \position_reg[1] ;
  input [0:0]\position_reg[3] ;
  input \ansel_reg[5]_0 ;
  input \position_reg[0] ;
  input [1:0]\current_state_reg[1] ;
  input \counter_reg[1] ;
  input [5:0]D;
  input [0:0]E;
  input [0:0]SR;
  input clkout_reg;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;

  wire [5:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire \ansel_reg[0]_lopt_replica_1 ;
  wire \ansel_reg[1]_lopt_replica_1 ;
  wire \ansel_reg[2]_lopt_replica_1 ;
  wire \ansel_reg[3]_lopt_replica_1 ;
  wire \ansel_reg[4]_lopt_replica_1 ;
  wire \ansel_reg[5]_0 ;
  wire \ansel_reg[5]_lopt_replica_1 ;
  wire \ansel_reg[6]_lopt_replica_1 ;
  wire \ansel_reg[7]_lopt_replica_1 ;
  wire clkout_reg;
  wire \counter_reg[1] ;
  wire [1:0]\current_state_reg[1] ;
  wire \position_reg[0] ;
  wire \position_reg[1] ;
  wire [0:0]\position_reg[3] ;
  wire \seg[0] ;
  wire [6:0]\seg[0]_0 ;
  wire \seg[1] ;
  wire \seg[2] ;
  wire \seg[2]_0 ;
  wire \seg[2]_1 ;
  wire \seg[3] ;
  wire \seg[4] ;
  wire \seg[5] ;
  wire \seg[5]_0 ;
  wire \segments_reg[1]_i_1_n_0 ;
  wire \segments_reg[1]_i_4_n_0 ;
  wire \segments_reg[3]_i_7_n_0 ;

  assign lopt = \ansel_reg[0]_lopt_replica_1 ;
  assign lopt_1 = \ansel_reg[1]_lopt_replica_1 ;
  assign lopt_2 = \ansel_reg[2]_lopt_replica_1 ;
  assign lopt_3 = \ansel_reg[3]_lopt_replica_1 ;
  assign lopt_4 = \ansel_reg[4]_lopt_replica_1 ;
  assign lopt_5 = \ansel_reg[5]_lopt_replica_1 ;
  assign lopt_6 = \ansel_reg[6]_lopt_replica_1 ;
  assign lopt_7 = \ansel_reg[7]_lopt_replica_1 ;
  FDSE #(
    .INIT(1'b0)) 
    \ansel_reg[0] 
       (.C(clkout_reg),
        .CE(1'b1),
        .D(Q[1]),
        .Q(Q[0]),
        .S(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  FDSE #(
    .INIT(1'b0)) 
    \ansel_reg[0]_lopt_replica 
       (.C(clkout_reg),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\ansel_reg[0]_lopt_replica_1 ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ansel_reg[1] 
       (.C(clkout_reg),
        .CE(1'b1),
        .D(Q[2]),
        .Q(Q[1]),
        .S(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  FDSE #(
    .INIT(1'b1)) 
    \ansel_reg[1]_lopt_replica 
       (.C(clkout_reg),
        .CE(1'b1),
        .D(Q[2]),
        .Q(\ansel_reg[1]_lopt_replica_1 ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ansel_reg[2] 
       (.C(clkout_reg),
        .CE(1'b1),
        .D(Q[3]),
        .Q(Q[2]),
        .S(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  FDSE #(
    .INIT(1'b1)) 
    \ansel_reg[2]_lopt_replica 
       (.C(clkout_reg),
        .CE(1'b1),
        .D(Q[3]),
        .Q(\ansel_reg[2]_lopt_replica_1 ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ansel_reg[3] 
       (.C(clkout_reg),
        .CE(1'b1),
        .D(Q[4]),
        .Q(Q[3]),
        .S(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  FDSE #(
    .INIT(1'b1)) 
    \ansel_reg[3]_lopt_replica 
       (.C(clkout_reg),
        .CE(1'b1),
        .D(Q[4]),
        .Q(\ansel_reg[3]_lopt_replica_1 ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ansel_reg[4] 
       (.C(clkout_reg),
        .CE(1'b1),
        .D(Q[5]),
        .Q(Q[4]),
        .S(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  FDSE #(
    .INIT(1'b1)) 
    \ansel_reg[4]_lopt_replica 
       (.C(clkout_reg),
        .CE(1'b1),
        .D(Q[5]),
        .Q(\ansel_reg[4]_lopt_replica_1 ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ansel_reg[5] 
       (.C(clkout_reg),
        .CE(1'b1),
        .D(Q[6]),
        .Q(Q[5]),
        .S(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  FDSE #(
    .INIT(1'b1)) 
    \ansel_reg[5]_lopt_replica 
       (.C(clkout_reg),
        .CE(1'b1),
        .D(Q[6]),
        .Q(\ansel_reg[5]_lopt_replica_1 ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \ansel_reg[6] 
       (.C(clkout_reg),
        .CE(1'b1),
        .D(Q[7]),
        .Q(Q[6]),
        .S(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  FDSE #(
    .INIT(1'b1)) 
    \ansel_reg[6]_lopt_replica 
       (.C(clkout_reg),
        .CE(1'b1),
        .D(Q[7]),
        .Q(\ansel_reg[6]_lopt_replica_1 ),
        .S(SR));
  FDRE #(
    .INIT(1'b1)) 
    \ansel_reg[7] 
       (.C(clkout_reg),
        .CE(1'b1),
        .D(Q[0]),
        .Q(Q[7]),
        .R(SR));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b1)) 
    \ansel_reg[7]_lopt_replica 
       (.C(clkout_reg),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\ansel_reg[7]_lopt_replica_1 ),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \segments_reg[1] 
       (.D(\segments_reg[1]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .PRE(SR),
        .Q(\seg[0]_0 [0]));
  LUT6 #(
    .INIT(64'hFFFFEFFFEFFFFFFF)) 
    \segments_reg[1]_i_1 
       (.I0(\ansel_reg[5]_0 ),
        .I1(\position_reg[0] ),
        .I2(\segments_reg[1]_i_4_n_0 ),
        .I3(\seg[5] ),
        .I4(Q[2]),
        .I5(\seg[3] ),
        .O(\segments_reg[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \segments_reg[1]_i_4 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\segments_reg[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \segments_reg[1]_i_5 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .O(\seg[3] ));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \segments_reg[2] 
       (.D(D[0]),
        .G(E),
        .GE(1'b1),
        .PRE(SR),
        .Q(\seg[0]_0 [1]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \segments_reg[3] 
       (.D(D[1]),
        .G(E),
        .GE(1'b1),
        .PRE(SR),
        .Q(\seg[0]_0 [2]));
  LUT6 #(
    .INIT(64'h40FFFFFFFFFFFFFF)) 
    \segments_reg[3]_i_3 
       (.I0(Q[5]),
        .I1(\position_reg[1] ),
        .I2(\position_reg[3] ),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(Q[4]),
        .O(\seg[4] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBF7F7FFF)) 
    \segments_reg[3]_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\segments_reg[3]_i_7_n_0 ),
        .I4(Q[3]),
        .I5(\counter_reg[1] ),
        .O(\seg[5]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \segments_reg[3]_i_7 
       (.I0(Q[5]),
        .I1(Q[4]),
        .O(\segments_reg[3]_i_7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \segments_reg[4] 
       (.D(D[2]),
        .G(E),
        .GE(1'b1),
        .PRE(SR),
        .Q(\seg[0]_0 [3]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \segments_reg[5] 
       (.D(D[3]),
        .G(E),
        .GE(1'b1),
        .PRE(SR),
        .Q(\seg[0]_0 [4]));
  LUT6 #(
    .INIT(64'h3F3F3F3FFFFF7FFF)) 
    \segments_reg[5]_i_2 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(\current_state_reg[1] [1]),
        .I4(\current_state_reg[1] [0]),
        .I5(Q[7]),
        .O(\seg[2] ));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \segments_reg[6] 
       (.D(D[4]),
        .G(E),
        .GE(1'b1),
        .PRE(SR),
        .Q(\seg[0]_0 [5]));
  LUT3 #(
    .INIT(8'h80)) 
    \segments_reg[6]_i_2 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[5]),
        .O(\seg[5] ));
  LUT6 #(
    .INIT(64'h3F3F3F3FFFFF7FFF)) 
    \segments_reg[6]_i_5 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(\current_state_reg[1] [0]),
        .I4(\current_state_reg[1] [1]),
        .I5(Q[7]),
        .O(\seg[1] ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \segments_reg[6]_i_7 
       (.I0(Q[7]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(\seg[2]_1 ));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \segments_reg[7] 
       (.D(D[5]),
        .G(E),
        .GE(1'b1),
        .PRE(SR),
        .Q(\seg[0]_0 [6]));
  LUT4 #(
    .INIT(16'h777F)) 
    \segments_reg[7]_i_8 
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[5]),
        .O(\seg[0] ));
  LUT6 #(
    .INIT(64'h9FFF7FFF7FFF7FFF)) 
    \segments_reg[7]_i_9 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[7]),
        .I5(\segments_reg[3]_i_7_n_0 ),
        .O(\seg[2]_0 ));
endmodule

(* ECO_CHECKSUM = "8663b42" *) (* __half_sec_scale = "49999999" *) 
(* NotValidForBitStream *)
module ElevatorEmulator
   (clk,
    sw,
    btnL,
    btnR,
    btnU,
    btnC,
    btnD,
    seg,
    dp,
    an,
    led,
    RGB1_Red,
    RGB1_Green,
    RGB2_Green,
    RGB2_Blue);
  input clk;
  input [15:0]sw;
  input btnL;
  input btnR;
  input btnU;
  input btnC;
  input btnD;
  output [6:0]seg;
  output dp;
  output [7:0]an;
  output [15:0]led;
  output RGB1_Red;
  output RGB1_Green;
  output RGB2_Green;
  output RGB2_Blue;

  wire EE_DispMod_n_0;
  wire EE_DispMod_n_10;
  wire EE_DispMod_n_11;
  wire EE_DispMod_n_12;
  wire EE_DispMod_n_13;
  wire EE_DispMod_n_14;
  wire EE_DispMod_n_15;
  wire EE_DispMod_n_16;
  wire EE_DispMod_n_9;
  wire EE_FSMMod_n_10;
  wire EE_FSMMod_n_11;
  wire EE_FSMMod_n_2;
  wire EE_FSMMod_n_8;
  wire EE_FSMMod_n_9;
  wire EE_FileMod_n_0;
  wire EE_FileMod_n_1;
  wire EE_FileMod_n_12;
  wire EE_FileMod_n_19;
  wire EE_FileMod_n_2;
  wire EE_FileMod_n_20;
  wire EE_FileMod_n_27;
  wire EE_FileMod_n_28;
  wire EE_FileMod_n_29;
  wire EE_FileMod_n_3;
  wire EE_FileMod_n_30;
  wire EE_FileMod_n_31;
  wire EE_FileMod_n_32;
  wire EE_FileMod_n_33;
  wire EE_FileMod_n_34;
  wire EE_FileMod_n_35;
  wire EE_FileMod_n_36;
  wire EE_FileMod_n_37;
  wire EE_FileMod_n_4;
  wire EE_FileMod_n_54;
  wire EE_MotorSimMod_n_0;
  wire EE_MotorSimMod_n_1;
  wire EE_MotorSimMod_n_10;
  wire EE_MotorSimMod_n_11;
  wire EE_MotorSimMod_n_16;
  wire EE_MotorSimMod_n_24;
  wire EE_MotorSimMod_n_3;
  wire EE_MotorSimMod_n_4;
  wire EE_MotorSimMod_n_40;
  wire EE_MotorSimMod_n_41;
  wire EE_MotorSimMod_n_42;
  wire EE_MotorSimMod_n_43;
  wire EE_MotorSimMod_n_44;
  wire EE_MotorSimMod_n_45;
  wire EE_MotorSimMod_n_46;
  wire EE_MotorSimMod_n_47;
  wire EE_MotorSimMod_n_48;
  wire EE_MotorSimMod_n_49;
  wire EE_MotorSimMod_n_5;
  wire EE_MotorSimMod_n_6;
  wire EE_MotorSimMod_n_7;
  wire EE_MotorSimMod_n_8;
  wire EE_MotorSimMod_n_9;
  wire RGB1_Green;
  wire RGB1_Green_OBUF;
  wire RGB1_Red;
  wire RGB1_Red_OBUF;
  wire RGB2_Blue;
  wire RGB2_Blue_OBUF;
  wire RGB2_Green;
  wire RGB2_Green_OBUF;
  wire __EE_SlowerClock_n_0;
  wire [1:0]__FSM_state;
  wire [7:0]an;
  wire [7:0]an_OBUF;
  wire btnC;
  wire btnC_IBUF;
  wire btnD;
  wire btnD_IBUF;
  wire btnL;
  wire btnL_IBUF;
  wire btnR;
  wire btnR_IBUF;
  wire btnU;
  wire btnU_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]curr_floor;
  wire door_ind;
  wire [7:1]down_requests0;
  wire dp;
  wire last_move;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire moving;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in;
  wire p_16_in;
  wire p_17_in;
  wire p_18_in;
  wire p_19_in;
  wire p_20_in;
  wire p_21_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire p_9_in;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [7:0]stop_requests0;
  wire [15:0]sw;
  wire [15:1]sw_IBUF;
  wire \sw_IBUF[2] ;
  wire \sw_IBUF_BUFG[2] ;
  wire [6:0]up_requests0;
  wire [2:0]NLW_EE_DispMod_Q_UNCONNECTED;

initial begin
 $sdf_annotate("TopModule_Bug_TB_time_impl.sdf",,,,"tool_control");
end
  DisplayInterfaceDriver EE_DispMod
       (.D({EE_MotorSimMod_n_3,EE_MotorSimMod_n_4,EE_MotorSimMod_n_5,EE_MotorSimMod_n_6,EE_MotorSimMod_n_7,EE_MotorSimMod_n_8}),
        .E(\sw_IBUF_BUFG[2] ),
        .Q({an_OBUF[7:3],NLW_EE_DispMod_Q_UNCONNECTED[2:0]}),
        .SR(EE_FileMod_n_37),
        .\ansel_reg[5]_0 (EE_MotorSimMod_n_47),
        .clkout_reg(__EE_SlowerClock_n_0),
        .\counter_reg[1] (EE_MotorSimMod_n_48),
        .\current_state_reg[1] (__FSM_state),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7),
        .\position_reg[0] (EE_MotorSimMod_n_42),
        .\position_reg[1] (EE_MotorSimMod_n_43),
        .\position_reg[3] (curr_floor[3]),
        .\seg[0] (EE_DispMod_n_16),
        .\seg[0]_0 ({seg_OBUF[0],seg_OBUF[1],seg_OBUF[2],seg_OBUF[3],seg_OBUF[4],seg_OBUF[5],seg_OBUF[6]}),
        .\seg[1] (EE_DispMod_n_11),
        .\seg[2] (EE_DispMod_n_12),
        .\seg[2]_0 (EE_DispMod_n_14),
        .\seg[2]_1 (EE_DispMod_n_15),
        .\seg[3] (EE_DispMod_n_10),
        .\seg[4] (EE_DispMod_n_0),
        .\seg[5] (EE_DispMod_n_9),
        .\seg[5]_0 (EE_DispMod_n_13));
  ElevatorFSM EE_FSMMod
       (.D({EE_MotorSimMod_n_9,EE_MotorSimMod_n_10}),
        .Q(__FSM_state),
        .RGB1_Green_OBUF(RGB1_Green_OBUF),
        .RGB1_Red_OBUF(RGB1_Red_OBUF),
        .RGB2_Blue_OBUF(RGB2_Blue_OBUF),
        .RGB2_Green_OBUF(RGB2_Green_OBUF),
        .SR(EE_FileMod_n_37),
        .btnL_IBUF(btnL_IBUF),
        .btnR_IBUF(btnR_IBUF),
        .clk_IBUF(clk_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[0]_0 (EE_FSMMod_n_8),
        .\current_state_reg[1]_0 (EE_FSMMod_n_9),
        .door_ind(door_ind),
        .last_move(last_move),
        .moving(moving),
        .moving_reg(EE_FSMMod_n_11),
        .moving_reg_0(EE_MotorSimMod_n_49),
        .\position_reg[1] (EE_MotorSimMod_n_11),
        .\seg[0] (EE_FSMMod_n_10),
        .\seg[3] (EE_FSMMod_n_2));
  ElevatorFiles EE_FileMod
       (.D(stop_requests0),
        .Q(curr_floor),
        .SR(EE_FileMod_n_37),
        .clk_IBUF(clk_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[0] (EE_FileMod_n_28),
        .\current_state_reg[0]_0 (EE_FileMod_n_29),
        .\current_state_reg[0]_1 (EE_FileMod_n_31),
        .\current_state_reg[1] (EE_FileMod_n_3),
        .\down_requests_reg[7]_0 ({EE_FileMod_n_20,p_18_in,p_15_in,p_12_in,p_9_in,p_6_in,p_3_in}),
        .\down_requests_reg[7]_1 (down_requests0),
        .led_OBUF(led_OBUF),
        .\next_position_reg[3]_C (EE_FileMod_n_0),
        .\next_position_reg[3]_C_0 (EE_FileMod_n_1),
        .\next_position_reg[3]_C_1 (EE_FileMod_n_2),
        .\next_position_reg[3]_C_10 (EE_FileMod_n_54),
        .\next_position_reg[3]_C_2 (EE_FileMod_n_4),
        .\next_position_reg[3]_C_3 (EE_FileMod_n_27),
        .\next_position_reg[3]_C_4 (EE_FileMod_n_30),
        .\next_position_reg[3]_C_5 (EE_FileMod_n_32),
        .\next_position_reg[3]_C_6 (EE_FileMod_n_33),
        .\next_position_reg[3]_C_7 (EE_FileMod_n_34),
        .\next_position_reg[3]_C_8 (EE_FileMod_n_35),
        .\next_position_reg[3]_C_9 (EE_FileMod_n_36),
        .\position_reg[0] (up_requests0),
        .\position_reg[1] (EE_MotorSimMod_n_16),
        .\position_reg[1]_0 (EE_MotorSimMod_n_46),
        .\position_reg[1]_1 (EE_MotorSimMod_n_44),
        .\position_reg[1]_2 (EE_MotorSimMod_n_24),
        .\position_reg[2] (EE_MotorSimMod_n_40),
        .\position_reg[2]_0 (EE_MotorSimMod_n_1),
        .\position_reg[2]_1 (EE_MotorSimMod_n_45),
        .\position_reg[3] (EE_MotorSimMod_n_0),
        .\position_reg[3]_0 (EE_MotorSimMod_n_41),
        .\stop_requests_reg[7]_0 ({p_21_in,p_19_in,p_16_in,p_13_in,p_10_in,p_7_in,p_4_in,EE_FileMod_n_12}),
        .\sw_IBUF[2] (\sw_IBUF[2] ),
        .\up_requests_reg[6]_0 ({p_20_in,p_17_in,p_14_in,p_11_in,p_8_in,p_5_in,EE_FileMod_n_19}));
  MotorSimulator EE_MotorSimMod
       (.D({EE_MotorSimMod_n_3,EE_MotorSimMod_n_4,EE_MotorSimMod_n_5,EE_MotorSimMod_n_6,EE_MotorSimMod_n_7,EE_MotorSimMod_n_8}),
        .Q(an_OBUF[7:3]),
        .\ansel_reg[2] (EE_DispMod_n_13),
        .\ansel_reg[2]_0 (EE_DispMod_n_14),
        .\ansel_reg[4] (EE_DispMod_n_16),
        .\ansel_reg[4]_0 (EE_DispMod_n_10),
        .\ansel_reg[5] (EE_DispMod_n_0),
        .\ansel_reg[5]_0 (EE_DispMod_n_11),
        .\ansel_reg[5]_1 (EE_DispMod_n_12),
        .\ansel_reg[6] (EE_DispMod_n_9),
        .\ansel_reg[7] (EE_DispMod_n_15),
        .btnC_IBUF(btnC_IBUF),
        .btnD_IBUF(btnD_IBUF),
        .btnL_IBUF(btnL_IBUF),
        .btnU_IBUF(btnU_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[0] (EE_MotorSimMod_n_45),
        .\current_state_reg[1] ({EE_MotorSimMod_n_9,EE_MotorSimMod_n_10}),
        .\current_state_reg[1]_0 (EE_FSMMod_n_2),
        .\current_state_reg[1]_1 (__FSM_state),
        .\current_state_reg[1]_2 (EE_FSMMod_n_10),
        .\current_state_reg[1]_3 (EE_FSMMod_n_8),
        .door_ind(door_ind),
        .\down_requests_reg[1] (EE_FileMod_n_2),
        .\down_requests_reg[1]_0 (EE_FileMod_n_36),
        .\down_requests_reg[3] (EE_MotorSimMod_n_16),
        .\down_requests_reg[3]_0 (EE_FileMod_n_54),
        .\down_requests_reg[3]_1 (EE_FileMod_n_3),
        .\down_requests_reg[4] (EE_FileMod_n_35),
        .\down_requests_reg[4]_0 (EE_FileMod_n_30),
        .\down_requests_reg[5] (EE_FileMod_n_31),
        .\down_requests_reg[6] (EE_MotorSimMod_n_24),
        .\down_requests_reg[6]_0 (EE_FileMod_n_29),
        .\down_requests_reg[6]_1 (EE_FileMod_n_32),
        .\down_requests_reg[7] (down_requests0),
        .\down_requests_reg[7]_0 ({EE_FileMod_n_20,p_18_in,p_15_in,p_12_in,p_9_in,p_6_in,p_3_in}),
        .last_move(last_move),
        .moving(moving),
        .moving_reg_0(EE_FSMMod_n_11),
        .moving_reg_1(EE_FSMMod_n_9),
        .\next_position_reg[1]_C_0 (EE_MotorSimMod_n_46),
        .\next_position_reg[2]_C_0 (EE_MotorSimMod_n_1),
        .\next_position_reg[3]_C_0 (EE_MotorSimMod_n_11),
        .\next_position_reg[3]_C_1 (EE_MotorSimMod_n_40),
        .\next_position_reg[3]_C_2 (EE_MotorSimMod_n_41),
        .\next_position_reg[3]_C_3 (EE_MotorSimMod_n_44),
        .\next_position_reg[3]_C_4 (EE_MotorSimMod_n_49),
        .\next_position_reg[3]_P_0 (EE_MotorSimMod_n_0),
        .\position_reg[1]_0 (curr_floor),
        .\position_reg[2]_0 (EE_FileMod_n_4),
        .\position_reg[3]_0 (EE_FileMod_n_0),
        .\position_reg[3]_1 (EE_FileMod_n_27),
        .\seg[4] (EE_MotorSimMod_n_43),
        .\seg[5] (EE_MotorSimMod_n_48),
        .\seg[6] (EE_MotorSimMod_n_42),
        .\seg[6]_0 (EE_MotorSimMod_n_47),
        .\stop_requests_reg[0] (EE_FileMod_n_1),
        .\stop_requests_reg[0]_0 (EE_FileMod_n_34),
        .\stop_requests_reg[3] (EE_FileMod_n_28),
        .\stop_requests_reg[4] (EE_FileMod_n_33),
        .\stop_requests_reg[7] (stop_requests0),
        .\stop_requests_reg[7]_0 ({p_21_in,p_19_in,p_16_in,p_13_in,p_10_in,p_7_in,p_4_in,EE_FileMod_n_12}),
        .sw_IBUF({sw_IBUF[15],sw_IBUF[13],sw_IBUF[11],sw_IBUF[9],sw_IBUF[7],sw_IBUF[5],sw_IBUF[3],sw_IBUF[1]}),
        .sw_IBUF_2_sp_1(\sw_IBUF[2] ),
        .\up_requests_reg[6] (up_requests0),
        .\up_requests_reg[6]_0 ({p_20_in,p_17_in,p_14_in,p_11_in,p_8_in,p_5_in,EE_FileMod_n_19}));
  OBUF RGB1_Green_OBUF_inst
       (.I(RGB1_Green_OBUF),
        .O(RGB1_Green));
  OBUF RGB1_Red_OBUF_inst
       (.I(RGB1_Red_OBUF),
        .O(RGB1_Red));
  OBUF RGB2_Blue_OBUF_inst
       (.I(RGB2_Blue_OBUF),
        .O(RGB2_Blue));
  OBUF RGB2_Green_OBUF_inst
       (.I(RGB2_Green_OBUF),
        .O(RGB2_Green));
  ClockSignal1S __EE_SlowerClock
       (.\ansel_reg[7] (__EE_SlowerClock_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  OBUF \an_OBUF[0]_inst 
       (.I(lopt),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(lopt_1),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(lopt_2),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(lopt_3),
        .O(an[3]));
  OBUF \an_OBUF[4]_inst 
       (.I(lopt_4),
        .O(an[4]));
  OBUF \an_OBUF[5]_inst 
       (.I(lopt_5),
        .O(an[5]));
  OBUF \an_OBUF[6]_inst 
       (.I(lopt_6),
        .O(an[6]));
  OBUF \an_OBUF[7]_inst 
       (.I(lopt_7),
        .O(an[7]));
  IBUF btnC_IBUF_inst
       (.I(btnC),
        .O(btnC_IBUF));
  IBUF btnD_IBUF_inst
       (.I(btnD),
        .O(btnD_IBUF));
  IBUF btnL_IBUF_inst
       (.I(btnL),
        .O(btnL_IBUF));
  IBUF btnR_IBUF_inst
       (.I(btnR),
        .O(btnR_IBUF));
  IBUF btnU_IBUF_inst
       (.I(btnU),
        .O(btnU_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF dp_OBUF_inst
       (.I(1'b1),
        .O(dp));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  IBUF \sw_IBUF[11]_inst 
       (.I(sw[11]),
        .O(sw_IBUF[11]));
  IBUF \sw_IBUF[13]_inst 
       (.I(sw[13]),
        .O(sw_IBUF[13]));
  IBUF \sw_IBUF[15]_inst 
       (.I(sw[15]),
        .O(sw_IBUF[15]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(\sw_IBUF[2] ));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(sw_IBUF[5]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(sw_IBUF[7]));
  IBUF \sw_IBUF[9]_inst 
       (.I(sw[9]),
        .O(sw_IBUF[9]));
  BUFG \sw_IBUF_BUFG[2]_inst 
       (.I(\sw_IBUF[2] ),
        .O(\sw_IBUF_BUFG[2] ));
endmodule

module ElevatorFSM
   (door_ind,
    last_move,
    \seg[3] ,
    Q,
    RGB1_Red_OBUF,
    RGB1_Green_OBUF,
    RGB2_Blue_OBUF,
    \current_state_reg[0]_0 ,
    \current_state_reg[1]_0 ,
    \seg[0] ,
    moving_reg,
    RGB2_Green_OBUF,
    \position_reg[1] ,
    moving_reg_0,
    clk_IBUF_BUFG,
    clk_IBUF,
    moving,
    btnR_IBUF,
    btnL_IBUF,
    SR,
    D);
  output door_ind;
  output last_move;
  output \seg[3] ;
  output [1:0]Q;
  output RGB1_Red_OBUF;
  output RGB1_Green_OBUF;
  output RGB2_Blue_OBUF;
  output \current_state_reg[0]_0 ;
  output \current_state_reg[1]_0 ;
  output \seg[0] ;
  output moving_reg;
  output RGB2_Green_OBUF;
  input \position_reg[1] ;
  input moving_reg_0;
  input clk_IBUF_BUFG;
  input clk_IBUF;
  input moving;
  input btnR_IBUF;
  input btnL_IBUF;
  input [0:0]SR;
  input [1:0]D;

  wire [1:0]D;
  wire [1:0]Q;
  wire RGB1_Green_OBUF;
  wire RGB1_Red_OBUF;
  wire RGB2_Blue_OBUF;
  wire RGB2_Green_OBUF;
  wire [0:0]SR;
  wire btnL_IBUF;
  wire btnR_IBUF;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire \current_state_reg[0]_0 ;
  wire \current_state_reg[1]_0 ;
  wire door_ctl_reg_i_1_n_0;
  wire door_ctl_reg_i_2_n_0;
  wire door_ind;
  wire last_move;
  wire moving;
  wire moving_reg;
  wire moving_reg_0;
  wire \position_reg[1] ;
  wire \seg[0] ;
  wire \seg[3] ;

  DelaySignalNS__parameterized0 FSM_DelayMod
       (.Q(Q),
        .btnL_IBUF(btnL_IBUF),
        .btnR_IBUF(btnR_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[0] (\current_state_reg[0]_0 ),
        .\current_state_reg[1] (\current_state_reg[1]_0 ),
        .\current_state_reg[1]_0 (door_ind),
        .moving(moving));
  LUT2 #(
    .INIT(4'h8)) 
    RGB1_Green_OBUF_inst_i_1
       (.I0(door_ind),
        .I1(clk_IBUF),
        .O(RGB1_Green_OBUF));
  LUT2 #(
    .INIT(4'h2)) 
    RGB1_Red_OBUF_inst_i_1
       (.I0(clk_IBUF),
        .I1(door_ind),
        .O(RGB1_Red_OBUF));
  LUT3 #(
    .INIT(8'h80)) 
    RGB2_Blue_OBUF_inst_i_1
       (.I0(last_move),
        .I1(clk_IBUF),
        .I2(moving),
        .O(RGB2_Blue_OBUF));
  LUT3 #(
    .INIT(8'h40)) 
    RGB2_Green_OBUF_inst_i_1
       (.I0(last_move),
        .I1(clk_IBUF),
        .I2(moving),
        .O(RGB2_Green_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    door_ctl_reg
       (.CLR(1'b0),
        .D(door_ctl_reg_i_1_n_0),
        .G(door_ctl_reg_i_2_n_0),
        .GE(1'b1),
        .Q(door_ind));
  LUT1 #(
    .INIT(2'h1)) 
    door_ctl_reg_i_1
       (.I0(Q[1]),
        .O(door_ctl_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    door_ctl_reg_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(door_ctl_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    last_move_reg
       (.CLR(1'b0),
        .D(\position_reg[1] ),
        .G(moving_reg_0),
        .GE(1'b1),
        .Q(last_move));
  LUT3 #(
    .INIT(8'hBF)) 
    \next_position[3]_C_i_3 
       (.I0(moving),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(moving_reg));
  LUT2 #(
    .INIT(4'h8)) 
    \segments_reg[4]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\seg[3] ));
  LUT2 #(
    .INIT(4'h1)) 
    \segments_reg[7]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\seg[0] ));
endmodule

module ElevatorFiles
   (\next_position_reg[3]_C ,
    \next_position_reg[3]_C_0 ,
    \next_position_reg[3]_C_1 ,
    \current_state_reg[1] ,
    \next_position_reg[3]_C_2 ,
    \stop_requests_reg[7]_0 ,
    \up_requests_reg[6]_0 ,
    \down_requests_reg[7]_0 ,
    \next_position_reg[3]_C_3 ,
    \current_state_reg[0] ,
    \current_state_reg[0]_0 ,
    \next_position_reg[3]_C_4 ,
    \current_state_reg[0]_1 ,
    \next_position_reg[3]_C_5 ,
    \next_position_reg[3]_C_6 ,
    \next_position_reg[3]_C_7 ,
    \next_position_reg[3]_C_8 ,
    \next_position_reg[3]_C_9 ,
    SR,
    led_OBUF,
    \next_position_reg[3]_C_10 ,
    \position_reg[3] ,
    \position_reg[3]_0 ,
    Q,
    \position_reg[2] ,
    \position_reg[1] ,
    \position_reg[2]_0 ,
    \position_reg[1]_0 ,
    \position_reg[1]_1 ,
    \position_reg[2]_1 ,
    \sw_IBUF[2] ,
    clk_IBUF,
    \position_reg[1]_2 ,
    D,
    clk_IBUF_BUFG,
    \position_reg[0] ,
    \down_requests_reg[7]_1 );
  output \next_position_reg[3]_C ;
  output \next_position_reg[3]_C_0 ;
  output \next_position_reg[3]_C_1 ;
  output \current_state_reg[1] ;
  output \next_position_reg[3]_C_2 ;
  output [7:0]\stop_requests_reg[7]_0 ;
  output [6:0]\up_requests_reg[6]_0 ;
  output [6:0]\down_requests_reg[7]_0 ;
  output \next_position_reg[3]_C_3 ;
  output \current_state_reg[0] ;
  output \current_state_reg[0]_0 ;
  output \next_position_reg[3]_C_4 ;
  output \current_state_reg[0]_1 ;
  output \next_position_reg[3]_C_5 ;
  output \next_position_reg[3]_C_6 ;
  output \next_position_reg[3]_C_7 ;
  output \next_position_reg[3]_C_8 ;
  output \next_position_reg[3]_C_9 ;
  output [0:0]SR;
  output [15:0]led_OBUF;
  output \next_position_reg[3]_C_10 ;
  input \position_reg[3] ;
  input \position_reg[3]_0 ;
  input [3:0]Q;
  input \position_reg[2] ;
  input \position_reg[1] ;
  input \position_reg[2]_0 ;
  input \position_reg[1]_0 ;
  input \position_reg[1]_1 ;
  input \position_reg[2]_1 ;
  input \sw_IBUF[2] ;
  input clk_IBUF;
  input \position_reg[1]_2 ;
  input [7:0]D;
  input clk_IBUF_BUFG;
  input [6:0]\position_reg[0] ;
  input [6:0]\down_requests_reg[7]_1 ;

  wire [7:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire \current_state[1]_i_7_n_0 ;
  wire \current_state[1]_i_8_n_0 ;
  wire \current_state[1]_i_9_n_0 ;
  wire \current_state_reg[0] ;
  wire \current_state_reg[0]_0 ;
  wire \current_state_reg[0]_1 ;
  wire \current_state_reg[1] ;
  wire [6:0]\down_requests_reg[7]_0 ;
  wire [6:0]\down_requests_reg[7]_1 ;
  wire last_move_reg_i_10_n_0;
  wire last_move_reg_i_20_n_0;
  wire last_move_reg_i_6_n_0;
  wire last_move_reg_i_7_n_0;
  wire last_move_reg_i_8_n_0;
  wire [15:0]led_OBUF;
  wire \next_position[3]_C_i_10_n_0 ;
  wire \next_position[3]_C_i_11_n_0 ;
  wire \next_position[3]_C_i_6_n_0 ;
  wire \next_position[3]_C_i_7_n_0 ;
  wire \next_position_reg[3]_C ;
  wire \next_position_reg[3]_C_0 ;
  wire \next_position_reg[3]_C_1 ;
  wire \next_position_reg[3]_C_10 ;
  wire \next_position_reg[3]_C_2 ;
  wire \next_position_reg[3]_C_3 ;
  wire \next_position_reg[3]_C_4 ;
  wire \next_position_reg[3]_C_5 ;
  wire \next_position_reg[3]_C_6 ;
  wire \next_position_reg[3]_C_7 ;
  wire \next_position_reg[3]_C_8 ;
  wire \next_position_reg[3]_C_9 ;
  wire [6:0]\position_reg[0] ;
  wire \position_reg[1] ;
  wire \position_reg[1]_0 ;
  wire \position_reg[1]_1 ;
  wire \position_reg[1]_2 ;
  wire \position_reg[2] ;
  wire \position_reg[2]_0 ;
  wire \position_reg[2]_1 ;
  wire \position_reg[3] ;
  wire \position_reg[3]_0 ;
  wire [7:0]\stop_requests_reg[7]_0 ;
  wire \sw_IBUF[2] ;
  wire [6:0]\up_requests_reg[6]_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFF00DD00FD)) 
    \current_state[1]_i_6 
       (.I0(\current_state[1]_i_7_n_0 ),
        .I1(\current_state[1]_i_8_n_0 ),
        .I2(\next_position_reg[3]_C_0 ),
        .I3(\position_reg[2] ),
        .I4(\position_reg[1] ),
        .I5(\current_state[1]_i_9_n_0 ),
        .O(\current_state_reg[1] ));
  LUT3 #(
    .INIT(8'h01)) 
    \current_state[1]_i_7 
       (.I0(\down_requests_reg[7]_0 [2]),
        .I1(\up_requests_reg[6]_0 [3]),
        .I2(\stop_requests_reg[7]_0 [3]),
        .O(\current_state[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h77777770)) 
    \current_state[1]_i_8 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\stop_requests_reg[7]_0 [2]),
        .I3(\up_requests_reg[6]_0 [2]),
        .I4(\down_requests_reg[7]_0 [1]),
        .O(\current_state[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000FE)) 
    \current_state[1]_i_9 
       (.I0(\stop_requests_reg[7]_0 [1]),
        .I1(\up_requests_reg[6]_0 [1]),
        .I2(\down_requests_reg[7]_0 [0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\current_state[1]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \down_requests_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\down_requests_reg[7]_1 [0]),
        .Q(\down_requests_reg[7]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \down_requests_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\down_requests_reg[7]_1 [1]),
        .Q(\down_requests_reg[7]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \down_requests_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\down_requests_reg[7]_1 [2]),
        .Q(\down_requests_reg[7]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \down_requests_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\down_requests_reg[7]_1 [3]),
        .Q(\down_requests_reg[7]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \down_requests_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\down_requests_reg[7]_1 [4]),
        .Q(\down_requests_reg[7]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \down_requests_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\down_requests_reg[7]_1 [5]),
        .Q(\down_requests_reg[7]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \down_requests_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\down_requests_reg[7]_1 [6]),
        .Q(\down_requests_reg[7]_0 [6]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000AAA8AAAAAAAA)) 
    last_move_reg_i_10
       (.I0(\position_reg[2]_0 ),
        .I1(\stop_requests_reg[7]_0 [5]),
        .I2(\up_requests_reg[6]_0 [5]),
        .I3(\down_requests_reg[7]_0 [4]),
        .I4(\position_reg[1]_0 ),
        .I5(last_move_reg_i_6_n_0),
        .O(last_move_reg_i_10_n_0));
  LUT6 #(
    .INIT(64'h000000000000FF01)) 
    last_move_reg_i_11
       (.I0(\down_requests_reg[7]_0 [5]),
        .I1(\up_requests_reg[6]_0 [6]),
        .I2(\stop_requests_reg[7]_0 [6]),
        .I3(\position_reg[2]_1 ),
        .I4(\down_requests_reg[7]_0 [6]),
        .I5(\stop_requests_reg[7]_0 [7]),
        .O(\current_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0101000100010001)) 
    last_move_reg_i_14
       (.I0(\stop_requests_reg[7]_0 [3]),
        .I1(\up_requests_reg[6]_0 [3]),
        .I2(\down_requests_reg[7]_0 [2]),
        .I3(last_move_reg_i_20_n_0),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\current_state_reg[0] ));
  LUT3 #(
    .INIT(8'hFE)) 
    last_move_reg_i_17
       (.I0(\down_requests_reg[7]_0 [3]),
        .I1(\up_requests_reg[6]_0 [4]),
        .I2(\stop_requests_reg[7]_0 [4]),
        .O(\next_position_reg[3]_C_4 ));
  LUT2 #(
    .INIT(4'hE)) 
    last_move_reg_i_18
       (.I0(\stop_requests_reg[7]_0 [0]),
        .I1(\up_requests_reg[6]_0 [0]),
        .O(\next_position_reg[3]_C_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    last_move_reg_i_19
       (.I0(\down_requests_reg[7]_0 [0]),
        .I1(\up_requests_reg[6]_0 [1]),
        .I2(\stop_requests_reg[7]_0 [1]),
        .O(\next_position_reg[3]_C_1 ));
  LUT3 #(
    .INIT(8'hFE)) 
    last_move_reg_i_20
       (.I0(\down_requests_reg[7]_0 [1]),
        .I1(\up_requests_reg[6]_0 [2]),
        .I2(\stop_requests_reg[7]_0 [2]),
        .O(last_move_reg_i_20_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    last_move_reg_i_22
       (.I0(\down_requests_reg[7]_0 [5]),
        .I1(\up_requests_reg[6]_0 [6]),
        .I2(\stop_requests_reg[7]_0 [6]),
        .O(\next_position_reg[3]_C_5 ));
  LUT3 #(
    .INIT(8'hFE)) 
    last_move_reg_i_24
       (.I0(\down_requests_reg[7]_0 [4]),
        .I1(\up_requests_reg[6]_0 [5]),
        .I2(\stop_requests_reg[7]_0 [5]),
        .O(\current_state_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    last_move_reg_i_25
       (.I0(\stop_requests_reg[7]_0 [4]),
        .I1(\stop_requests_reg[7]_0 [5]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\stop_requests_reg[7]_0 [6]),
        .I5(\stop_requests_reg[7]_0 [7]),
        .O(\next_position_reg[3]_C_6 ));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    last_move_reg_i_26
       (.I0(\stop_requests_reg[7]_0 [0]),
        .I1(\stop_requests_reg[7]_0 [1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\stop_requests_reg[7]_0 [2]),
        .I5(\stop_requests_reg[7]_0 [3]),
        .O(\next_position_reg[3]_C_7 ));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    last_move_reg_i_27
       (.I0(\down_requests_reg[7]_0 [3]),
        .I1(\down_requests_reg[7]_0 [4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\down_requests_reg[7]_0 [5]),
        .I5(\down_requests_reg[7]_0 [6]),
        .O(\next_position_reg[3]_C_8 ));
  LUT5 #(
    .INIT(32'hCB0BC808)) 
    last_move_reg_i_28
       (.I0(\down_requests_reg[7]_0 [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\down_requests_reg[7]_0 [1]),
        .I4(\down_requests_reg[7]_0 [2]),
        .O(\next_position_reg[3]_C_9 ));
  LUT6 #(
    .INIT(64'h000000000000005D)) 
    last_move_reg_i_3
       (.I0(\position_reg[3] ),
        .I1(last_move_reg_i_6_n_0),
        .I2(last_move_reg_i_7_n_0),
        .I3(last_move_reg_i_8_n_0),
        .I4(\position_reg[3]_0 ),
        .I5(last_move_reg_i_10_n_0),
        .O(\next_position_reg[3]_C ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    last_move_reg_i_6
       (.I0(\stop_requests_reg[7]_0 [3]),
        .I1(\up_requests_reg[6]_0 [3]),
        .I2(\down_requests_reg[7]_0 [2]),
        .I3(\stop_requests_reg[7]_0 [1]),
        .I4(\up_requests_reg[6]_0 [1]),
        .I5(\down_requests_reg[7]_0 [0]),
        .O(last_move_reg_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    last_move_reg_i_7
       (.I0(\stop_requests_reg[7]_0 [5]),
        .I1(\up_requests_reg[6]_0 [5]),
        .I2(\down_requests_reg[7]_0 [4]),
        .I3(\next_position_reg[3]_C_4 ),
        .I4(\stop_requests_reg[7]_0 [7]),
        .I5(\down_requests_reg[7]_0 [6]),
        .O(last_move_reg_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFEAAEEA0FEA0E)) 
    last_move_reg_i_8
       (.I0(\next_position_reg[3]_C_0 ),
        .I1(\next_position_reg[3]_C_1 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(last_move_reg_i_20_n_0),
        .I5(\position_reg[2] ),
        .O(last_move_reg_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \led_OBUF[0]_inst_i_1 
       (.I0(clk_IBUF),
        .I1(\stop_requests_reg[7]_0 [0]),
        .O(led_OBUF[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[10]_inst_i_1 
       (.I0(\stop_requests_reg[7]_0 [5]),
        .I1(clk_IBUF),
        .I2(\down_requests_reg[7]_0 [4]),
        .O(led_OBUF[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[11]_inst_i_1 
       (.I0(\stop_requests_reg[7]_0 [5]),
        .I1(clk_IBUF),
        .I2(\up_requests_reg[6]_0 [5]),
        .O(led_OBUF[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[12]_inst_i_1 
       (.I0(\stop_requests_reg[7]_0 [6]),
        .I1(clk_IBUF),
        .I2(\down_requests_reg[7]_0 [5]),
        .O(led_OBUF[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[13]_inst_i_1 
       (.I0(\stop_requests_reg[7]_0 [6]),
        .I1(clk_IBUF),
        .I2(\up_requests_reg[6]_0 [6]),
        .O(led_OBUF[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[14]_inst_i_1 
       (.I0(\stop_requests_reg[7]_0 [7]),
        .I1(clk_IBUF),
        .I2(\down_requests_reg[7]_0 [6]),
        .O(led_OBUF[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \led_OBUF[15]_inst_i_1 
       (.I0(clk_IBUF),
        .I1(\stop_requests_reg[7]_0 [7]),
        .O(led_OBUF[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[1]_inst_i_1 
       (.I0(\stop_requests_reg[7]_0 [0]),
        .I1(clk_IBUF),
        .I2(\up_requests_reg[6]_0 [0]),
        .O(led_OBUF[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[2]_inst_i_1 
       (.I0(\stop_requests_reg[7]_0 [1]),
        .I1(clk_IBUF),
        .I2(\down_requests_reg[7]_0 [0]),
        .O(led_OBUF[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[3]_inst_i_1 
       (.I0(\stop_requests_reg[7]_0 [1]),
        .I1(clk_IBUF),
        .I2(\up_requests_reg[6]_0 [1]),
        .O(led_OBUF[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[4]_inst_i_1 
       (.I0(\stop_requests_reg[7]_0 [2]),
        .I1(clk_IBUF),
        .I2(\down_requests_reg[7]_0 [1]),
        .O(led_OBUF[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[5]_inst_i_1 
       (.I0(\stop_requests_reg[7]_0 [2]),
        .I1(clk_IBUF),
        .I2(\up_requests_reg[6]_0 [2]),
        .O(led_OBUF[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[6]_inst_i_1 
       (.I0(\stop_requests_reg[7]_0 [3]),
        .I1(clk_IBUF),
        .I2(\down_requests_reg[7]_0 [2]),
        .O(led_OBUF[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[7]_inst_i_1 
       (.I0(\stop_requests_reg[7]_0 [3]),
        .I1(clk_IBUF),
        .I2(\up_requests_reg[6]_0 [3]),
        .O(led_OBUF[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[8]_inst_i_1 
       (.I0(\stop_requests_reg[7]_0 [4]),
        .I1(clk_IBUF),
        .I2(\down_requests_reg[7]_0 [3]),
        .O(led_OBUF[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_OBUF[9]_inst_i_1 
       (.I0(\stop_requests_reg[7]_0 [4]),
        .I1(clk_IBUF),
        .I2(\up_requests_reg[6]_0 [4]),
        .O(led_OBUF[9]));
  LUT6 #(
    .INIT(64'h000000FEFEFEFEFE)) 
    \next_position[3]_C_i_10 
       (.I0(\stop_requests_reg[7]_0 [4]),
        .I1(\up_requests_reg[6]_0 [4]),
        .I2(\down_requests_reg[7]_0 [3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\next_position[3]_C_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h77777770)) 
    \next_position[3]_C_i_11 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\stop_requests_reg[7]_0 [5]),
        .I3(\up_requests_reg[6]_0 [5]),
        .I4(\down_requests_reg[7]_0 [4]),
        .O(\next_position[3]_C_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFACF0ACFFAC00AC0)) 
    \next_position[3]_C_i_6 
       (.I0(\up_requests_reg[6]_0 [0]),
        .I1(\up_requests_reg[6]_0 [1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\up_requests_reg[6]_0 [2]),
        .I5(\up_requests_reg[6]_0 [3]),
        .O(\next_position[3]_C_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFAC00AC0)) 
    \next_position[3]_C_i_7 
       (.I0(\up_requests_reg[6]_0 [4]),
        .I1(\up_requests_reg[6]_0 [5]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\up_requests_reg[6]_0 [6]),
        .O(\next_position[3]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555540)) 
    \next_position[3]_C_i_8 
       (.I0(\position_reg[2] ),
        .I1(\position_reg[1]_2 ),
        .I2(last_move_reg_i_20_n_0),
        .I3(\down_requests_reg[7]_0 [2]),
        .I4(\up_requests_reg[6]_0 [3]),
        .I5(\stop_requests_reg[7]_0 [3]),
        .O(\next_position_reg[3]_C_10 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \next_position[3]_C_i_9 
       (.I0(Q[3]),
        .I1(\next_position[3]_C_i_10_n_0 ),
        .I2(\next_position[3]_C_i_11_n_0 ),
        .I3(\position_reg[1]_1 ),
        .I4(\down_requests_reg[7]_0 [6]),
        .I5(\stop_requests_reg[7]_0 [7]),
        .O(\next_position_reg[3]_C_3 ));
  MUXF7 \next_position_reg[3]_C_i_4 
       (.I0(\next_position[3]_C_i_6_n_0 ),
        .I1(\next_position[3]_C_i_7_n_0 ),
        .O(\next_position_reg[3]_C_2 ),
        .S(\position_reg[2]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \segments_reg[7]_i_2 
       (.I0(\sw_IBUF[2] ),
        .O(SR));
  FDRE #(
    .INIT(1'b0)) 
    \stop_requests_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(\stop_requests_reg[7]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \stop_requests_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(\stop_requests_reg[7]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \stop_requests_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(\stop_requests_reg[7]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \stop_requests_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(\stop_requests_reg[7]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \stop_requests_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(\stop_requests_reg[7]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \stop_requests_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(\stop_requests_reg[7]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \stop_requests_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(\stop_requests_reg[7]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \stop_requests_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(\stop_requests_reg[7]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_requests_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\position_reg[0] [0]),
        .Q(\up_requests_reg[6]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_requests_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\position_reg[0] [1]),
        .Q(\up_requests_reg[6]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_requests_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\position_reg[0] [2]),
        .Q(\up_requests_reg[6]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_requests_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\position_reg[0] [3]),
        .Q(\up_requests_reg[6]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_requests_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\position_reg[0] [4]),
        .Q(\up_requests_reg[6]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_requests_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\position_reg[0] [5]),
        .Q(\up_requests_reg[6]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_requests_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\position_reg[0] [6]),
        .Q(\up_requests_reg[6]_0 [6]),
        .R(SR));
endmodule

module MotorSimulator
   (\next_position_reg[3]_P_0 ,
    \next_position_reg[2]_C_0 ,
    moving,
    D,
    \current_state_reg[1] ,
    \next_position_reg[3]_C_0 ,
    \position_reg[1]_0 ,
    \down_requests_reg[3] ,
    \down_requests_reg[7] ,
    \down_requests_reg[6] ,
    \stop_requests_reg[7] ,
    \up_requests_reg[6] ,
    \next_position_reg[3]_C_1 ,
    \next_position_reg[3]_C_2 ,
    \seg[6] ,
    \seg[4] ,
    \next_position_reg[3]_C_3 ,
    \current_state_reg[0] ,
    \next_position_reg[1]_C_0 ,
    \seg[6]_0 ,
    \seg[5] ,
    \next_position_reg[3]_C_4 ,
    clk_IBUF_BUFG,
    \current_state_reg[1]_0 ,
    Q,
    moving_reg_0,
    last_move,
    \position_reg[3]_0 ,
    \position_reg[2]_0 ,
    moving_reg_1,
    \current_state_reg[1]_1 ,
    btnL_IBUF,
    sw_IBUF,
    btnD_IBUF,
    \down_requests_reg[7]_0 ,
    \stop_requests_reg[7]_0 ,
    btnC_IBUF,
    door_ind,
    \up_requests_reg[6]_0 ,
    btnU_IBUF,
    \down_requests_reg[3]_0 ,
    \position_reg[3]_1 ,
    \down_requests_reg[6]_0 ,
    \down_requests_reg[3]_1 ,
    \stop_requests_reg[3] ,
    \down_requests_reg[1] ,
    \stop_requests_reg[0] ,
    \stop_requests_reg[4] ,
    \stop_requests_reg[0]_0 ,
    \down_requests_reg[4] ,
    \down_requests_reg[1]_0 ,
    \down_requests_reg[4]_0 ,
    \down_requests_reg[5] ,
    \down_requests_reg[6]_1 ,
    sw_IBUF_2_sp_1,
    \ansel_reg[6] ,
    \ansel_reg[5] ,
    \ansel_reg[2] ,
    \current_state_reg[1]_2 ,
    \ansel_reg[4] ,
    \ansel_reg[5]_0 ,
    \ansel_reg[5]_1 ,
    \ansel_reg[4]_0 ,
    \ansel_reg[2]_0 ,
    \ansel_reg[7] ,
    \current_state_reg[1]_3 );
  output \next_position_reg[3]_P_0 ;
  output \next_position_reg[2]_C_0 ;
  output moving;
  output [5:0]D;
  output [1:0]\current_state_reg[1] ;
  output \next_position_reg[3]_C_0 ;
  output [3:0]\position_reg[1]_0 ;
  output \down_requests_reg[3] ;
  output [6:0]\down_requests_reg[7] ;
  output \down_requests_reg[6] ;
  output [7:0]\stop_requests_reg[7] ;
  output [6:0]\up_requests_reg[6] ;
  output \next_position_reg[3]_C_1 ;
  output \next_position_reg[3]_C_2 ;
  output \seg[6] ;
  output \seg[4] ;
  output \next_position_reg[3]_C_3 ;
  output \current_state_reg[0] ;
  output \next_position_reg[1]_C_0 ;
  output \seg[6]_0 ;
  output \seg[5] ;
  output \next_position_reg[3]_C_4 ;
  input clk_IBUF_BUFG;
  input \current_state_reg[1]_0 ;
  input [4:0]Q;
  input moving_reg_0;
  input last_move;
  input \position_reg[3]_0 ;
  input \position_reg[2]_0 ;
  input moving_reg_1;
  input [1:0]\current_state_reg[1]_1 ;
  input btnL_IBUF;
  input [7:0]sw_IBUF;
  input btnD_IBUF;
  input [6:0]\down_requests_reg[7]_0 ;
  input [7:0]\stop_requests_reg[7]_0 ;
  input btnC_IBUF;
  input door_ind;
  input [6:0]\up_requests_reg[6]_0 ;
  input btnU_IBUF;
  input \down_requests_reg[3]_0 ;
  input \position_reg[3]_1 ;
  input \down_requests_reg[6]_0 ;
  input \down_requests_reg[3]_1 ;
  input \stop_requests_reg[3] ;
  input \down_requests_reg[1] ;
  input \stop_requests_reg[0] ;
  input \stop_requests_reg[4] ;
  input \stop_requests_reg[0]_0 ;
  input \down_requests_reg[4] ;
  input \down_requests_reg[1]_0 ;
  input \down_requests_reg[4]_0 ;
  input \down_requests_reg[5] ;
  input \down_requests_reg[6]_1 ;
  input sw_IBUF_2_sp_1;
  input \ansel_reg[6] ;
  input \ansel_reg[5] ;
  input \ansel_reg[2] ;
  input \current_state_reg[1]_2 ;
  input \ansel_reg[4] ;
  input \ansel_reg[5]_0 ;
  input \ansel_reg[5]_1 ;
  input \ansel_reg[4]_0 ;
  input \ansel_reg[2]_0 ;
  input \ansel_reg[7] ;
  input \current_state_reg[1]_3 ;

  wire [5:0]D;
  wire [0:0]\EE_FileMod/offset ;
  wire [4:0]Q;
  wire __MS_MotorDelayMod_n_7;
  wire __MS_MotorDelayMod_n_9;
  wire \ansel_reg[2] ;
  wire \ansel_reg[2]_0 ;
  wire \ansel_reg[4] ;
  wire \ansel_reg[4]_0 ;
  wire \ansel_reg[5] ;
  wire \ansel_reg[5]_0 ;
  wire \ansel_reg[5]_1 ;
  wire \ansel_reg[6] ;
  wire \ansel_reg[7] ;
  wire btnC_IBUF;
  wire btnD_IBUF;
  wire btnL_IBUF;
  wire btnU_IBUF;
  wire clk_IBUF_BUFG;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state[1]_i_4_n_0 ;
  wire \current_state_reg[0] ;
  wire [1:0]\current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire [1:0]\current_state_reg[1]_1 ;
  wire \current_state_reg[1]_2 ;
  wire \current_state_reg[1]_3 ;
  wire door_ind;
  wire \down_requests_reg[1] ;
  wire \down_requests_reg[1]_0 ;
  wire \down_requests_reg[3] ;
  wire \down_requests_reg[3]_0 ;
  wire \down_requests_reg[3]_1 ;
  wire \down_requests_reg[4] ;
  wire \down_requests_reg[4]_0 ;
  wire \down_requests_reg[5] ;
  wire \down_requests_reg[6] ;
  wire \down_requests_reg[6]_0 ;
  wire \down_requests_reg[6]_1 ;
  wire [6:0]\down_requests_reg[7] ;
  wire [6:0]\down_requests_reg[7]_0 ;
  wire last_move;
  wire last_move_reg_i_12_n_0;
  wire last_move_reg_i_13_n_0;
  wire last_move_reg_i_15_n_0;
  wire last_move_reg_i_16_n_0;
  wire last_move_reg_i_4_n_0;
  wire last_move_reg_i_5_n_0;
  wire moving;
  wire moving_reg_0;
  wire moving_reg_1;
  wire [3:0]next_position;
  wire \next_position[1]_C_i_1_n_0 ;
  wire \next_position[3]_C_i_2_n_0 ;
  wire \next_position[3]_C_i_5_n_0 ;
  wire \next_position_reg[0]_C_n_0 ;
  wire \next_position_reg[0]_LDC_i_1_n_0 ;
  wire \next_position_reg[0]_LDC_i_2_n_0 ;
  wire \next_position_reg[0]_LDC_n_0 ;
  wire \next_position_reg[0]_P_n_0 ;
  wire \next_position_reg[1]_C_0 ;
  wire \next_position_reg[1]_C_n_0 ;
  wire \next_position_reg[1]_LDC_i_1_n_0 ;
  wire \next_position_reg[1]_LDC_i_2_n_0 ;
  wire \next_position_reg[1]_LDC_n_0 ;
  wire \next_position_reg[1]_P_n_0 ;
  wire \next_position_reg[2]_C_0 ;
  wire \next_position_reg[2]_C_n_0 ;
  wire \next_position_reg[2]_LDC_i_1_n_0 ;
  wire \next_position_reg[2]_LDC_i_2_n_0 ;
  wire \next_position_reg[2]_LDC_i_3_n_0 ;
  wire \next_position_reg[2]_LDC_n_0 ;
  wire \next_position_reg[2]_P_n_0 ;
  wire \next_position_reg[3]_C_0 ;
  wire \next_position_reg[3]_C_1 ;
  wire \next_position_reg[3]_C_2 ;
  wire \next_position_reg[3]_C_3 ;
  wire \next_position_reg[3]_C_4 ;
  wire \next_position_reg[3]_C_n_0 ;
  wire \next_position_reg[3]_LDC_i_1_n_0 ;
  wire \next_position_reg[3]_LDC_i_2_n_0 ;
  wire \next_position_reg[3]_LDC_i_3_n_0 ;
  wire \next_position_reg[3]_LDC_i_4_n_0 ;
  wire \next_position_reg[3]_LDC_n_0 ;
  wire \next_position_reg[3]_P_0 ;
  wire \next_position_reg[3]_P_n_0 ;
  wire \position[3]_i_1_n_0 ;
  wire [3:0]\position_reg[1]_0 ;
  wire \position_reg[2]_0 ;
  wire \position_reg[3]_0 ;
  wire \position_reg[3]_1 ;
  wire \seg[4] ;
  wire \seg[5] ;
  wire \seg[6] ;
  wire \seg[6]_0 ;
  wire \segments_reg[2]_i_2_n_0 ;
  wire \segments_reg[2]_i_3_n_0 ;
  wire \segments_reg[3]_i_2_n_0 ;
  wire \segments_reg[4]_i_2_n_0 ;
  wire \segments_reg[6]_i_3_n_0 ;
  wire \segments_reg[6]_i_4_n_0 ;
  wire \segments_reg[7]_i_4_n_0 ;
  wire \segments_reg[7]_i_5_n_0 ;
  wire \stop_requests[0]_i_2_n_0 ;
  wire \stop_requests[2]_i_2_n_0 ;
  wire \stop_requests[2]_i_3_n_0 ;
  wire \stop_requests[2]_i_4_n_0 ;
  wire \stop_requests[4]_i_2_n_0 ;
  wire \stop_requests[5]_i_2_n_0 ;
  wire \stop_requests[6]_i_2_n_0 ;
  wire \stop_requests[7]_i_2_n_0 ;
  wire \stop_requests_reg[0] ;
  wire \stop_requests_reg[0]_0 ;
  wire \stop_requests_reg[3] ;
  wire \stop_requests_reg[4] ;
  wire [7:0]\stop_requests_reg[7] ;
  wire [7:0]\stop_requests_reg[7]_0 ;
  wire [7:0]sw_IBUF;
  wire sw_IBUF_2_sn_1;
  wire \up_requests[4]_i_2_n_0 ;
  wire \up_requests[6]_i_2_n_0 ;
  wire [6:0]\up_requests_reg[6] ;
  wire [6:0]\up_requests_reg[6]_0 ;

  assign sw_IBUF_2_sn_1 = sw_IBUF_2_sp_1;
  DelaySignalNS __MS_MotorDelayMod
       (.D(D),
        .E(__MS_MotorDelayMod_n_7),
        .Q(Q),
        .\ansel_reg[2] (\ansel_reg[2] ),
        .\ansel_reg[2]_0 (\ansel_reg[2]_0 ),
        .\ansel_reg[4] (\ansel_reg[4]_0 ),
        .\ansel_reg[5] (\segments_reg[7]_i_4_n_0 ),
        .\ansel_reg[5]_0 (\ansel_reg[5] ),
        .\ansel_reg[5]_1 (\ansel_reg[5]_0 ),
        .\ansel_reg[5]_2 (\ansel_reg[5]_1 ),
        .\ansel_reg[6] (\ansel_reg[6] ),
        .\ansel_reg[7] (\ansel_reg[7] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\current_state_reg[1] (\current_state_reg[1]_0 ),
        .\current_state_reg[1]_0 (\current_state_reg[1]_2 ),
        .moving_reg(__MS_MotorDelayMod_n_9),
        .moving_reg_0(moving),
        .moving_reg_1(moving_reg_0),
        .\position_reg[0] (\segments_reg[4]_i_2_n_0 ),
        .\position_reg[0]_0 (\position_reg[1]_0 [0]),
        .\position_reg[0]_1 (\segments_reg[7]_i_5_n_0 ),
        .\position_reg[1] (\segments_reg[6]_i_4_n_0 ),
        .\position_reg[2] (\segments_reg[2]_i_2_n_0 ),
        .\position_reg[2]_0 (\segments_reg[3]_i_2_n_0 ),
        .\position_reg[2]_1 (\current_state[0]_i_2_n_0 ),
        .\position_reg[3] (\segments_reg[2]_i_3_n_0 ),
        .\position_reg[3]_0 (\segments_reg[6]_i_3_n_0 ),
        .\position_reg[3]_1 (\next_position_reg[3]_LDC_i_3_n_0 ),
        .\position_reg[3]_2 (\next_position[3]_C_i_2_n_0 ),
        .\seg[5] (\seg[5] ),
        .\seg[6] (\seg[6]_0 ),
        .\sw_IBUF[2] (sw_IBUF_2_sn_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF70000)) 
    \current_state[0]_i_1 
       (.I0(last_move_reg_i_4_n_0),
        .I1(\position_reg[3]_0 ),
        .I2(\current_state[0]_i_2_n_0 ),
        .I3(btnL_IBUF),
        .I4(\current_state_reg[1]_1 [1]),
        .I5(\current_state_reg[1]_3 ),
        .O(\current_state_reg[1] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCCCF8F8)) 
    \current_state[0]_i_2 
       (.I0(\position_reg[3]_0 ),
        .I1(\position_reg[2]_0 ),
        .I2(last_move_reg_i_16_n_0),
        .I3(last_move_reg_i_4_n_0),
        .I4(last_move),
        .I5(last_move_reg_i_15_n_0),
        .O(\current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCFDCCFFCCCDCC)) 
    \current_state[1]_i_1 
       (.I0(\current_state[1]_i_2_n_0 ),
        .I1(moving_reg_1),
        .I2(\current_state_reg[1]_1 [0]),
        .I3(\current_state_reg[1]_1 [1]),
        .I4(last_move_reg_i_5_n_0),
        .I5(moving),
        .O(\current_state_reg[1] [1]));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFEFE)) 
    \current_state[1]_i_2 
       (.I0(btnL_IBUF),
        .I1(last_move_reg_i_15_n_0),
        .I2(\current_state[1]_i_4_n_0 ),
        .I3(\position_reg[2]_0 ),
        .I4(\position_reg[3]_0 ),
        .I5(last_move),
        .O(\current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA08AAAAAAAA)) 
    \current_state[1]_i_4 
       (.I0(last_move_reg_i_16_n_0),
        .I1(\down_requests_reg[6]_0 ),
        .I2(last_move_reg_i_12_n_0),
        .I3(\position_reg[1]_0 [3]),
        .I4(\down_requests_reg[3]_1 ),
        .I5(last_move),
        .O(\current_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE00FE00FE00)) 
    \down_requests[1]_i_1 
       (.I0(\stop_requests[5]_i_2_n_0 ),
        .I1(\stop_requests[2]_i_4_n_0 ),
        .I2(\position_reg[1]_0 [2]),
        .I3(\down_requests_reg[7]_0 [0]),
        .I4(sw_IBUF[1]),
        .I5(btnD_IBUF),
        .O(\down_requests_reg[7] [0]));
  LUT6 #(
    .INIT(64'hFEFEFE00FE00FE00)) 
    \down_requests[2]_i_1 
       (.I0(\stop_requests[2]_i_4_n_0 ),
        .I1(\position_reg[1]_0 [2]),
        .I2(\down_requests_reg[6] ),
        .I3(\down_requests_reg[7]_0 [1]),
        .I4(sw_IBUF[2]),
        .I5(btnD_IBUF),
        .O(\down_requests_reg[7] [1]));
  LUT6 #(
    .INIT(64'hFDFDFDFDFD000000)) 
    \down_requests[3]_i_1 
       (.I0(\position_reg[1]_0 [2]),
        .I1(\down_requests_reg[3] ),
        .I2(\stop_requests[2]_i_4_n_0 ),
        .I3(sw_IBUF[3]),
        .I4(btnD_IBUF),
        .I5(\down_requests_reg[7]_0 [2]),
        .O(\down_requests_reg[7] [2]));
  LUT6 #(
    .INIT(64'hF800F8F8F8F8F8F8)) 
    \down_requests[4]_i_1 
       (.I0(sw_IBUF[4]),
        .I1(btnD_IBUF),
        .I2(\down_requests_reg[7]_0 [3]),
        .I3(\stop_requests[2]_i_4_n_0 ),
        .I4(\up_requests[4]_i_2_n_0 ),
        .I5(\position_reg[1]_0 [0]),
        .O(\down_requests_reg[7] [3]));
  LUT6 #(
    .INIT(64'hFDFDFD00FD00FD00)) 
    \down_requests[5]_i_1 
       (.I0(\position_reg[1]_0 [2]),
        .I1(\stop_requests[5]_i_2_n_0 ),
        .I2(\stop_requests[2]_i_4_n_0 ),
        .I3(\down_requests_reg[7]_0 [4]),
        .I4(sw_IBUF[5]),
        .I5(btnD_IBUF),
        .O(\down_requests_reg[7] [4]));
  LUT6 #(
    .INIT(64'hFDFDFD00FD00FD00)) 
    \down_requests[6]_i_1 
       (.I0(\position_reg[1]_0 [2]),
        .I1(\down_requests_reg[6] ),
        .I2(\stop_requests[2]_i_4_n_0 ),
        .I3(\down_requests_reg[7]_0 [5]),
        .I4(sw_IBUF[6]),
        .I5(btnD_IBUF),
        .O(\down_requests_reg[7] [5]));
  LUT6 #(
    .INIT(64'h00F8F8F8F8F8F8F8)) 
    \down_requests[7]_i_1 
       (.I0(sw_IBUF[7]),
        .I1(btnD_IBUF),
        .I2(\down_requests_reg[7]_0 [6]),
        .I3(\stop_requests[7]_i_2_n_0 ),
        .I4(\position_reg[1]_0 [3]),
        .I5(door_ind),
        .O(\down_requests_reg[7] [6]));
  LUT6 #(
    .INIT(64'hFEFF0000FFFFFFFF)) 
    last_move_reg_i_1
       (.I0(\position_reg[1]_0 [1]),
        .I1(\position_reg[1]_0 [0]),
        .I2(\position_reg[1]_0 [2]),
        .I3(\position_reg[1]_0 [3]),
        .I4(\position_reg[3]_0 ),
        .I5(last_move_reg_i_4_n_0),
        .O(\next_position_reg[3]_C_0 ));
  LUT5 #(
    .INIT(32'h00F4FCFC)) 
    last_move_reg_i_12
       (.I0(\position_reg[1]_0 [0]),
        .I1(\down_requests_reg[4]_0 ),
        .I2(\down_requests_reg[5] ),
        .I3(\position_reg[1]_0 [1]),
        .I4(\position_reg[1]_0 [2]),
        .O(last_move_reg_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000B0000000A)) 
    last_move_reg_i_13
       (.I0(\down_requests_reg[1] ),
        .I1(\position_reg[1]_0 [0]),
        .I2(\position_reg[1]_0 [1]),
        .I3(\position_reg[1]_0 [3]),
        .I4(\position_reg[1]_0 [2]),
        .I5(\stop_requests_reg[0] ),
        .O(last_move_reg_i_13_n_0));
  LUT5 #(
    .INIT(32'hBBBE8882)) 
    last_move_reg_i_15
       (.I0(\stop_requests_reg[4] ),
        .I1(\position_reg[1]_0 [2]),
        .I2(\position_reg[1]_0 [0]),
        .I3(\position_reg[1]_0 [1]),
        .I4(\stop_requests_reg[0]_0 ),
        .O(last_move_reg_i_15_n_0));
  LUT5 #(
    .INIT(32'hBBBE8882)) 
    last_move_reg_i_16
       (.I0(\down_requests_reg[4] ),
        .I1(\position_reg[1]_0 [2]),
        .I2(\position_reg[1]_0 [0]),
        .I3(\position_reg[1]_0 [1]),
        .I4(\down_requests_reg[1]_0 ),
        .O(last_move_reg_i_16_n_0));
  LUT6 #(
    .INIT(64'h00E0000000000000)) 
    last_move_reg_i_2
       (.I0(last_move_reg_i_4_n_0),
        .I1(\position_reg[3]_0 ),
        .I2(last_move_reg_i_5_n_0),
        .I3(moving),
        .I4(\current_state_reg[1]_1 [0]),
        .I5(\current_state_reg[1]_1 [1]),
        .O(\next_position_reg[3]_C_4 ));
  LUT2 #(
    .INIT(4'hE)) 
    last_move_reg_i_21
       (.I0(\position_reg[1]_0 [2]),
        .I1(\position_reg[1]_0 [3]),
        .O(\next_position_reg[3]_C_1 ));
  LUT3 #(
    .INIT(8'h80)) 
    last_move_reg_i_23
       (.I0(\position_reg[1]_0 [2]),
        .I1(\position_reg[1]_0 [0]),
        .I2(\position_reg[1]_0 [1]),
        .O(\current_state_reg[0] ));
  LUT6 #(
    .INIT(64'h0F020F020F020F00)) 
    last_move_reg_i_4
       (.I0(\down_requests_reg[6]_0 ),
        .I1(last_move_reg_i_12_n_0),
        .I2(last_move_reg_i_13_n_0),
        .I3(\position_reg[1]_0 [3]),
        .I4(\position_reg[1]_0 [2]),
        .I5(\stop_requests_reg[3] ),
        .O(last_move_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000040500110455)) 
    last_move_reg_i_5
       (.I0(last_move_reg_i_15_n_0),
        .I1(last_move),
        .I2(last_move_reg_i_4_n_0),
        .I3(last_move_reg_i_16_n_0),
        .I4(\position_reg[2]_0 ),
        .I5(\position_reg[3]_0 ),
        .O(last_move_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'hF888F88F8888888C)) 
    last_move_reg_i_9
       (.I0(\position_reg[1]_0 [3]),
        .I1(\down_requests_reg[6]_1 ),
        .I2(\position_reg[1]_0 [2]),
        .I3(\position_reg[1]_0 [1]),
        .I4(\position_reg[1]_0 [0]),
        .I5(\down_requests_reg[4]_0 ),
        .O(\next_position_reg[3]_C_2 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    moving_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(__MS_MotorDelayMod_n_9),
        .Q(moving),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \next_position[0]_C_i_1 
       (.I0(\position_reg[1]_0 [0]),
        .O(\EE_FileMod/offset ));
  LUT2 #(
    .INIT(4'h9)) 
    \next_position[1]_C_i_1 
       (.I0(\position_reg[1]_0 [0]),
        .I1(\position_reg[1]_0 [1]),
        .O(\next_position[1]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \next_position[2]_C_i_1 
       (.I0(\position_reg[1]_0 [2]),
        .I1(\position_reg[1]_0 [0]),
        .I2(\position_reg[1]_0 [1]),
        .O(\next_position_reg[2]_C_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \next_position[3]_C_i_1 
       (.I0(\position_reg[1]_0 [3]),
        .I1(\position_reg[1]_0 [1]),
        .I2(\position_reg[1]_0 [0]),
        .I3(\position_reg[1]_0 [2]),
        .O(\next_position_reg[3]_P_0 ));
  LUT6 #(
    .INIT(64'h80808080808080FF)) 
    \next_position[3]_C_i_12 
       (.I0(\position_reg[1]_0 [1]),
        .I1(\position_reg[1]_0 [0]),
        .I2(\position_reg[1]_0 [2]),
        .I3(\stop_requests_reg[7]_0 [6]),
        .I4(\up_requests_reg[6]_0 [6]),
        .I5(\down_requests_reg[7]_0 [5]),
        .O(\next_position_reg[3]_C_3 ));
  LUT6 #(
    .INIT(64'h0000000000030023)) 
    \next_position[3]_C_i_2 
       (.I0(last_move_reg_i_4_n_0),
        .I1(moving_reg_0),
        .I2(last_move),
        .I3(\position_reg[3]_0 ),
        .I4(\position_reg[2]_0 ),
        .I5(\next_position[3]_C_i_5_n_0 ),
        .O(\next_position[3]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBFBBBBAAAAAAAA)) 
    \next_position[3]_C_i_5 
       (.I0(last_move_reg_i_15_n_0),
        .I1(last_move),
        .I2(\down_requests_reg[3]_0 ),
        .I3(last_move_reg_i_13_n_0),
        .I4(\position_reg[3]_1 ),
        .I5(last_move_reg_i_16_n_0),
        .O(\next_position[3]_C_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \next_position_reg[0]_C 
       (.C(\next_position[3]_C_i_2_n_0 ),
        .CE(1'b1),
        .CLR(\next_position_reg[0]_LDC_i_2_n_0 ),
        .D(\EE_FileMod/offset ),
        .Q(\next_position_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b1)) 
    \next_position_reg[0]_LDC 
       (.CLR(\next_position_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\next_position_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\next_position_reg[0]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \next_position_reg[0]_LDC_i_1 
       (.I0(\position_reg[1]_0 [0]),
        .I1(\next_position_reg[3]_LDC_i_3_n_0 ),
        .I2(\current_state[0]_i_2_n_0 ),
        .I3(\current_state_reg[1]_1 [1]),
        .I4(\current_state_reg[1]_1 [0]),
        .I5(moving),
        .O(\next_position_reg[0]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \next_position_reg[0]_LDC_i_2 
       (.I0(\position_reg[1]_0 [0]),
        .I1(\next_position_reg[3]_LDC_i_3_n_0 ),
        .I2(\current_state[0]_i_2_n_0 ),
        .I3(\current_state_reg[1]_1 [1]),
        .I4(\current_state_reg[1]_1 [0]),
        .I5(moving),
        .O(\next_position_reg[0]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \next_position_reg[0]_P 
       (.C(\next_position[3]_C_i_2_n_0 ),
        .CE(1'b1),
        .D(\EE_FileMod/offset ),
        .PRE(\next_position_reg[0]_LDC_i_1_n_0 ),
        .Q(\next_position_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \next_position_reg[1]_C 
       (.C(\next_position[3]_C_i_2_n_0 ),
        .CE(1'b1),
        .CLR(\next_position_reg[1]_LDC_i_2_n_0 ),
        .D(\next_position[1]_C_i_1_n_0 ),
        .Q(\next_position_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_position_reg[1]_LDC 
       (.CLR(\next_position_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\next_position_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\next_position_reg[1]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \next_position_reg[1]_LDC_i_1 
       (.I0(\next_position_reg[1]_C_0 ),
        .I1(\next_position_reg[3]_LDC_i_3_n_0 ),
        .I2(\current_state[0]_i_2_n_0 ),
        .I3(\current_state_reg[1]_1 [1]),
        .I4(\current_state_reg[1]_1 [0]),
        .I5(moving),
        .O(\next_position_reg[1]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \next_position_reg[1]_LDC_i_2 
       (.I0(\next_position_reg[1]_C_0 ),
        .I1(\next_position_reg[3]_LDC_i_3_n_0 ),
        .I2(\current_state[0]_i_2_n_0 ),
        .I3(\current_state_reg[1]_1 [1]),
        .I4(\current_state_reg[1]_1 [0]),
        .I5(moving),
        .O(\next_position_reg[1]_LDC_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_position_reg[1]_LDC_i_3 
       (.I0(\position_reg[1]_0 [1]),
        .I1(\position_reg[1]_0 [0]),
        .O(\next_position_reg[1]_C_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \next_position_reg[1]_P 
       (.C(\next_position[3]_C_i_2_n_0 ),
        .CE(1'b1),
        .D(\next_position[1]_C_i_1_n_0 ),
        .PRE(\next_position_reg[1]_LDC_i_1_n_0 ),
        .Q(\next_position_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \next_position_reg[2]_C 
       (.C(\next_position[3]_C_i_2_n_0 ),
        .CE(1'b1),
        .CLR(\next_position_reg[2]_LDC_i_2_n_0 ),
        .D(\next_position_reg[2]_C_0 ),
        .Q(\next_position_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_position_reg[2]_LDC 
       (.CLR(\next_position_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\next_position_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\next_position_reg[2]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000078)) 
    \next_position_reg[2]_LDC_i_1 
       (.I0(\position_reg[1]_0 [1]),
        .I1(\position_reg[1]_0 [0]),
        .I2(\position_reg[1]_0 [2]),
        .I3(\next_position_reg[3]_LDC_i_3_n_0 ),
        .I4(\current_state[0]_i_2_n_0 ),
        .I5(moving_reg_0),
        .O(\next_position_reg[2]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \next_position_reg[2]_LDC_i_2 
       (.I0(\next_position_reg[3]_LDC_i_3_n_0 ),
        .I1(\current_state[0]_i_2_n_0 ),
        .I2(\current_state_reg[1]_1 [1]),
        .I3(\current_state_reg[1]_1 [0]),
        .I4(moving),
        .I5(\next_position_reg[2]_LDC_i_3_n_0 ),
        .O(\next_position_reg[2]_LDC_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \next_position_reg[2]_LDC_i_3 
       (.I0(\position_reg[1]_0 [2]),
        .I1(\position_reg[1]_0 [0]),
        .I2(\position_reg[1]_0 [1]),
        .O(\next_position_reg[2]_LDC_i_3_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \next_position_reg[2]_P 
       (.C(\next_position[3]_C_i_2_n_0 ),
        .CE(1'b1),
        .D(\next_position_reg[2]_C_0 ),
        .PRE(\next_position_reg[2]_LDC_i_1_n_0 ),
        .Q(\next_position_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \next_position_reg[3]_C 
       (.C(\next_position[3]_C_i_2_n_0 ),
        .CE(1'b1),
        .CLR(\next_position_reg[3]_LDC_i_2_n_0 ),
        .D(\next_position_reg[3]_P_0 ),
        .Q(\next_position_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_position_reg[3]_LDC 
       (.CLR(\next_position_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\next_position_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\next_position_reg[3]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \next_position_reg[3]_LDC_i_1 
       (.I0(\next_position_reg[3]_LDC_i_3_n_0 ),
        .I1(\current_state[0]_i_2_n_0 ),
        .I2(\current_state_reg[1]_1 [1]),
        .I3(\current_state_reg[1]_1 [0]),
        .I4(moving),
        .I5(\next_position_reg[3]_LDC_i_4_n_0 ),
        .O(\next_position_reg[3]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \next_position_reg[3]_LDC_i_2 
       (.I0(\next_position_reg[3]_LDC_i_4_n_0 ),
        .I1(\next_position_reg[3]_LDC_i_3_n_0 ),
        .I2(\current_state[0]_i_2_n_0 ),
        .I3(\current_state_reg[1]_1 [1]),
        .I4(\current_state_reg[1]_1 [0]),
        .I5(moving),
        .O(\next_position_reg[3]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0002FFFF00FF)) 
    \next_position_reg[3]_LDC_i_3 
       (.I0(\position_reg[1]_0 [3]),
        .I1(\position_reg[1]_0 [2]),
        .I2(\down_requests_reg[3] ),
        .I3(\position_reg[3]_0 ),
        .I4(last_move_reg_i_4_n_0),
        .I5(last_move),
        .O(\next_position_reg[3]_LDC_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h807F)) 
    \next_position_reg[3]_LDC_i_4 
       (.I0(\position_reg[1]_0 [2]),
        .I1(\position_reg[1]_0 [0]),
        .I2(\position_reg[1]_0 [1]),
        .I3(\position_reg[1]_0 [3]),
        .O(\next_position_reg[3]_LDC_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \next_position_reg[3]_P 
       (.C(\next_position[3]_C_i_2_n_0 ),
        .CE(1'b1),
        .D(\next_position_reg[3]_P_0 ),
        .PRE(\next_position_reg[3]_LDC_i_1_n_0 ),
        .Q(\next_position_reg[3]_P_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position[0]_i_1 
       (.I0(\next_position_reg[0]_P_n_0 ),
        .I1(\next_position_reg[0]_LDC_n_0 ),
        .I2(\next_position_reg[0]_C_n_0 ),
        .O(next_position[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \position[1]_i_1 
       (.I0(\next_position_reg[1]_P_n_0 ),
        .I1(\next_position_reg[1]_LDC_n_0 ),
        .I2(\next_position_reg[1]_C_n_0 ),
        .O(next_position[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \position[2]_i_1 
       (.I0(\next_position_reg[2]_P_n_0 ),
        .I1(\next_position_reg[2]_LDC_n_0 ),
        .I2(\next_position_reg[2]_C_n_0 ),
        .O(next_position[2]));
  LUT5 #(
    .INIT(32'h0000FE01)) 
    \position[3]_i_1 
       (.I0(\position_reg[1]_0 [2]),
        .I1(\position_reg[1]_0 [0]),
        .I2(\position_reg[1]_0 [1]),
        .I3(\position_reg[1]_0 [3]),
        .I4(sw_IBUF_2_sn_1),
        .O(\position[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \position[3]_i_3 
       (.I0(\next_position_reg[3]_P_n_0 ),
        .I1(\next_position_reg[3]_LDC_n_0 ),
        .I2(\next_position_reg[3]_C_n_0 ),
        .O(next_position[3]));
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \position_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(__MS_MotorDelayMod_n_7),
        .D(next_position[0]),
        .Q(\position_reg[1]_0 [0]),
        .S(\position[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \position_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(__MS_MotorDelayMod_n_7),
        .D(next_position[1]),
        .Q(\position_reg[1]_0 [1]),
        .R(\position[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \position_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(__MS_MotorDelayMod_n_7),
        .D(next_position[2]),
        .Q(\position_reg[1]_0 [2]),
        .R(\position[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \position_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(__MS_MotorDelayMod_n_7),
        .D(next_position[3]),
        .Q(\position_reg[1]_0 [3]),
        .R(\position[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002C03)) 
    \segments_reg[1]_i_3 
       (.I0(\position_reg[1]_0 [0]),
        .I1(\position_reg[1]_0 [3]),
        .I2(\position_reg[1]_0 [2]),
        .I3(\position_reg[1]_0 [1]),
        .I4(Q[1]),
        .O(\seg[6] ));
  LUT5 #(
    .INIT(32'h9200DB00)) 
    \segments_reg[2]_i_2 
       (.I0(\position_reg[1]_0 [2]),
        .I1(\position_reg[1]_0 [1]),
        .I2(\position_reg[1]_0 [3]),
        .I3(\ansel_reg[6] ),
        .I4(\position_reg[1]_0 [0]),
        .O(\segments_reg[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00A8)) 
    \segments_reg[2]_i_3 
       (.I0(\position_reg[1]_0 [3]),
        .I1(\position_reg[1]_0 [1]),
        .I2(\position_reg[1]_0 [2]),
        .I3(Q[2]),
        .O(\segments_reg[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h7D)) 
    \segments_reg[3]_i_2 
       (.I0(\position_reg[1]_0 [2]),
        .I1(\position_reg[1]_0 [1]),
        .I2(\position_reg[1]_0 [3]),
        .O(\segments_reg[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \segments_reg[3]_i_6 
       (.I0(\position_reg[1]_0 [1]),
        .I1(\position_reg[1]_0 [2]),
        .O(\seg[4] ));
  LUT6 #(
    .INIT(64'h6B00000000000000)) 
    \segments_reg[4]_i_2 
       (.I0(\segments_reg[6]_i_4_n_0 ),
        .I1(\position_reg[1]_0 [0]),
        .I2(\segments_reg[6]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[2]),
        .O(\segments_reg[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9B)) 
    \segments_reg[6]_i_3 
       (.I0(\position_reg[1]_0 [3]),
        .I1(\position_reg[1]_0 [1]),
        .I2(\position_reg[1]_0 [2]),
        .O(\segments_reg[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \segments_reg[6]_i_4 
       (.I0(\position_reg[1]_0 [1]),
        .I1(\position_reg[1]_0 [3]),
        .I2(\position_reg[1]_0 [2]),
        .O(\segments_reg[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF5400)) 
    \segments_reg[7]_i_4 
       (.I0(Q[2]),
        .I1(\position_reg[1]_0 [2]),
        .I2(\position_reg[1]_0 [1]),
        .I3(\position_reg[1]_0 [3]),
        .I4(\ansel_reg[4] ),
        .O(\segments_reg[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h6006FFFF)) 
    \segments_reg[7]_i_5 
       (.I0(\position_reg[1]_0 [0]),
        .I1(\position_reg[1]_0 [2]),
        .I2(\position_reg[1]_0 [1]),
        .I3(\position_reg[1]_0 [3]),
        .I4(\ansel_reg[6] ),
        .O(\segments_reg[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hA888)) 
    \stop_requests[0]_i_1 
       (.I0(\stop_requests[0]_i_2_n_0 ),
        .I1(\stop_requests_reg[7]_0 [0]),
        .I2(sw_IBUF[0]),
        .I3(btnC_IBUF),
        .O(\stop_requests_reg[7] [0]));
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \stop_requests[0]_i_2 
       (.I0(\position_reg[1]_0 [2]),
        .I1(\position_reg[1]_0 [0]),
        .I2(\position_reg[1]_0 [1]),
        .I3(\position_reg[1]_0 [3]),
        .I4(door_ind),
        .O(\stop_requests[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8F8F800)) 
    \stop_requests[1]_i_1 
       (.I0(sw_IBUF[1]),
        .I1(btnC_IBUF),
        .I2(\stop_requests_reg[7]_0 [1]),
        .I3(\stop_requests[5]_i_2_n_0 ),
        .I4(\stop_requests[6]_i_2_n_0 ),
        .I5(\next_position_reg[2]_C_0 ),
        .O(\stop_requests_reg[7] [1]));
  LUT6 #(
    .INIT(64'hECECEC00EC00EC00)) 
    \stop_requests[2]_i_1 
       (.I0(\stop_requests[2]_i_2_n_0 ),
        .I1(\stop_requests[2]_i_3_n_0 ),
        .I2(\stop_requests[2]_i_4_n_0 ),
        .I3(\stop_requests_reg[7]_0 [2]),
        .I4(btnC_IBUF),
        .I5(sw_IBUF[2]),
        .O(\stop_requests_reg[7] [2]));
  LUT4 #(
    .INIT(16'hFF01)) 
    \stop_requests[2]_i_2 
       (.I0(last_move),
        .I1(last_move_reg_i_4_n_0),
        .I2(\position_reg[3]_0 ),
        .I3(\stop_requests[6]_i_2_n_0 ),
        .O(\stop_requests[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \stop_requests[2]_i_3 
       (.I0(\position_reg[1]_0 [2]),
        .I1(\position_reg[1]_0 [0]),
        .I2(\position_reg[1]_0 [1]),
        .O(\stop_requests[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFFFFFF10FF)) 
    \stop_requests[2]_i_4 
       (.I0(\position_reg[3]_0 ),
        .I1(last_move_reg_i_4_n_0),
        .I2(last_move),
        .I3(door_ind),
        .I4(\position_reg[1]_0 [3]),
        .I5(\stop_requests[7]_i_2_n_0 ),
        .O(\stop_requests[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F8F8F800F8F8)) 
    \stop_requests[3]_i_1 
       (.I0(sw_IBUF[3]),
        .I1(btnC_IBUF),
        .I2(\stop_requests_reg[7]_0 [3]),
        .I3(\stop_requests[6]_i_2_n_0 ),
        .I4(\position_reg[1]_0 [2]),
        .I5(\down_requests_reg[3] ),
        .O(\stop_requests_reg[7] [3]));
  LUT2 #(
    .INIT(4'hE)) 
    \stop_requests[3]_i_2 
       (.I0(\position_reg[1]_0 [1]),
        .I1(\position_reg[1]_0 [0]),
        .O(\down_requests_reg[3] ));
  LUT5 #(
    .INIT(32'hDDD0D0D0)) 
    \stop_requests[4]_i_1 
       (.I0(\position_reg[1]_0 [2]),
        .I1(\stop_requests[4]_i_2_n_0 ),
        .I2(\stop_requests_reg[7]_0 [4]),
        .I3(sw_IBUF[4]),
        .I4(btnC_IBUF),
        .O(\stop_requests_reg[7] [4]));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \stop_requests[4]_i_2 
       (.I0(door_ind),
        .I1(\position_reg[1]_0 [3]),
        .I2(\position_reg[1]_0 [1]),
        .I3(\position_reg[1]_0 [0]),
        .O(\stop_requests[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F800F8F8F8F8)) 
    \stop_requests[5]_i_1 
       (.I0(sw_IBUF[5]),
        .I1(btnC_IBUF),
        .I2(\stop_requests_reg[7]_0 [5]),
        .I3(\stop_requests[5]_i_2_n_0 ),
        .I4(\stop_requests[6]_i_2_n_0 ),
        .I5(\next_position_reg[2]_C_0 ),
        .O(\stop_requests_reg[7] [5]));
  LUT2 #(
    .INIT(4'hB)) 
    \stop_requests[5]_i_2 
       (.I0(\position_reg[1]_0 [0]),
        .I1(\position_reg[1]_0 [1]),
        .O(\stop_requests[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F8F8F800F8F8)) 
    \stop_requests[6]_i_1 
       (.I0(sw_IBUF[6]),
        .I1(btnC_IBUF),
        .I2(\stop_requests_reg[7]_0 [6]),
        .I3(\stop_requests[6]_i_2_n_0 ),
        .I4(\position_reg[1]_0 [2]),
        .I5(\down_requests_reg[6] ),
        .O(\stop_requests_reg[7] [6]));
  LUT5 #(
    .INIT(32'hFE01FFFF)) 
    \stop_requests[6]_i_2 
       (.I0(\position_reg[1]_0 [2]),
        .I1(\position_reg[1]_0 [0]),
        .I2(\position_reg[1]_0 [1]),
        .I3(\position_reg[1]_0 [3]),
        .I4(door_ind),
        .O(\stop_requests[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \stop_requests[6]_i_3 
       (.I0(\position_reg[1]_0 [1]),
        .I1(\position_reg[1]_0 [0]),
        .O(\down_requests_reg[6] ));
  LUT6 #(
    .INIT(64'h00F8F8F8F8F8F8F8)) 
    \stop_requests[7]_i_1 
       (.I0(btnC_IBUF),
        .I1(sw_IBUF[7]),
        .I2(\stop_requests_reg[7]_0 [7]),
        .I3(\stop_requests[7]_i_2_n_0 ),
        .I4(\position_reg[1]_0 [3]),
        .I5(door_ind),
        .O(\stop_requests_reg[7] [7]));
  LUT3 #(
    .INIT(8'h01)) 
    \stop_requests[7]_i_2 
       (.I0(\position_reg[1]_0 [2]),
        .I1(\position_reg[1]_0 [0]),
        .I2(\position_reg[1]_0 [1]),
        .O(\stop_requests[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA888)) 
    \up_requests[0]_i_1 
       (.I0(\stop_requests[0]_i_2_n_0 ),
        .I1(\up_requests_reg[6]_0 [0]),
        .I2(btnU_IBUF),
        .I3(sw_IBUF[0]),
        .O(\up_requests_reg[6] [0]));
  LUT6 #(
    .INIT(64'hFEFEFE00FE00FE00)) 
    \up_requests[1]_i_1 
       (.I0(\stop_requests[5]_i_2_n_0 ),
        .I1(\stop_requests[2]_i_2_n_0 ),
        .I2(\position_reg[1]_0 [2]),
        .I3(\up_requests_reg[6]_0 [1]),
        .I4(btnU_IBUF),
        .I5(sw_IBUF[1]),
        .O(\up_requests_reg[6] [1]));
  LUT6 #(
    .INIT(64'hFEFEFE00FE00FE00)) 
    \up_requests[2]_i_1 
       (.I0(\stop_requests[2]_i_2_n_0 ),
        .I1(\position_reg[1]_0 [2]),
        .I2(\down_requests_reg[6] ),
        .I3(\up_requests_reg[6]_0 [2]),
        .I4(btnU_IBUF),
        .I5(sw_IBUF[2]),
        .O(\up_requests_reg[6] [2]));
  LUT6 #(
    .INIT(64'hFDFDFD00FD00FD00)) 
    \up_requests[3]_i_1 
       (.I0(\position_reg[1]_0 [2]),
        .I1(\down_requests_reg[3] ),
        .I2(\stop_requests[2]_i_2_n_0 ),
        .I3(\up_requests_reg[6]_0 [3]),
        .I4(btnU_IBUF),
        .I5(sw_IBUF[3]),
        .O(\up_requests_reg[6] [3]));
  LUT6 #(
    .INIT(64'hDFDFDF00DF00DF00)) 
    \up_requests[4]_i_1 
       (.I0(\up_requests[4]_i_2_n_0 ),
        .I1(\stop_requests[2]_i_2_n_0 ),
        .I2(\position_reg[1]_0 [0]),
        .I3(\up_requests_reg[6]_0 [4]),
        .I4(btnU_IBUF),
        .I5(sw_IBUF[4]),
        .O(\up_requests_reg[6] [4]));
  LUT2 #(
    .INIT(4'h2)) 
    \up_requests[4]_i_2 
       (.I0(\position_reg[1]_0 [2]),
        .I1(\position_reg[1]_0 [1]),
        .O(\up_requests[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFD00FD00FD00)) 
    \up_requests[5]_i_1 
       (.I0(\position_reg[1]_0 [2]),
        .I1(\stop_requests[5]_i_2_n_0 ),
        .I2(\stop_requests[2]_i_2_n_0 ),
        .I3(\up_requests_reg[6]_0 [5]),
        .I4(btnU_IBUF),
        .I5(sw_IBUF[5]),
        .O(\up_requests_reg[6] [5]));
  LUT6 #(
    .INIT(64'hFBFBFB00FB00FB00)) 
    \up_requests[6]_i_1 
       (.I0(\stop_requests[2]_i_2_n_0 ),
        .I1(\position_reg[1]_0 [0]),
        .I2(\up_requests[6]_i_2_n_0 ),
        .I3(\up_requests_reg[6]_0 [6]),
        .I4(btnU_IBUF),
        .I5(sw_IBUF[6]),
        .O(\up_requests_reg[6] [6]));
  LUT2 #(
    .INIT(4'h7)) 
    \up_requests[6]_i_2 
       (.I0(\position_reg[1]_0 [1]),
        .I1(\position_reg[1]_0 [2]),
        .O(\up_requests[6]_i_2_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
