## Generated SDC file "SDC1.sdc"

## Copyright (C) 1991-2013 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

## DATE    "Tue Aug 11 19:18:11 2020"

##
## DEVICE  "EP2C5T144C8"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************


create_clock -period 20 [ get_ports {mclk}]

#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************
#set_false_path -from [get_registers {r1_mosi}] -to [get_registers {r2_mosi}]
#set_false_path -from [get_registers {r1_sck}] -to [get_registers {r2_sck}]
#set_false_path -from [get_registers {r2_sck}] -to [get_registers {r3_sck}]
#set_false_path -from [get_registers {r1_cs}] -to [get_registers {r2_cs}]
#set_false_path -from [get_registers {r2_cs}] -to [get_registers {r3_cs}]

#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************

#set_min_delay -from [get_ports {MOSI}] 500.000
#set_min_delay -from [get_ports {MISO}] 500.000


#**************************************************************
# Set Input Transition
#**************************************************************

