
#Configure project
set prj_name "mp_z7010"
set script_path [file dirname [file normalize [info script]]]
set part_name "xc7z010clg400-1"
set prj_path ${script_path}/../vivado
set constr_files ${script_path}/../board
set bd_name "design_1"
set ps_name "proc_sys"

#Gets arguments
set use_gui 0
if { [llength $argv] > 0 } {
	if { [lindex $argv 0] > 0} {
		use_gui 1
	}
}

#Configure arguments
if { ${use_gui} > 0 } {
	start_gui
}

#Create project
create_project ${prj_name} ${prj_path} -part ${part_name} -force

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

#Make wrapper
make_wrapper -files [get_files ${prj_path}/${prj_name}.srcs/sources_1/bd/${bd_name}/${bd_name}.bd] -top
add_files -norecurse ${prj_path}/${prj_name}.srcs/sources_1/bd/${bd_name}/hdl/${bd_name}_wrapper.v
