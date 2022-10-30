# Clock Signal for PL (50 MHz)
set_property -dict { PACKAGE_PIN N18 IOSTANDARD LVCMOS33 } [get_ports { PL_CLK_50M }]; #IO_L13P_T2_MRCC_34 Sch=PL_CLK_50M
create_clock -add -name sys_clk_pin -period 20.00 -waveform {0 10} [get_ports { PL_CLK_50M }];


##LED (active low), PL_LED2 shared with J1N[17]
#set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN P15 } [get_ports { PL_LED1 }]; #IO_L24P_T3_34
#set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN U12 } [get_ports { PL_LED2 }]; #IO_L2N_T0_34


# #Button (active low), PL_KEY2 shared with J1P[17]
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN P16 } [get_ports { PL_KEY1 }]; #IO_L24N_T3_34
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN T12 } [get_ports { PL_KEY2 }]; #IO_L2P_T0_34


##--------------------------------------------------------------------------------------+-----------+---------+
## JP1 GPIO1 (BANK34, 3V3)                                                              |     Net   |  Conn.  |
##--------------------------------------------------------------------------------------+-----------+---------+
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN N17} [get_ports  {GPIO1_0P}];    # GPIO1_0P  | JP1[1]  |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN R16} [get_ports  {GPIO1_1P}];    # GPIO1_1P  | JP1[3]  |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN T16} [get_ports  {GPIO1_2P}];    # GPIO1_2P  | JP1[5]  |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN W18} [get_ports  {GPIO1_3P}];    # GPIO1_3P  | JP1[7]  |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN Y18} [get_ports  {GPIO1_4P}];    # GPIO1_4P  | JP1[9]  |
##                                                                                      # VCC_5V    | JP1[11] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN Y16} [get_ports  {GPIO1_5P}];    # GPIO1_5P  | JP1[13] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN V17} [get_ports  {GPIO1_6P}];    # GPIO1_6P  | JP1[15] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN W14} [get_ports  {GPIO1_7P}];    # GPIO1_7P  | JP1[17] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN V16} [get_ports  {GPIO1_8P}];    # GPIO1_8P  | JP1[19] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN T17} [get_ports  {GPIO1_9P}];    # GPIO1_9P  | JP1[21] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN V12} [get_ports {GPIO1_10P}];    # GPIO1_10P | JP1[23] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN T14} [get_ports {GPIO1_11P}];    # GPIO1_11P | JP1[25] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN T11} [get_ports {GPIO1_12P}];    # GPIO1_12P | JP1[27] |
##                                                                                      # VCC_3V3   | JP1[29] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN V15} [get_ports {GPIO1_13P}];    # GPIO1_13P | JP1[31] | 
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN P14} [get_ports {GPIO1_14P}];    # GPIO1_14P | JP1[33] | 
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN U14} [get_ports {GPIO1_15P}];    # GPIO1_15P | JP1[35] | 
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN U13} [get_ports {GPIO1_16P}];    # GPIO1_16P | JP1[37] | 
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN T12} [get_ports {GPIO1_17P}];    # GPIO1_17P | JP1[39] | Shared with PL_KEY2
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN P18} [get_ports  {GPIO1_0N}];    # GPIO1_0N  | JP1[2]  |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN R17} [get_ports  {GPIO1_1N}];    # GPIO1_1N  | JP1[4]  |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN U17} [get_ports  {GPIO1_2N}];    # GPIO1_2N  | JP1[6]  |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN W19} [get_ports  {GPIO1_3N}];    # GPIO1_3N  | JP1[8]  |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN Y19} [get_ports  {GPIO1_4N}];    # GPIO1_4N  | JP1[10] |
##                                                                                      # GND       | JP1[12] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN Y17} [get_ports  {GPIO1_5N}];    # GPIO1_5N  | JP1[14] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN V18} [get_ports  {GPIO1_6N}];    # GPIO1_6N  | JP1[16] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN Y14} [get_ports  {GPIO1_7N}];    # GPIO1_7N  | JP1[18] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN W16} [get_ports  {GPIO1_8N}];    # GPIO1_8N  | JP1[20] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN R18} [get_ports  {GPIO1_9N}];    # GPIO1_9N  | JP1[22] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN W13} [get_ports {GPIO1_10N}];    # GPIO1_10N | JP1[24] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN T15} [get_ports {GPIO1_11N}];    # GPIO1_11N | JP1[26] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN T10} [get_ports {GPIO1_12N}];    # GPIO1_12N | JP1[28] |
##                                                                                      # GND       | JP1[30] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN W15} [get_ports {GPIO1_13N}];    # GPIO1_13N | JP1[32] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN R14} [get_ports {GPIO1_14N}];    # GPIO1_14N | JP1[34] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN U15} [get_ports {GPIO1_15N}];    # GPIO1_15N | JP1[36] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN V13} [get_ports {GPIO1_16N}];    # GPIO1_16N | JP1[38] |
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN U12} [get_ports {GPIO1_17N}];    # GPIO1_17N | JP1[40] | Shared with PL_LED2


