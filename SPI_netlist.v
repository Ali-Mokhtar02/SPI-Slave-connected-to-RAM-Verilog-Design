// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Aug 17 19:04:54 2023
// Host        : Ali-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force SPI_netlist.v
// Design      : spi_Interface
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SPI_SLAVE
   (MISO_OBUF,
    rx_valid_reg_0,
    Q,
    tx_valid_reg,
    \rx_data_reg[8]_0 ,
    mem_reg,
    WEA,
    E,
    \read_address_reg[7] ,
    CLK,
    tx_valid,
    SS_n_IBUF,
    MOSI_IBUF,
    rst_n_IBUF,
    DOBDO,
    mem_reg_0);
  output MISO_OBUF;
  output rx_valid_reg_0;
  output [2:0]Q;
  output tx_valid_reg;
  output [7:0]\rx_data_reg[8]_0 ;
  output mem_reg;
  output [0:0]WEA;
  output [0:0]E;
  output [0:0]\read_address_reg[7] ;
  input CLK;
  input tx_valid;
  input SS_n_IBUF;
  input MOSI_IBUF;
  input rst_n_IBUF;
  input [4:0]DOBDO;
  input mem_reg_0;

  wire \<const1> ;
  wire CLK;
  wire [4:0]DOBDO;
  wire [0:0]E;
  wire \FSM_sequential_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_cs[2]_i_1_n_0 ;
  wire GND_1;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MISO_i_2_n_0;
  wire MISO_i_3_n_0;
  wire MISO_i_4_n_0;
  wire MISO_i_5_n_0;
  wire MOSI_IBUF;
  wire [2:0]Q;
  wire SS_n_IBUF;
  wire VCC_2;
  wire [0:0]WEA;
  wire counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter[3]_i_4_n_0 ;
  wire \counter[3]_i_5_n_0 ;
  wire \counter_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire [2:0]cs;
  wire mem_reg;
  wire mem_reg_0;
  wire [0:0]\read_address_reg[7] ;
  wire recieved_address;
  wire recieved_address_reg_i_1_n_0;
  wire recieved_address_reg_i_2_n_0;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire \rx_data[9]_i_1_n_0 ;
  wire [7:0]\rx_data_reg[8]_0 ;
  wire rx_valid;
  wire rx_valid_i_1_n_0;
  wire rx_valid_i_2_n_0;
  wire rx_valid_i_3_n_0;
  wire rx_valid_i_4_n_0;
  wire rx_valid_reg_0;
  wire tx_valid;
  wire tx_valid_reg;

  LUT6 #(
    .INIT(64'h0041004100710041)) 
    \FSM_sequential_cs[0]_i_1 
       (.I0(SS_n_IBUF),
        .I1(cs[1]),
        .I2(cs[0]),
        .I3(cs[2]),
        .I4(MOSI_IBUF),
        .I5(recieved_address),
        .O(\FSM_sequential_cs[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00005C50)) 
    \FSM_sequential_cs[1]_i_1 
       (.I0(SS_n_IBUF),
        .I1(MOSI_IBUF),
        .I2(cs[1]),
        .I3(cs[0]),
        .I4(cs[2]),
        .O(\FSM_sequential_cs[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55550300)) 
    \FSM_sequential_cs[2]_i_1 
       (.I0(SS_n_IBUF),
        .I1(MOSI_IBUF),
        .I2(cs[1]),
        .I3(cs[0]),
        .I4(cs[2]),
        .O(\FSM_sequential_cs[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_cs[2]_i_2 
       (.I0(rst_n_IBUF),
        .O(rx_valid_reg_0));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,READ_ADD:011,READ_DATA:010,WRITE:100,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(\FSM_sequential_cs[0]_i_1_n_0 ),
        .Q(cs[0]));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,READ_ADD:011,READ_DATA:010,WRITE:100,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(\FSM_sequential_cs[1]_i_1_n_0 ),
        .Q(cs[1]));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,READ_ADD:011,READ_DATA:010,WRITE:100,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(\FSM_sequential_cs[2]_i_1_n_0 ),
        .Q(cs[2]));
  GND GND
       (.G(GND_1));
  LUT5 #(
    .INIT(32'hFFF80000)) 
    MISO_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\counter_reg_n_0_[3] ),
        .I3(Q[2]),
        .I4(\counter[3]_i_5_n_0 ),
        .O(MISO_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEFEEE)) 
    MISO_i_2
       (.I0(MISO_i_3_n_0),
        .I1(MISO_i_4_n_0),
        .I2(DOBDO[3]),
        .I3(Q[2]),
        .I4(MISO_i_5_n_0),
        .I5(mem_reg_0),
        .O(MISO_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02030200)) 
    MISO_i_3
       (.I0(DOBDO[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(DOBDO[4]),
        .O(MISO_i_3_n_0));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    MISO_i_4
       (.I0(DOBDO[0]),
        .I1(DOBDO[2]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(MISO_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    MISO_i_5
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(MISO_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(CLK),
        .CE(MISO_i_1_n_0),
        .CLR(rx_valid_reg_0),
        .D(MISO_i_2_n_0),
        .Q(MISO_OBUF));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  LUT6 #(
    .INIT(64'h0000FFFF00005700)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\counter[3]_i_4_n_0 ),
        .I4(Q[0]),
        .I5(\counter[3]_i_5_n_0 ),
        .O(\counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF232BFC00222A00)) 
    \counter[1]_i_1 
       (.I0(\counter[3]_i_4_n_0 ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\counter[3]_i_5_n_0 ),
        .O(\counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8BF02C0A8A80200)) 
    \counter[2]_i_1 
       (.I0(\counter[3]_i_5_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\counter_reg_n_0_[3] ),
        .I4(Q[2]),
        .I5(\counter[3]_i_4_n_0 ),
        .O(\counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F023303)) 
    \counter[3]_i_1 
       (.I0(tx_valid),
        .I1(cs[0]),
        .I2(cs[2]),
        .I3(\counter[3]_i_3_n_0 ),
        .I4(cs[1]),
        .O(counter));
  LUT6 #(
    .INIT(64'hCCCECCCAA0000000)) 
    \counter[3]_i_2 
       (.I0(\counter[3]_i_4_n_0 ),
        .I1(\counter[3]_i_5_n_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\counter_reg_n_0_[3] ),
        .O(\counter[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \counter[3]_i_3 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\counter_reg_n_0_[3] ),
        .O(\counter[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h05B0)) 
    \counter[3]_i_4 
       (.I0(cs[0]),
        .I1(tx_valid),
        .I2(cs[1]),
        .I3(cs[2]),
        .O(\counter[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \counter[3]_i_5 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(tx_valid),
        .I3(cs[0]),
        .O(\counter[3]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(counter),
        .CLR(rx_valid_reg_0),
        .D(\counter[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(counter),
        .CLR(rx_valid_reg_0),
        .D(\counter[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(counter),
        .CLR(rx_valid_reg_0),
        .D(\counter[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(counter),
        .CLR(rx_valid_reg_0),
        .D(\counter[3]_i_2_n_0 ),
        .Q(\counter_reg_n_0_[3] ));
  LUT4 #(
    .INIT(16'h80FF)) 
    mem_reg_i_1
       (.I0(rx_data[8]),
        .I1(rx_data[9]),
        .I2(rx_valid),
        .I3(rst_n_IBUF),
        .O(mem_reg));
  LUT3 #(
    .INIT(8'h20)) 
    mem_reg_i_2
       (.I0(rx_valid),
        .I1(rx_data[9]),
        .I2(rx_data[8]),
        .O(WEA));
  LUT3 #(
    .INIT(8'h20)) 
    \read_address[7]_i_1 
       (.I0(rx_valid),
        .I1(rx_data[8]),
        .I2(rx_data[9]),
        .O(\read_address_reg[7] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    recieved_address_reg
       (.CLR(GND_1),
        .D(recieved_address_reg_i_1_n_0),
        .G(recieved_address_reg_i_2_n_0),
        .GE(VCC_2),
        .Q(recieved_address));
  LUT1 #(
    .INIT(2'h1)) 
    recieved_address_reg_i_1
       (.I0(recieved_address),
        .O(recieved_address_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'h0400)) 
    recieved_address_reg_i_2
       (.I0(cs[2]),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(MOSI_IBUF),
        .O(recieved_address_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0A0B2B2B0A0A2A2A)) 
    \rx_data[9]_i_1 
       (.I0(\counter[3]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(\counter_reg_n_0_[3] ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\counter[3]_i_5_n_0 ),
        .O(\rx_data[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(rx_valid_reg_0),
        .D(MOSI_IBUF),
        .Q(\rx_data_reg[8]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(rx_valid_reg_0),
        .D(\rx_data_reg[8]_0 [0]),
        .Q(\rx_data_reg[8]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(rx_valid_reg_0),
        .D(\rx_data_reg[8]_0 [1]),
        .Q(\rx_data_reg[8]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(rx_valid_reg_0),
        .D(\rx_data_reg[8]_0 [2]),
        .Q(\rx_data_reg[8]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(rx_valid_reg_0),
        .D(\rx_data_reg[8]_0 [3]),
        .Q(\rx_data_reg[8]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(rx_valid_reg_0),
        .D(\rx_data_reg[8]_0 [4]),
        .Q(\rx_data_reg[8]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(rx_valid_reg_0),
        .D(\rx_data_reg[8]_0 [5]),
        .Q(\rx_data_reg[8]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(rx_valid_reg_0),
        .D(\rx_data_reg[8]_0 [6]),
        .Q(\rx_data_reg[8]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(rx_valid_reg_0),
        .D(\rx_data_reg[8]_0 [7]),
        .Q(rx_data[8]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(rx_valid_reg_0),
        .D(rx_data[8]),
        .Q(rx_data[9]));
  LUT6 #(
    .INIT(64'h1C00FFFF1C000000)) 
    rx_valid_i_1
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(rx_valid_i_2_n_0),
        .I4(rx_valid_i_3_n_0),
        .I5(rx_valid),
        .O(rx_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    rx_valid_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\counter_reg_n_0_[3] ),
        .O(rx_valid_i_2_n_0));
  LUT5 #(
    .INIT(32'h0C0C3E32)) 
    rx_valid_i_3
       (.I0(rst_n_IBUF),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(rx_valid_i_4_n_0),
        .I4(cs[0]),
        .O(rx_valid_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hDDDDDFF7)) 
    rx_valid_i_4
       (.I0(tx_valid),
        .I1(\counter_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(rx_valid_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rx_valid_reg_0),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE2220000)) 
    tx_valid_i_1
       (.I0(tx_valid),
        .I1(rx_valid),
        .I2(rx_data[9]),
        .I3(rx_data[8]),
        .I4(rst_n_IBUF),
        .O(tx_valid_reg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \write_address[7]_i_1 
       (.I0(rx_valid),
        .I1(rx_data[9]),
        .I2(rx_data[8]),
        .O(E));
endmodule

module spA_RAM
   (DOBDO,
    tx_valid,
    MISO_reg,
    CLK,
    rst_n_IBUF,
    \rx_data_reg[8] ,
    rst_n,
    Q,
    WEA,
    tx_valid_reg_0,
    \counter_reg[2] ,
    E,
    rx_valid_reg);
  output [4:0]DOBDO;
  output tx_valid;
  output MISO_reg;
  input CLK;
  input rst_n_IBUF;
  input \rx_data_reg[8] ;
  input rst_n;
  input [7:0]Q;
  input [0:0]WEA;
  input tx_valid_reg_0;
  input [2:0]\counter_reg[2] ;
  input [0:0]E;
  input [0:0]rx_valid_reg;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [4:0]DOBDO;
  wire [0:0]E;
  wire MISO_reg;
  wire [7:0]Q;
  wire [0:0]WEA;
  wire [2:0]\counter_reg[2] ;
  wire [7:0]read_address;
  wire rst_n;
  wire rst_n_IBUF;
  wire \rx_data_reg[8] ;
  wire [0:0]rx_valid_reg;
  wire [7:3]tx_data;
  wire tx_valid;
  wire tx_valid_reg_0;
  wire [7:0]write_address;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h00000A0ACFC00000)) 
    MISO_i_6
       (.I0(tx_data[6]),
        .I1(tx_data[3]),
        .I2(\counter_reg[2] [2]),
        .I3(tx_data[7]),
        .I4(\counter_reg[2] [1]),
        .I5(\counter_reg[2] [0]),
        .O(MISO_reg));
  VCC VCC
       (.P(\<const1> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,write_address,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,read_address,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO({tx_data[7:6],DOBDO[4:3],tx_data[3],DOBDO[2:0]}),
        .ENARDEN(rst_n_IBUF),
        .ENBWREN(\rx_data_reg[8] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(rst_n),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_reg[0] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[0]),
        .Q(read_address[0]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_reg[1] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[1]),
        .Q(read_address[1]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_reg[2] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[2]),
        .Q(read_address[2]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_reg[3] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[3]),
        .Q(read_address[3]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_reg[4] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[4]),
        .Q(read_address[4]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_reg[5] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[5]),
        .Q(read_address[5]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_reg[6] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[6]),
        .Q(read_address[6]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \read_address_reg[7] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[7]),
        .Q(read_address[7]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(tx_valid_reg_0),
        .Q(tx_valid),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(write_address[0]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(write_address[1]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(write_address[2]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(write_address[3]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(write_address[4]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(write_address[5]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(write_address[6]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .Q(write_address[7]),
        .R(rst_n));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module spi_Interface
   (MOSI,
    MISO,
    SS_n,
    clk,
    rst_n);
  input MOSI;
  output MISO;
  input SS_n;
  input clk;
  input rst_n;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire RAM_inst_n_6;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire mem;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire spi_inst_n_1;
  wire spi_inst_n_14;
  wire spi_inst_n_16;
  wire spi_inst_n_17;
  wire spi_inst_n_2;
  wire spi_inst_n_3;
  wire spi_inst_n_4;
  wire spi_inst_n_5;
  wire [5:0]tx_data;
  wire tx_valid;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  spA_RAM RAM_inst
       (.CLK(clk_IBUF_BUFG),
        .DOBDO({tx_data[5:4],tx_data[2:0]}),
        .E(spi_inst_n_16),
        .MISO_reg(RAM_inst_n_6),
        .Q(rx_data),
        .WEA(mem),
        .\counter_reg[2] ({spi_inst_n_2,spi_inst_n_3,spi_inst_n_4}),
        .rst_n(spi_inst_n_1),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8] (spi_inst_n_14),
        .rx_valid_reg(spi_inst_n_17),
        .tx_valid(tx_valid),
        .tx_valid_reg_0(spi_inst_n_5));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  SPI_SLAVE spi_inst
       (.CLK(clk_IBUF_BUFG),
        .DOBDO({tx_data[5:4],tx_data[2:0]}),
        .E(spi_inst_n_16),
        .MISO_OBUF(MISO_OBUF),
        .MOSI_IBUF(MOSI_IBUF),
        .Q({spi_inst_n_2,spi_inst_n_3,spi_inst_n_4}),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(mem),
        .mem_reg(spi_inst_n_14),
        .mem_reg_0(RAM_inst_n_6),
        .\read_address_reg[7] (spi_inst_n_17),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8]_0 (rx_data),
        .rx_valid_reg_0(spi_inst_n_1),
        .tx_valid(tx_valid),
        .tx_valid_reg(spi_inst_n_5));
endmodule
