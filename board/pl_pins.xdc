## Clock Signal
#set_property -dict { PACKAGE_PIN N18 IOSTANDARD LVCMOS33 } [get_ports { PL_CLK_50M }]; #IO_L13P_T2_MRCC_34 Sch=PL_CLK_50M
#create_clock -add -name sys_clk_pin -period 20.00 -waveform {0 10} [get_ports { PL_CLK_50M }];


#LED (active low), PL_LED2 shared with J1N[17]
set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN P15 } [get_ports { PL_LED1 }]; #IO_L24P_T3_34
set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN U12 } [get_ports { PL_LED2 }]; #IO_L2N_T0_34


# #Button (active low), PL_KEY2 shared with J1P[17]
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN P16 } [get_ports { PL_KEY1 }]; #IO_L24N_T3_34
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN T12 } [get_ports { PL_KEY2 }]; #IO_L2P_T0_34

# #JP1 (BANK34, 3V3), J1N[17] shared with PL_LED2
# set_property -dict { IOSTANDARD LVCMOS33 } [get_ports "J1*"];
# set_property PACKAGE_PIN N17 [get_ports { J1P[0] }];
# set_property PACKAGE_PIN R16 [get_ports { J1P[1] }];
# set_property PACKAGE_PIN T16 [get_ports { J1P[2] }];
# set_property PACKAGE_PIN W18 [get_ports { J1P[3] }];
# set_property PACKAGE_PIN Y18 [get_ports { J1P[4] }];
# set_property PACKAGE_PIN Y16 [get_ports { J1P[5] }];
# set_property PACKAGE_PIN V17 [get_ports { J1P[6] }];
# set_property PACKAGE_PIN W14 [get_ports { J1P[7] }];
# set_property PACKAGE_PIN V16 [get_ports { J1P[8] }];
# set_property PACKAGE_PIN T17 [get_ports { J1P[9] }];
# set_property PACKAGE_PIN V12 [get_ports { J1P[10] }];
# set_property PACKAGE_PIN T14 [get_ports { J1P[11] }];
# set_property PACKAGE_PIN T11 [get_ports { J1P[12] }];
# set_property PACKAGE_PIN V15 [get_ports { J1P[13] }];
# set_property PACKAGE_PIN P14 [get_ports { J1P[14] }];
# set_property PACKAGE_PIN U14 [get_ports { J1P[15] }];
# set_property PACKAGE_PIN U13 [get_ports { J1P[16] }];
# set_property PACKAGE_PIN T12 [get_ports { J1P[17] }];
# #
# set_property PACKAGE_PIN P18 [get_ports { J1N[0] }];
# set_property PACKAGE_PIN R17 [get_ports { J1N[1] }];
# set_property PACKAGE_PIN U17 [get_ports { J1N[2] }];
# set_property PACKAGE_PIN W19 [get_ports { J1N[3] }];
# set_property PACKAGE_PIN Y19 [get_ports { J1N[4] }];
# set_property PACKAGE_PIN Y17 [get_ports { J1N[5] }];
# set_property PACKAGE_PIN V18 [get_ports { J1N[6] }];
# set_property PACKAGE_PIN Y14 [get_ports { J1N[7] }];
# set_property PACKAGE_PIN W16 [get_ports { J1N[8] }];
# set_property PACKAGE_PIN R18 [get_ports { J1N[9] }];
# set_property PACKAGE_PIN W13 [get_ports { J1N[10] }];
# set_property PACKAGE_PIN T15 [get_ports { J1N[11] }];
# set_property PACKAGE_PIN T10 [get_ports { J1N[12] }];
# set_property PACKAGE_PIN W15 [get_ports { J1N[13] }];
# set_property PACKAGE_PIN R14 [get_ports { J1N[14] }];
# set_property PACKAGE_PIN U15 [get_ports { J1N[15] }];
# set_property PACKAGE_PIN V13 [get_ports { J1N[16] }];
# set_property PACKAGE_PIN U12 [get_ports { J1N[17] }];

# #JP2 (BANK35 3V3)
# set_property -dict { IOSTANDARD LVCMOS33 } [get_ports "J2*"];
# set_property PACKAGE_PIN L16 [get_ports { J2P[0] }];
# set_property PACKAGE_PIN H15 [get_ports { J2P[1] }];
# set_property PACKAGE_PIN F16 [get_ports { J2P[2] }];
# set_property PACKAGE_PIN E18 [get_ports { J2P[3] }];
# set_property PACKAGE_PIN B19 [get_ports { J2P[4] }];
# set_property PACKAGE_PIN D19 [get_ports { J2P[5] }];
# set_property PACKAGE_PIN E17 [get_ports { J2P[6] }];
# set_property PACKAGE_PIN H16 [get_ports { J2P[7] }];
# set_property PACKAGE_PIN G19 [get_ports { J2P[8] }];
# set_property PACKAGE_PIN J18 [get_ports { J2P[9] }];
# set_property PACKAGE_PIN K16 [get_ports { J2P[10] }];
# set_property PACKAGE_PIN C20 [get_ports { J2P[11] }];
# set_property PACKAGE_PIN G17 [get_ports { J2P[12] }];
# set_property PACKAGE_PIN L19 [get_ports { J2P[13] }];
# set_property PACKAGE_PIN F19 [get_ports { J2P[14] }];
# set_property PACKAGE_PIN M19 [get_ports { J2P[15] }];
# set_property PACKAGE_PIN K19 [get_ports { J2P[16] }];
# set_property PACKAGE_PIN J20 [get_ports { J2P[17] }]; #Shared with ETH_nRST
# #
# set_property PACKAGE_PIN L17 [get_ports { J2N[0] }];
# set_property PACKAGE_PIN G15 [get_ports { J2N[1] }];
# set_property PACKAGE_PIN F17 [get_ports { J2N[2] }];
# set_property PACKAGE_PIN E19 [get_ports { J2N[3] }];
# set_property PACKAGE_PIN A20 [get_ports { J2N[4] }];
# set_property PACKAGE_PIN D20 [get_ports { J2N[5] }];
# set_property PACKAGE_PIN D18 [get_ports { J2N[6] }];
# set_property PACKAGE_PIN H17 [get_ports { J2N[7] }];
# set_property PACKAGE_PIN G20 [get_ports { J2N[8] }];
# set_property PACKAGE_PIN H18 [get_ports { J2N[9] }];
# set_property PACKAGE_PIN J16 [get_ports { J2N[10] }];
# set_property PACKAGE_PIN B20 [get_ports { J2N[11] }];
# set_property PACKAGE_PIN G18 [get_ports { J2N[12] }];
# set_property PACKAGE_PIN L20 [get_ports { J2N[13] }];
# set_property PACKAGE_PIN F20 [get_ports { J2N[14] }];
# set_property PACKAGE_PIN M20 [get_ports { J2N[15] }];
# set_property PACKAGE_PIN J19 [get_ports { J2N[16] }];
# set_property PACKAGE_PIN H20 [get_ports { J2N[17] }];

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