##--------------------------------------------------------------------------------------+-----------+---------+
## JP2 GPIO2 (BANK35 3V3)                                                               |     Net   |  Conn.  |
##--------------------------------------------------------------------------------------+-----------+---------+
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN L16} [get_ports  {GPIO2_0P}];          # GPIO2_0P  | JP2[1]  |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN H15} [get_ports  {GPIO2_1P}];          # GPIO2_1P  | JP2[3]  |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN F16} [get_ports  {GPIO2_2P}];          # GPIO2_2P  | JP2[5]  |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN E18} [get_ports  {GPIO2_3P}];          # GPIO2_3P  | JP2[7]  |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN B19} [get_ports  {GPIO2_4P}];          # GPIO2_4P  | JP2[9]  |
##                                                                                      # VCC_5V    | JP2[11] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN D19} [get_ports  {GPIO2_5P}];          # GPIO2_5P  | JP2[13] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN E17} [get_ports  {GPIO2_6P}];          # GPIO2_6P  | JP2[15] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN H16} [get_ports  {GPIO2_7P}];          # GPIO2_7P  | JP2[17] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN G19} [get_ports  {GPIO2_8P}];          # GPIO2_8P  | JP2[19] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN J18} [get_ports  {GPIO2_9P}];          # GPIO2_9P  | JP2[11] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN K16} [get_ports {GPIO2_10P}];          # GPIO2_10P | JP2[23] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN C20} [get_ports {GPIO2_11P}];          # GPIO2_11P | JP2[25] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN G17} [get_ports {GPIO2_12P}];          # GPIO2_12P | JP2[27] |
##                                                                                      # VCC_3V3   | JP2[29] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN L19} [get_ports {GPIO2_13P}];          # GPIO2_13P | JP2[31] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN F19} [get_ports {GPIO2_14P}];          # GPIO2_14P | JP2[33] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN M19} [get_ports {GPIO2_15P}];          # GPIO2_15P | JP2[35] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN K19} [get_ports {GPIO2_16P}];          # GPIO2_16P | JP2[37] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN J20} [get_ports {GPIO2_17P}];          # GPIO2_17P | JP2[39] | Shared with ETH_nRST
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN L17} [get_ports  {GPIO2_0N}];          # GPIO2_0N  | JP2[2]  |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN G15} [get_ports  {GPIO2_1N}];          # GPIO2_1N  | JP2[4]  |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN F17} [get_ports  {GPIO2_2N}];          # GPIO2_2N  | JP2[6]  |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN E19} [get_ports  {GPIO2_3N}];          # GPIO2_3N  | JP2[8]  |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN A20} [get_ports  {GPIO2_4N}];          # GPIO2_4N  | JP2[10] |
##                                                                                      # GND       | JP2[12] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN D20} [get_ports  {GPIO2_5N}];          # GPIO2_5N  | JP2[14] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN D18} [get_ports  {GPIO2_6N}];          # GPIO2_6N  | JP2[16] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN H17} [get_ports  {GPIO2_7N}];          # GPIO2_7N  | JP2[18] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN G20} [get_ports  {GPIO2_8N}];          # GPIO2_8N  | JP2[20] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN H18} [get_ports  {GPIO2_9N}];          # GPIO2_9N  | JP2[22] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN J16} [get_ports {GPIO2_10N}];          # GPIO2_10N | JP2[24] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN B20} [get_ports {GPIO2_11N}];          # GPIO2_11N | JP2[26] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN G18} [get_ports {GPIO2_12N}];          # GPIO2_12N | JP2[28] |
##                                                                                      # VCC_3V3   | JP2[29] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN L20} [get_ports {GPIO2_13N}];          # GPIO2_13N | JP2[32] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN F20} [get_ports {GPIO2_14N}];          # GPIO2_14N | JP2[34] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN M20} [get_ports {GPIO2_15N}];          # GPIO2_15N | JP2[36] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN J19} [get_ports {GPIO2_16N}];          # GPIO2_16N | JP2[38] |
# set_property { IOSTANDARD LVCMOS33 PACKAGE_PIN H20} [get_ports {GPIO2_17N}];          # GPIO2_17N | JP2[40] |


