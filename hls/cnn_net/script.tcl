################################################################################
## Create the Vitis HLS project using the following command:
## $ vitis_hls -f create_project.tcl
################################################################################

open_project cnn_ip_core
set_top cnn
add_files src/cnn.cc
add_files src/conv.cc
add_files src/dense.cc
add_files src/flat.cc
add_files src/pool.cc
add_files src/utils.cc
add_files -tb tb/cnn_tb.cc
add_files -tb tb/data
open_solution "solution1" -flow_target vivado
set_part {xc7k325tffg676-2}
create_clock -period 10 -name default
source "src/directives.tcl"
