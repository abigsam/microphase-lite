
#Configure project
set prj_name        "mp_z7010"
set script_path     [file dirname [file normalize [info script]]]
set part_name       "xc7z010clg400-1"
set prj_path        [file normalize ${script_path}/../vivado]
set board_path      [file normalize ${script_path}/../board]
set bd_name         "design_1"
set ps_name         "proc_sys"

#Aux. processes
source ${script_path}/aux_proc.tcl
source ${script_path}/create_bd.tcl

#Gets arguments
set create_rtl_design 0
if { [llength $argv] > 0 } {
    if { [lindex $argv 0] == "create_rtl"} {
        set create_rtl_design 1
    }
}

#Create project
create_project ${prj_name} ${prj_path} -part ${part_name} -force

if {${create_rtl_design} == 0} {
    create_bd ${bd_name} ${ps_name} ${board_path}
} else {
    #RTL design
    add_files -fileset constrs_1 -norecurse [list ${board_path}/pl_pins.xdc ${board_path}/config.xdc]

}


#Create xcleanup.bat file
create_prj_cleanup ${prj_path} ${prj_name}


##Run build
# launch_runs impl_1 -to_step write_bitstream -jobs 16
# wait_on_run impl_1

exit