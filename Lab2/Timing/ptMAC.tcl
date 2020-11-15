#!/bin/bash

#**************************************************/
#* 16th Aug 2016                                  */
#* Author: Sumeet Jain                            */
#*                                                */
#*Script for Primetime - Synopsys           */
#*                                                */
#* Make changes to this script acc to your design */
#**************************************************/


#set path to search for design files and design libraries 
#(In this case both are same otherwise use'/' to go to next line)
set search_path "/u/artem3/pt" 

#setting target library .db
 set target_library  gscl45nm.db

#linking library
 set link_library  gscl45nm.db
#reading the verilog RTL netlist
read_verilog  MAC_netlist.v


#selecting the current design
current_design MAC
list_libs 

#link the design and library
link_design MAC


#setting timing constraints (12kHz and 15Khz)
create_clock -period 83333 -name Wclk [get_ports Wclk]
create_clock -period 66667 -name Rclk [get_ports Rclk]
#set_input_delay 20 -clock Wclk [get_pins DataIn]
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

set timing_report_unconstrained_paths "true"

#get the pins,ports
all_registers
get_pins

#display the timing report
report_analysis_coverage
report_timing -delay_type min
report_timing -delay_type max
