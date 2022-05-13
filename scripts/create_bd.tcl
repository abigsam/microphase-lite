proc create_bd {bd_name ps_name constr_path} {
    #Add ZYNQ PS
    create_bd_design ${bd_name}
    create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 ${ps_name}

    #Configure DDR
    set_property -dict [list \
        CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {16 Bit} \
        CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41K256M16 RE-125}] \
    [get_bd_cells ${ps_name}]

    #Disable GP0
    set_property -dict [list CONFIG.PCW_USE_M_AXI_GP0 {0}] [get_bd_cells ${ps_name}]

    #Configure periphery
    #QSPI
    set_property -dict [list \
        CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
        CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6}\
    ] [get_bd_cells ${ps_name}]

    #UART
    set_property -dict [list \
        CONFIG.PCW_UART0_BAUD_RATE {115200} \
        CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
        CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} \
        CONFIG.PCW_UART0_UART0_IO {MIO 14 .. 15} \
        CONFIG.PCW_UART0_GRP_FULL_ENABLE {0}\
    ] [get_bd_cells ${ps_name}]

    #SD
    set_property -dict [list \
        CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
        CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
        CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45}\
    ] [get_bd_cells ${ps_name}]

    #USB
    set_property -dict [list \
        CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
        CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
        CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
        CONFIG.PCW_USB0_RESET_ENABLE {1} \
        CONFIG.PCW_USB0_RESET_IO {MIO 46} \
        CONFIG.PCW_I2C_RESET_ENABLE {0} \
        CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1}\
    ] [get_bd_cells ${ps_name}]

    #External ZYNQ IOs
    apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" Master "Disable" Slave "Disable" }  [get_bd_cells ${ps_name}]
    validate_bd_design
    save_bd_design

    #Connect PL LEDs to '1'
    add_files -fileset constrs_1 -norecurse ${constr_path}/pl_pins.xdc
    set_property used_in_synthesis false [get_files  ${constr_path}/pl_pins.xdc]
    create_bd_port -dir O PL_LED1
    create_bd_port -dir O PL_LED2
    create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 plleddis1
    create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 plleddis2
    connect_bd_net [get_bd_ports PL_LED1] [get_bd_pins plleddis1/dout]
    connect_bd_net [get_bd_ports PL_LED2] [get_bd_pins plleddis2/dout]

    #Validate
    validate_bd_design
    save_bd_design

    #Make wrapper
    set wrapper_path [make_wrapper -fileset sources_1 -files [ get_files -norecurse ${bd_name}.bd] -top]
    add_files -norecurse -fileset sources_1 ${wrapper_path}
}