# #HDMI
# set_property -dict { IOSTANDARD LVCMOS33 } [get_ports "HDMI*"];
# set_property PACKAGE_PIN R19 [get_ports { HDMI1_I2C_SCL }];
# set_property PACKAGE_PIN T19 [get_ports { HDMI1_I2C_SDA }];
# set_property PACKAGE_PIN P19 [get_ports { HDMI1_HPDN }];
# set_property PACKAGE_PIN V20 [get_ports { HDMI1_D_P[0] }];
# set_property PACKAGE_PIN T20 [get_ports { HDMI1_D_P[1] }];
# set_property PACKAGE_PIN N20 [get_ports { HDMI1_D_P[2] }];
# set_property PACKAGE_PIN W20 [get_ports { HDMI1_D_N[0] }];
# set_property PACKAGE_PIN U20 [get_ports { HDMI1_D_N[1] }];
# set_property PACKAGE_PIN P20 [get_ports { HDMI1_D_N[2] }];
# set_property PACKAGE_PIN U18 [get_ports { HDMI1_CLK_P }];
# set_property PACKAGE_PIN U19 [get_ports { HDMI1_CLK_N }];


#Ethernet PHY (RTL8201F), ETH_MII_rst_n shared with J2P[17]
# set_property -dict { IOSTANDARD LVCMOS33 } [get_ports "ETH_MII*"];
# set_property -dict { IOSTANDARD LVCMOS33 } [get_ports "MDIO_ETHERNET_0*"];
# set_property PACKAGE_PIN J14 [get_ports { ETH_MII_rxd[0] }];
# set_property PACKAGE_PIN K14 [get_ports { ETH_MII_rxd[1] }];
# set_property PACKAGE_PIN M18 [get_ports { ETH_MII_rxd[2] }];
# set_property PACKAGE_PIN M17 [get_ports { ETH_MII_rxd[3] }];
# set_property PACKAGE_PIN M14 [get_ports { ETH_MII_txd[0] }];
# set_property PACKAGE_PIN L15 [get_ports { ETH_MII_txd[1] }];
# set_property PACKAGE_PIN M15 [get_ports { ETH_MII_txd[2] }];
# set_property PACKAGE_PIN N15 [get_ports { ETH_MII_txd[3] }];
# set_property PACKAGE_PIN N16 [get_ports { ETH_MII_tx_en }];
# set_property PACKAGE_PIN L14 [get_ports { ETH_MII_tx_clk }];
# set_property PACKAGE_PIN K18 [get_ports { ETH_MII_rx_dv }];
# set_property PACKAGE_PIN K17 [get_ports { ETH_MII_rx_clk }];
# set_property PACKAGE_PIN J20 [get_ports { ETH_MII_rst_n }];
# set_property PACKAGE_PIN G14 [get_ports {MDIO_ETHERNET_0_mdc}];
# set_property PACKAGE_PIN J15 [get_ports {MDIO_ETHERNET_0_mdio_io}];
