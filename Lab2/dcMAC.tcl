#!/bin/bash
#**************************************************/
#* 16th Aug 2016 */
#* Author: Sumeet Jain */
#* */
#*Script for Design Compiler - Synopsys */
#* */
#* Make changes to this script acc to your design */
#**************************************************/
#set the target library to build the circuit
set target_library gscl45nm.db
#links the main library for DC to obtain default values and settings
set link_library gscl45nm.db
#reading the verilog RTL netlist
read_sverilog MAC.sv
#link the design and library
link
#setting timing constraints (12kHz and 15Khz)
create_clock -peroid 83333 -name Wclk [get_ports Wclk]
create_clock -period 66667 -name Rclk [get_ports Rclk]
#compile the design to obtain gate level netlist
compile -ungroup_all
#diaplay the timing report
report_timing
#reporting all the references(cell) in the design
report_reference
#create synthesis file
write -f verilog -h -o MAC_netlist.v
