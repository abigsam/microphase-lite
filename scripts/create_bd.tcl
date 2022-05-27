proc create_bd {constr_path} {
    set bd_name "design_1"
    
    #Add ZYNQ PS **********************************************************************************
    create_bd_design ${bd_name}
    set ps_ip [create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 "proc_sys"]
    #Configure ZYNQ
    set_property -dict [apply_preset ${ps_ip}] [get_bd_cells ${ps_ip}]; #From presets
    #External ZYNQ IOs
    apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {\
        make_external "FIXED_IO, DDR" Master "Disable" Slave "Disable" } \
    [get_bd_cells ${ps_ip}]

    #User code ************************************************************************************


    #Connect PL LEDs to '1' to prevent false on
    create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 pl_led_dis
    connect_bd_net [get_bd_ports [create_bd_port -dir O PL_LED1]] [get_bd_pins pl_led_dis/dout]
    connect_bd_net [get_bd_ports [create_bd_port -dir O PL_LED2]] [get_bd_pins pl_led_dis/dout]
    save_bd_design

    #Validate *************************************************************************************
    validate_bd_design
    save_bd_design

    #Make wrapper *********************************************************************************
    set wrapper_path [make_wrapper -fileset sources_1 -files [ get_files -norecurse ${bd_name}.bd] -top]
    add_files -norecurse -fileset sources_1 ${wrapper_path}
    return [file tail ${wrapper_path}]; #Return wrapper file name
}