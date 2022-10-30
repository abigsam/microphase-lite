#Constraints for Expansion board


# #JP1 GPIO1 (BANK34, 3V3) **************************************************************************
# #PMOD X1
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN N17} [get_ports { J1_PMOD_X1[0] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN R16} [get_ports { J1_PMOD_X1[1] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN T16} [get_ports { J1_PMOD_X1[2] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN W18} [get_ports { J1_PMOD_X1[3] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN P18} [get_ports { J1_PMOD_X1[4] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN R17} [get_ports { J1_PMOD_X1[5] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN U17} [get_ports { J1_PMOD_X1[6] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN W19} [get_ports { J1_PMOD_X1[7] }];
# #PMOD X2
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN Y18} [get_ports { J1_PMOD_X2[0] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN Y16} [get_ports { J1_PMOD_X2[1] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN V17} [get_ports { J1_PMOD_X2[2] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN W14} [get_ports { J1_PMOD_X2[3] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN Y19} [get_ports { J1_PMOD_X2[4] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN Y17} [get_ports { J1_PMOD_X2[5] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN V18} [get_ports { J1_PMOD_X2[6] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN Y14} [get_ports { J1_PMOD_X2[7] }];
# #PMOD X3
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN V16} [get_ports { J1_PMOD_X3[0] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN T17} [get_ports { J1_PMOD_X3[1] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN V12} [get_ports { J1_PMOD_X3[2] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN T14} [get_ports { J1_PMOD_X3[3] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN W16} [get_ports { J1_PMOD_X3[4] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN R18} [get_ports { J1_PMOD_X3[5] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN W13} [get_ports { J1_PMOD_X3[6] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN T15} [get_ports { J1_PMOD_X3[7] }];
# #PMOD X4
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN P14} [get_ports { J1_PMOD_X4[0] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN U14} [get_ports { J1_PMOD_X4[1] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN U13} [get_ports { J1_PMOD_X4[2] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN T12} [get_ports { J1_PMOD_X4[3] }]; #Shared with PL_KEY2
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN R14} [get_ports { J1_PMOD_X4[4] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN U15} [get_ports { J1_PMOD_X4[5] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN V13} [get_ports { J1_PMOD_X4[6] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN U12} [get_ports { J1_PMOD_X4[7] }]; #Shared with PL_LED2
 #Onboard LEDs
 set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN V15} [get_ports { GPIO1_LED[0] }];
 set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN W15} [get_ports { GPIO1_LED[1] }];
 set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN T11} [get_ports { GPIO1_LED[2] }];
 set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN T10} [get_ports { GPIO1_LED[3] }];


# #JP2 GPIO2 (BANK34, 3V3) **************************************************************************
# #PMOD X1
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN L16} [get_ports { J2_PMOD_X1[0] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN H15} [get_ports { J2_PMOD_X1[1] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN F16} [get_ports { J2_PMOD_X1[2] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN E18} [get_ports { J2_PMOD_X1[3] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN L17} [get_ports { J2_PMOD_X1[4] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN G15} [get_ports { J2_PMOD_X1[5] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN F17} [get_ports { J2_PMOD_X1[6] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN E19} [get_ports { J2_PMOD_X1[7] }];
# #PMOD X2
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN B19} [get_ports { J2_PMOD_X2[0] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN D19} [get_ports { J2_PMOD_X2[1] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN E17} [get_ports { J2_PMOD_X2[2] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN H16} [get_ports { J2_PMOD_X2[3] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN A20} [get_ports { J2_PMOD_X2[4] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN D20} [get_ports { J2_PMOD_X2[5] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN D18} [get_ports { J2_PMOD_X2[6] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN H17} [get_ports { J2_PMOD_X2[7] }];
# #PMOD X3
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN G19} [get_ports { J2_PMOD_X3[0] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN J18} [get_ports { J2_PMOD_X3[1] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN K16} [get_ports { J2_PMOD_X3[2] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN C20} [get_ports { J2_PMOD_X3[3] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN G20} [get_ports { J2_PMOD_X3[4] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN H18} [get_ports { J2_PMOD_X3[5] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN J16} [get_ports { J2_PMOD_X3[6] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN B20} [get_ports { J2_PMOD_X3[7] }];
# #PMOD X4
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN F19} [get_ports { J2_PMOD_X4[0] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN M19} [get_ports { J2_PMOD_X4[1] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN K19} [get_ports { J2_PMOD_X4[2] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN J20} [get_ports { J2_PMOD_X4[3] }]; #Shared with ETH_nRST
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN F20} [get_ports { J2_PMOD_X4[4] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN M20} [get_ports { J2_PMOD_X4[5] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN J19} [get_ports { J2_PMOD_X4[6] }];
# set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN H20} [get_ports { J2_PMOD_X4[7] }];

 #Onboard LEDs
 set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN L19} [get_ports { GPIO2_LED[0] }];
 set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN L20} [get_ports { GPIO2_LED[1] }];
 set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN G17} [get_ports { GPIO2_LED[2] }];
 set_property -dict { IOSTANDARD LVCMOS33 PACKAGE_PIN G18} [get_ports { GPIO2_LED[3] }];