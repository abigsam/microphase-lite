#@Note Read Tcl parameters
#
#@param num         Parameter number
#@default_value     Default value if there is no parameter with requested number
#@retval            Parameter value
proc read_param {num default_value} {
    if {[llength $::argv] > $num} {
        return [lindex $::argv $num]
    } else {
        return ${default_value}
    }
}

#Get script path
set script_path     [file dirname [file normalize [info script]]]

#Configure project
set prj_name        "mp_z7010"
set part_name       "xc7z010clg400-1"
set prj_path        [file normalize ${script_path}/../vivado]
set board_path      [file normalize ${script_path}/../board]

#Aux. processes
source ${script_path}/aux_proc.tcl
source ${script_path}/create_bd.tcl
#Source script with Zynq presets
source ${board_path}/microphase_lite_zynq.tcl

#Gets arguments
set create_rtl_design 0
if { [llength $argv] > 0 } {
    if { [lindex $argv 0] == "create_hdl"} {
        set create_rtl_design 1
    }
}

#Create project
create_project ${prj_name} ${prj_path} -part ${part_name} -force

#Add constraints
add_files -fileset constrs_1 -norecurse [findFiles ${board_path} "*.xdc"]

#Create block design or use pure HDL (FPGA only)
if {${create_rtl_design} == 0} {
    create_bd ${board_path}
} else {
    #HDL design

}

#Create xcleanup.bat file
create_prj_cleanup ${prj_path} ${prj_name}

##Run build
# launch_runs impl_1 -to_step write_bitstream -jobs 16
# wait_on_run impl_1

exit