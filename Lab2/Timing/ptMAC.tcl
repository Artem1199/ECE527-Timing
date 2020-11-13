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


#setting timing constraints
create_clock -period 83333 -name Wclk [get_ports Wclk]
create_clock -period 66667 -name Rclk [get_ports Rclk]
#set_clock_latency 0.5 [get_ports clk]
set timing_report_unconstrained_paths "true"

#get the pins,ports
all_registers
get_pins

#display the timing report
#report_timing -from fifo_reg[7][5]/CLK -delay_type max
#report_timing -from fifo_reg[7][5]/CLK -delay_type min
