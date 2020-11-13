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
read_sverilog Adder.sv
read_sverilog Multiplier.sv
read_sverilog Accumulator.sv
read_sverilog FIFO.sv
read_sverilog MAC.sv
#link the design and library
link
#setting timing constraints (12kHz and 15Khz)
create_clock -period 83333 -name Wclk [get_ports Wclk]
create_clock -period 66667 -name Rclk [get_ports Rclk]
set_input_delay 20 -clock Wclk [get_ports Wfull]
set_input_delay 20 -clock Wclk [get_ports DataIn1]
set_input_delay 20 -clock Wclk [get_ports DataIn2]
set_input_delay 5  -clock Rclk [get_pins U48/A]
set_input_delay 5  -clock Rclk [get_pins U50/A]
set_input_delay 5  -clock Rclk [get_pins U52/A]
set_input_delay 5  -clock Rclk [get_pins U54/A]
set_input_delay 5  -clock Rclk [get_pins U56/A]
set_input_delay 5  -clock Rclk [get_pins U58/A]
set_input_delay 5  -clock Rclk [get_pins U60/A]
set_input_delay 5  -clock Rclk [get_pins U62/A]

#set_input_delay 20 -clock clk 
#compile the design to obtain gate level netlist
compile -ungroup_all
#diaplay the timing report
report_timing
#reporting all the references(cell) in the design
report_reference
#create synthesis file
write -f verilog -h -o MAC_netlist.v
