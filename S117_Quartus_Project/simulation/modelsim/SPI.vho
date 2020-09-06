-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/05/2020 22:36:10"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	mclk : IN std_logic;
	MOSI : IN std_logic;
	SCK : IN std_logic;
	CS : IN std_logic;
	MISO : OUT std_logic;
	SEG : OUT std_logic_vector(7 DOWNTO 0);
	DEG : OUT std_logic_vector(7 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- MISO	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG[0]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG[1]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG[2]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG[3]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG[4]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG[5]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG[6]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEG[7]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DEG[0]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DEG[1]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DEG[2]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DEG[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DEG[4]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DEG[5]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DEG[6]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DEG[7]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mclk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SCK	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CS	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MOSI	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mclk : std_logic;
SIGNAL ww_MOSI : std_logic;
SIGNAL ww_SCK : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_MISO : std_logic;
SIGNAL ww_SEG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DEG : std_logic_vector(7 DOWNTO 0);
SIGNAL \mclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~14_combout\ : std_logic;
SIGNAL \LessThan5~1_cout\ : std_logic;
SIGNAL \LessThan5~3_cout\ : std_logic;
SIGNAL \LessThan5~5_cout\ : std_logic;
SIGNAL \LessThan5~7_cout\ : std_logic;
SIGNAL \LessThan5~9_cout\ : std_logic;
SIGNAL \LessThan5~11_cout\ : std_logic;
SIGNAL \LessThan5~13_cout\ : std_logic;
SIGNAL \LessThan5~14_combout\ : std_logic;
SIGNAL \LessThan4~1_cout\ : std_logic;
SIGNAL \LessThan4~3_cout\ : std_logic;
SIGNAL \LessThan4~5_cout\ : std_logic;
SIGNAL \LessThan4~7_cout\ : std_logic;
SIGNAL \LessThan4~9_cout\ : std_logic;
SIGNAL \LessThan4~11_cout\ : std_logic;
SIGNAL \LessThan4~13_cout\ : std_logic;
SIGNAL \LessThan4~14_combout\ : std_logic;
SIGNAL \pwm_counter[2]~12_combout\ : std_logic;
SIGNAL \pwm_counter[6]~20_combout\ : std_logic;
SIGNAL \blink_counter[0]~8_combout\ : std_logic;
SIGNAL \blink_counter[0]~9\ : std_logic;
SIGNAL \blink_counter[1]~10_combout\ : std_logic;
SIGNAL \blink_counter[1]~11\ : std_logic;
SIGNAL \blink_counter[2]~12_combout\ : std_logic;
SIGNAL \blink_counter[2]~13\ : std_logic;
SIGNAL \blink_counter[3]~14_combout\ : std_logic;
SIGNAL \blink_counter[3]~15\ : std_logic;
SIGNAL \blink_counter[4]~16_combout\ : std_logic;
SIGNAL \blink_counter[4]~17\ : std_logic;
SIGNAL \blink_counter[5]~18_combout\ : std_logic;
SIGNAL \blink_counter[5]~19\ : std_logic;
SIGNAL \blink_counter[6]~20_combout\ : std_logic;
SIGNAL \blink_counter[6]~21\ : std_logic;
SIGNAL \blink_counter[7]~22_combout\ : std_logic;
SIGNAL \tmux_counter[3]~24_combout\ : std_logic;
SIGNAL \tmux_counter[5]~28_combout\ : std_logic;
SIGNAL \tmux_counter[14]~46_combout\ : std_logic;
SIGNAL \tmux_counter[16]~51\ : std_logic;
SIGNAL \tmux_counter[17]~53_combout\ : std_logic;
SIGNAL \s117_spi|Mux0~0_combout\ : std_logic;
SIGNAL \s117_spi|Mux0~1_combout\ : std_logic;
SIGNAL \s117_spi|Mux0~2_combout\ : std_logic;
SIGNAL \s117_spi|Mux0~3_combout\ : std_logic;
SIGNAL \s117_spi|r_miso~0_combout\ : std_logic;
SIGNAL \decoder_r~13_combout\ : std_logic;
SIGNAL \seg_driver_r~15_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \dig_driver_r[3]~0_combout\ : std_logic;
SIGNAL \dig_driver_r[7]~8_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~0_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~1_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG[1]~2_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~3_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~4_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG[1]~5_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG[1]~6_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~7_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~8_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG[1]~9_combout\ : std_logic;
SIGNAL \tx_load_r~regout\ : std_logic;
SIGNAL \s117_spi|tx_REG~10_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG[1]~11_combout\ : std_logic;
SIGNAL \s117_spi|tx_COUNTER[0]~1_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~12_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~13_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~14_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~15_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~16_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~17_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~18_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~19_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~20_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~21_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~22_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~23_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~24_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~25_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~26_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~27_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~28_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~29_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~30_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~31_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~32_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~33_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~34_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~35_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~36_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~37_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~38_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~39_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~40_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~41_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~42_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~43_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~44_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~45_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~46_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~47_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~48_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~49_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~50_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~51_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~52_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~53_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~54_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~55_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~56_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~57_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~58_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~59_combout\ : std_logic;
SIGNAL \s117_spi|tx_REG~60_combout\ : std_logic;
SIGNAL \s117_spi|sck_posedge~2_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \seg_r~2_combout\ : std_logic;
SIGNAL \seg_r~11_combout\ : std_logic;
SIGNAL \seg_r~12_combout\ : std_logic;
SIGNAL \seg_r~13_combout\ : std_logic;
SIGNAL \seg_r~14_combout\ : std_logic;
SIGNAL \seg_r~15_combout\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \blink_compl[7]~0_combout\ : std_logic;
SIGNAL \blink_compl[6]~1_combout\ : std_logic;
SIGNAL \blink_compl[5]~2_combout\ : std_logic;
SIGNAL \blink_compl[4]~3_combout\ : std_logic;
SIGNAL \Equal23~0_combout\ : std_logic;
SIGNAL \blink_compl[3]~4_combout\ : std_logic;
SIGNAL \blink_compl[2]~5_combout\ : std_logic;
SIGNAL \blink_compl[1]~6_combout\ : std_logic;
SIGNAL \blink_compl[0]~7_combout\ : std_logic;
SIGNAL \Equal23~1_combout\ : std_logic;
SIGNAL \blink_out[0]~0_combout\ : std_logic;
SIGNAL \blink_out[0]~1_combout\ : std_logic;
SIGNAL \blink_comph[7]~0_combout\ : std_logic;
SIGNAL \blink_comph[6]~1_combout\ : std_logic;
SIGNAL \blink_comph[5]~2_combout\ : std_logic;
SIGNAL \blink_comph[4]~3_combout\ : std_logic;
SIGNAL \blink_comph[3]~4_combout\ : std_logic;
SIGNAL \blink_comph[2]~5_combout\ : std_logic;
SIGNAL \blink_comph[1]~6_combout\ : std_logic;
SIGNAL \blink_comph[0]~7_combout\ : std_logic;
SIGNAL \blink_out[0]~2_combout\ : std_logic;
SIGNAL \blink_out[0]~3_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \S117_DUMMY[7]~0_combout\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \Decoder0~15_combout\ : std_logic;
SIGNAL \state.STATE_READ~regout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \s117_spi|rx_REG[4]~0_combout\ : std_logic;
SIGNAL \state.STATE_WAIT~regout\ : std_logic;
SIGNAL \interval_counter~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \interval_counter~1_combout\ : std_logic;
SIGNAL \interval_counter~2_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \interval_counter~3_combout\ : std_logic;
SIGNAL \blink_counter[6]~24_combout\ : std_logic;
SIGNAL \blink_counter[6]~25_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \state~10_combout\ : std_logic;
SIGNAL \decoder_r[2]~8_combout\ : std_logic;
SIGNAL \S117_DIGEN[5]~feeder_combout\ : std_logic;
SIGNAL \ctrl_word[6]~feeder_combout\ : std_logic;
SIGNAL \S117_DIGEN[7]~feeder_combout\ : std_logic;
SIGNAL \S117_DUMMY[3]~feeder_combout\ : std_logic;
SIGNAL \S117_DUMMY[2]~feeder_combout\ : std_logic;
SIGNAL \S117_DUMMY[0]~feeder_combout\ : std_logic;
SIGNAL \mclk~combout\ : std_logic;
SIGNAL \mclk~clkctrl_outclk\ : std_logic;
SIGNAL \CS~combout\ : std_logic;
SIGNAL \cs_r1~regout\ : std_logic;
SIGNAL \s117_spi|r2_cs~regout\ : std_logic;
SIGNAL \cs_r3~regout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \SCK~combout\ : std_logic;
SIGNAL \s117_spi|r1_sck~feeder_combout\ : std_logic;
SIGNAL \s117_spi|r1_sck~regout\ : std_logic;
SIGNAL \s117_spi|r2_sck~regout\ : std_logic;
SIGNAL \s117_spi|r3_sck~regout\ : std_logic;
SIGNAL \s117_spi|sck_posedge~3_combout\ : std_logic;
SIGNAL \s117_spi|sck_posedge~regout\ : std_logic;
SIGNAL \s117_spi|r_miso~1_combout\ : std_logic;
SIGNAL \s117_spi|r_miso~2_combout\ : std_logic;
SIGNAL \s117_spi|r_miso~regout\ : std_logic;
SIGNAL \MOSI~combout\ : std_logic;
SIGNAL \s117_spi|r1_mosi~regout\ : std_logic;
SIGNAL \s117_spi|r2_mosi~feeder_combout\ : std_logic;
SIGNAL \s117_spi|r2_mosi~regout\ : std_logic;
SIGNAL \s117_spi|rx_REG[0]~feeder_combout\ : std_logic;
SIGNAL \s117_spi|tx_COUNTER~3_combout\ : std_logic;
SIGNAL \s117_spi|tx_COUNTER[0]~2_combout\ : std_logic;
SIGNAL \s117_spi|tx_COUNTER~0_combout\ : std_logic;
SIGNAL \s117_spi|tx_COUNTER~4_combout\ : std_logic;
SIGNAL \s117_spi|rx_REG[4]~1_combout\ : std_logic;
SIGNAL \s117_spi|rx_REG[2]~feeder_combout\ : std_logic;
SIGNAL \s117_spi|rx_REG[3]~feeder_combout\ : std_logic;
SIGNAL \s117_spi|rx_DATA[5]~0_combout\ : std_logic;
SIGNAL \s117_spi|rx_DATA[0]~feeder_combout\ : std_logic;
SIGNAL \state~11_combout\ : std_logic;
SIGNAL \state.STATE_FINISH~regout\ : std_logic;
SIGNAL \state~9_combout\ : std_logic;
SIGNAL \state.STATE_IDLE~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \datr_clr_r~regout\ : std_logic;
SIGNAL \s117_spi|DATR~0_combout\ : std_logic;
SIGNAL \s117_spi|DATR~regout\ : std_logic;
SIGNAL \ctrl_word[3]~0_combout\ : std_logic;
SIGNAL \s117_spi|rx_DATA[2]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \s117_spi|rx_REG[5]~feeder_combout\ : std_logic;
SIGNAL \s117_spi|rx_REG[6]~feeder_combout\ : std_logic;
SIGNAL \s117_spi|rx_DATA[7]~feeder_combout\ : std_logic;
SIGNAL \tmux_counter[0]~18_combout\ : std_logic;
SIGNAL \tmux_counter[12]~42_combout\ : std_logic;
SIGNAL \tmux_counter[15]~48_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \tmux_counter[1]~20_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \tmux_counter[17]~52_combout\ : std_logic;
SIGNAL \tmux_counter[0]~19\ : std_logic;
SIGNAL \tmux_counter[1]~21\ : std_logic;
SIGNAL \tmux_counter[2]~22_combout\ : std_logic;
SIGNAL \tmux_counter[2]~23\ : std_logic;
SIGNAL \tmux_counter[3]~25\ : std_logic;
SIGNAL \tmux_counter[4]~26_combout\ : std_logic;
SIGNAL \tmux_counter[4]~27\ : std_logic;
SIGNAL \tmux_counter[5]~29\ : std_logic;
SIGNAL \tmux_counter[6]~30_combout\ : std_logic;
SIGNAL \tmux_counter[6]~31\ : std_logic;
SIGNAL \tmux_counter[7]~32_combout\ : std_logic;
SIGNAL \tmux_counter[7]~33\ : std_logic;
SIGNAL \tmux_counter[8]~34_combout\ : std_logic;
SIGNAL \tmux_counter[8]~35\ : std_logic;
SIGNAL \tmux_counter[9]~36_combout\ : std_logic;
SIGNAL \tmux_counter[9]~37\ : std_logic;
SIGNAL \tmux_counter[10]~38_combout\ : std_logic;
SIGNAL \tmux_counter[10]~39\ : std_logic;
SIGNAL \tmux_counter[11]~40_combout\ : std_logic;
SIGNAL \tmux_counter[11]~41\ : std_logic;
SIGNAL \tmux_counter[12]~43\ : std_logic;
SIGNAL \tmux_counter[13]~44_combout\ : std_logic;
SIGNAL \tmux_counter[13]~45\ : std_logic;
SIGNAL \tmux_counter[14]~47\ : std_logic;
SIGNAL \tmux_counter[15]~49\ : std_logic;
SIGNAL \tmux_counter[16]~50_combout\ : std_logic;
SIGNAL \tmux_count_out~0_combout\ : std_logic;
SIGNAL \tmux_count_out~regout\ : std_logic;
SIGNAL \tmux_r~0_combout\ : std_logic;
SIGNAL \tmux_r~regout\ : std_logic;
SIGNAL \always2~0_combout\ : std_logic;
SIGNAL \tmux_posedge~regout\ : std_logic;
SIGNAL \digit_counter[2]~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \seg_r[0]~5_combout\ : std_logic;
SIGNAL \s117_spi|rx_DATA[6]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \digit_counter[0]~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \seg_r~8_combout\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \seg_r~9_combout\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \seg_r~6_combout\ : std_logic;
SIGNAL \seg_r~7_combout\ : std_logic;
SIGNAL \seg_r~10_combout\ : std_logic;
SIGNAL \s117_spi|rx_DATA[3]~feeder_combout\ : std_logic;
SIGNAL \seg_r~3_combout\ : std_logic;
SIGNAL \seg_r~0_combout\ : std_logic;
SIGNAL \seg_r~1_combout\ : std_logic;
SIGNAL \seg_r~4_combout\ : std_logic;
SIGNAL \seg_driver_r~8_combout\ : std_logic;
SIGNAL \decoder_r[3]~11_combout\ : std_logic;
SIGNAL \seg_driver_r~24_combout\ : std_logic;
SIGNAL \seg_driver_r~14_combout\ : std_logic;
SIGNAL \seg_driver_r~16_combout\ : std_logic;
SIGNAL \pwm_counter[0]~8_combout\ : std_logic;
SIGNAL \pwm_counter[0]~9\ : std_logic;
SIGNAL \pwm_counter[1]~11\ : std_logic;
SIGNAL \pwm_counter[2]~13\ : std_logic;
SIGNAL \pwm_counter[3]~14_combout\ : std_logic;
SIGNAL \pwm_counter[1]~10_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \s117_spi|rx_DATA[5]~feeder_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Equal13~2_combout\ : std_logic;
SIGNAL \pwm_counter[3]~15\ : std_logic;
SIGNAL \pwm_counter[4]~17\ : std_logic;
SIGNAL \pwm_counter[5]~18_combout\ : std_logic;
SIGNAL \pwm_counter[4]~16_combout\ : std_logic;
SIGNAL \pwm_counter[5]~19\ : std_logic;
SIGNAL \pwm_counter[6]~21\ : std_logic;
SIGNAL \pwm_counter[7]~22_combout\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \pwm_out~0_combout\ : std_logic;
SIGNAL \seg_driver_r~13_combout\ : std_logic;
SIGNAL \seg_driver_r~27_combout\ : std_logic;
SIGNAL \decoder_r[3]~12_combout\ : std_logic;
SIGNAL \decoder_r[3]~15_combout\ : std_logic;
SIGNAL \seg_driver_r~17_combout\ : std_logic;
SIGNAL \seg_r~18_combout\ : std_logic;
SIGNAL \seg_r~19_combout\ : std_logic;
SIGNAL \seg_r~16_combout\ : std_logic;
SIGNAL \seg_r~17_combout\ : std_logic;
SIGNAL \seg_r~20_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \decoder_r~14_combout\ : std_logic;
SIGNAL \seg_driver_r~18_combout\ : std_logic;
SIGNAL \seg_driver_r~19_combout\ : std_logic;
SIGNAL \seg_driver_r~25_combout\ : std_logic;
SIGNAL \seg_driver_r~20_combout\ : std_logic;
SIGNAL \seg_driver_r~26_combout\ : std_logic;
SIGNAL \seg_driver_r~21_combout\ : std_logic;
SIGNAL \ctrl_word[7]~feeder_combout\ : std_logic;
SIGNAL \ctrl_word[5]~feeder_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \wrd_r~regout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \Decoder0~16_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \seg_driver_r~22_combout\ : std_logic;
SIGNAL \seg_driver_r~23_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \dig_driver_r~1_combout\ : std_logic;
SIGNAL \dig_driver_r[3]~2_combout\ : std_logic;
SIGNAL \dig_driver_r~3_combout\ : std_logic;
SIGNAL \dig_driver_r~4_combout\ : std_logic;
SIGNAL \dig_driver_r~5_combout\ : std_logic;
SIGNAL \dig_driver_r~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \dig_driver_r~7_combout\ : std_logic;
SIGNAL \dig_driver_r~9_combout\ : std_logic;
SIGNAL \dig_driver_r~10_combout\ : std_logic;
SIGNAL \dig_driver_r~11_combout\ : std_logic;
SIGNAL \dig_driver_r~12_combout\ : std_logic;
SIGNAL tmux_counter : std_logic_vector(17 DOWNTO 0);
SIGNAL seg_r : std_logic_vector(3 DOWNTO 0);
SIGNAL seg_driver_r : std_logic_vector(7 DOWNTO 0);
SIGNAL pwm_out : std_logic_vector(7 DOWNTO 0);
SIGNAL pwm_counter : std_logic_vector(7 DOWNTO 0);
SIGNAL interval_counter : std_logic_vector(3 DOWNTO 0);
SIGNAL digit_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL dig_driver_r : std_logic_vector(7 DOWNTO 0);
SIGNAL ctrl_word : std_logic_vector(7 DOWNTO 0);
SIGNAL blink_out : std_logic_vector(7 DOWNTO 0);
SIGNAL blink_counter : std_logic_vector(7 DOWNTO 0);
SIGNAL S117_SEG3 : std_logic_vector(7 DOWNTO 0);
SIGNAL S117_SEG2 : std_logic_vector(7 DOWNTO 0);
SIGNAL S117_SEG1 : std_logic_vector(7 DOWNTO 0);
SIGNAL S117_SEG0 : std_logic_vector(7 DOWNTO 0);
SIGNAL S117_DUMMY : std_logic_vector(7 DOWNTO 0);
SIGNAL S117_DP : std_logic_vector(7 DOWNTO 0);
SIGNAL S117_DIGEN : std_logic_vector(7 DOWNTO 0);
SIGNAL S117_CNTR : std_logic_vector(7 DOWNTO 0);
SIGNAL S117_BLNK1 : std_logic_vector(7 DOWNTO 0);
SIGNAL S117_BLNK0 : std_logic_vector(7 DOWNTO 0);
SIGNAL S117_BADJ : std_logic_vector(7 DOWNTO 0);
SIGNAL \s117_spi|tx_REG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \s117_spi|tx_COUNTER\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \s117_spi|rx_REG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \s117_spi|rx_DATA\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_mclk <= mclk;
ww_MOSI <= MOSI;
ww_SCK <= SCK;
ww_CS <= CS;
MISO <= ww_MISO;
SEG <= ww_SEG;
DEG <= ww_DEG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mclk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \mclk~combout\);

-- Location: LCFF_X13_Y7_N21
\pwm_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \pwm_counter[6]~20_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pwm_counter(6));

-- Location: LCFF_X13_Y7_N13
\pwm_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \pwm_counter[2]~12_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pwm_counter(2));

-- Location: LCCOMB_X17_Y7_N0
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((S117_BADJ(0) & !pwm_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S117_BADJ(0),
	datab => pwm_counter(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X17_Y7_N2
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((pwm_counter(1) & ((!\LessThan1~1_cout\) # (!S117_BADJ(1)))) # (!pwm_counter(1) & (!S117_BADJ(1) & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(1),
	datab => S117_BADJ(1),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X17_Y7_N4
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((pwm_counter(2) & (S117_BADJ(2) & !\LessThan1~3_cout\)) # (!pwm_counter(2) & ((S117_BADJ(2)) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(2),
	datab => S117_BADJ(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X17_Y7_N6
\LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((pwm_counter(3) & ((!\LessThan1~5_cout\) # (!S117_BADJ(3)))) # (!pwm_counter(3) & (!S117_BADJ(3) & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(3),
	datab => S117_BADJ(3),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X17_Y7_N8
\LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((pwm_counter(4) & (S117_BADJ(4) & !\LessThan1~7_cout\)) # (!pwm_counter(4) & ((S117_BADJ(4)) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(4),
	datab => S117_BADJ(4),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X17_Y7_N10
\LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((S117_BADJ(5) & (pwm_counter(5) & !\LessThan1~9_cout\)) # (!S117_BADJ(5) & ((pwm_counter(5)) # (!\LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S117_BADJ(5),
	datab => pwm_counter(5),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X17_Y7_N12
\LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((pwm_counter(6) & (S117_BADJ(6) & !\LessThan1~11_cout\)) # (!pwm_counter(6) & ((S117_BADJ(6)) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(6),
	datab => S117_BADJ(6),
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X17_Y7_N14
\LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (S117_BADJ(7) & ((\LessThan1~13_cout\) # (!pwm_counter(7)))) # (!S117_BADJ(7) & (\LessThan1~13_cout\ & !pwm_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => S117_BADJ(7),
	datad => pwm_counter(7),
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X14_Y11_N0
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((!S117_BLNK1(0) & S117_BLNK0(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S117_BLNK1(0),
	datab => S117_BLNK0(0),
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X14_Y11_N2
\LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((S117_BLNK1(1) & ((!\LessThan2~1_cout\) # (!S117_BLNK0(1)))) # (!S117_BLNK1(1) & (!S117_BLNK0(1) & !\LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S117_BLNK1(1),
	datab => S117_BLNK0(1),
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X14_Y11_N4
\LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((S117_BLNK0(2) & ((!\LessThan2~3_cout\) # (!S117_BLNK1(2)))) # (!S117_BLNK0(2) & (!S117_BLNK1(2) & !\LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S117_BLNK0(2),
	datab => S117_BLNK1(2),
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X14_Y11_N6
\LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((S117_BLNK0(3) & (S117_BLNK1(3) & !\LessThan2~5_cout\)) # (!S117_BLNK0(3) & ((S117_BLNK1(3)) # (!\LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S117_BLNK0(3),
	datab => S117_BLNK1(3),
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X14_Y11_N8
\LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((S117_BLNK0(4) & ((!\LessThan2~7_cout\) # (!S117_BLNK1(4)))) # (!S117_BLNK0(4) & (!S117_BLNK1(4) & !\LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S117_BLNK0(4),
	datab => S117_BLNK1(4),
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X14_Y11_N10
\LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((S117_BLNK1(5) & ((!\LessThan2~9_cout\) # (!S117_BLNK0(5)))) # (!S117_BLNK1(5) & (!S117_BLNK0(5) & !\LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S117_BLNK1(5),
	datab => S117_BLNK0(5),
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X14_Y11_N12
\LessThan2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((S117_BLNK0(6) & ((!\LessThan2~11_cout\) # (!S117_BLNK1(6)))) # (!S117_BLNK0(6) & (!S117_BLNK1(6) & !\LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S117_BLNK0(6),
	datab => S117_BLNK1(6),
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X14_Y11_N14
\LessThan2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~14_combout\ = (S117_BLNK0(7) & ((\LessThan2~13_cout\) # (!S117_BLNK1(7)))) # (!S117_BLNK0(7) & (\LessThan2~13_cout\ & !S117_BLNK1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => S117_BLNK0(7),
	datad => S117_BLNK1(7),
	cin => \LessThan2~13_cout\,
	combout => \LessThan2~14_combout\);

-- Location: LCFF_X14_Y12_N15
\blink_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \blink_counter[7]~22_combout\,
	sclr => \blink_counter[6]~24_combout\,
	ena => \blink_counter[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_counter(7));

-- Location: LCFF_X14_Y12_N13
\blink_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \blink_counter[6]~20_combout\,
	sclr => \blink_counter[6]~24_combout\,
	ena => \blink_counter[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_counter(6));

-- Location: LCFF_X14_Y12_N11
\blink_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \blink_counter[5]~18_combout\,
	sclr => \blink_counter[6]~24_combout\,
	ena => \blink_counter[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_counter(5));

-- Location: LCFF_X14_Y12_N9
\blink_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \blink_counter[4]~16_combout\,
	sclr => \blink_counter[6]~24_combout\,
	ena => \blink_counter[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_counter(4));

-- Location: LCFF_X14_Y12_N7
\blink_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \blink_counter[3]~14_combout\,
	sclr => \blink_counter[6]~24_combout\,
	ena => \blink_counter[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_counter(3));

-- Location: LCFF_X14_Y12_N5
\blink_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \blink_counter[2]~12_combout\,
	sclr => \blink_counter[6]~24_combout\,
	ena => \blink_counter[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_counter(2));

-- Location: LCFF_X14_Y12_N3
\blink_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \blink_counter[1]~10_combout\,
	sclr => \blink_counter[6]~24_combout\,
	ena => \blink_counter[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_counter(1));

-- Location: LCFF_X14_Y12_N1
\blink_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \blink_counter[0]~8_combout\,
	sclr => \blink_counter[6]~24_combout\,
	ena => \blink_counter[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_counter(0));

-- Location: LCCOMB_X14_Y12_N16
\LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~1_cout\ = CARRY((\blink_comph[0]~7_combout\ & !blink_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink_comph[0]~7_combout\,
	datab => blink_counter(0),
	datad => VCC,
	cout => \LessThan5~1_cout\);

-- Location: LCCOMB_X14_Y12_N18
\LessThan5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~3_cout\ = CARRY((\blink_comph[1]~6_combout\ & (blink_counter(1) & !\LessThan5~1_cout\)) # (!\blink_comph[1]~6_combout\ & ((blink_counter(1)) # (!\LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink_comph[1]~6_combout\,
	datab => blink_counter(1),
	datad => VCC,
	cin => \LessThan5~1_cout\,
	cout => \LessThan5~3_cout\);

-- Location: LCCOMB_X14_Y12_N20
\LessThan5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~5_cout\ = CARRY((\blink_comph[2]~5_combout\ & ((!\LessThan5~3_cout\) # (!blink_counter(2)))) # (!\blink_comph[2]~5_combout\ & (!blink_counter(2) & !\LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink_comph[2]~5_combout\,
	datab => blink_counter(2),
	datad => VCC,
	cin => \LessThan5~3_cout\,
	cout => \LessThan5~5_cout\);

-- Location: LCCOMB_X14_Y12_N22
\LessThan5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~7_cout\ = CARRY((blink_counter(3) & ((!\LessThan5~5_cout\) # (!\blink_comph[3]~4_combout\))) # (!blink_counter(3) & (!\blink_comph[3]~4_combout\ & !\LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink_counter(3),
	datab => \blink_comph[3]~4_combout\,
	datad => VCC,
	cin => \LessThan5~5_cout\,
	cout => \LessThan5~7_cout\);

-- Location: LCCOMB_X14_Y12_N24
\LessThan5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~9_cout\ = CARRY((\blink_comph[4]~3_combout\ & ((!\LessThan5~7_cout\) # (!blink_counter(4)))) # (!\blink_comph[4]~3_combout\ & (!blink_counter(4) & !\LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink_comph[4]~3_combout\,
	datab => blink_counter(4),
	datad => VCC,
	cin => \LessThan5~7_cout\,
	cout => \LessThan5~9_cout\);

-- Location: LCCOMB_X14_Y12_N26
\LessThan5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~11_cout\ = CARRY((blink_counter(5) & ((!\LessThan5~9_cout\) # (!\blink_comph[5]~2_combout\))) # (!blink_counter(5) & (!\blink_comph[5]~2_combout\ & !\LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink_counter(5),
	datab => \blink_comph[5]~2_combout\,
	datad => VCC,
	cin => \LessThan5~9_cout\,
	cout => \LessThan5~11_cout\);

-- Location: LCCOMB_X14_Y12_N28
\LessThan5~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~13_cout\ = CARRY((blink_counter(6) & (\blink_comph[6]~1_combout\ & !\LessThan5~11_cout\)) # (!blink_counter(6) & ((\blink_comph[6]~1_combout\) # (!\LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink_counter(6),
	datab => \blink_comph[6]~1_combout\,
	datad => VCC,
	cin => \LessThan5~11_cout\,
	cout => \LessThan5~13_cout\);

-- Location: LCCOMB_X14_Y12_N30
\LessThan5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~14_combout\ = (\blink_comph[7]~0_combout\ & ((\LessThan5~13_cout\) # (!blink_counter(7)))) # (!\blink_comph[7]~0_combout\ & (!blink_counter(7) & \LessThan5~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink_comph[7]~0_combout\,
	datab => blink_counter(7),
	cin => \LessThan5~13_cout\,
	combout => \LessThan5~14_combout\);

-- Location: LCCOMB_X15_Y12_N8
\LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~1_cout\ = CARRY((\blink_compl[0]~7_combout\ & !blink_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink_compl[0]~7_combout\,
	datab => blink_counter(0),
	datad => VCC,
	cout => \LessThan4~1_cout\);

-- Location: LCCOMB_X15_Y12_N10
\LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~3_cout\ = CARRY((blink_counter(1) & ((!\LessThan4~1_cout\) # (!\blink_compl[1]~6_combout\))) # (!blink_counter(1) & (!\blink_compl[1]~6_combout\ & !\LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink_counter(1),
	datab => \blink_compl[1]~6_combout\,
	datad => VCC,
	cin => \LessThan4~1_cout\,
	cout => \LessThan4~3_cout\);

-- Location: LCCOMB_X15_Y12_N12
\LessThan4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~5_cout\ = CARRY((blink_counter(2) & (\blink_compl[2]~5_combout\ & !\LessThan4~3_cout\)) # (!blink_counter(2) & ((\blink_compl[2]~5_combout\) # (!\LessThan4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink_counter(2),
	datab => \blink_compl[2]~5_combout\,
	datad => VCC,
	cin => \LessThan4~3_cout\,
	cout => \LessThan4~5_cout\);

-- Location: LCCOMB_X15_Y12_N14
\LessThan4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~7_cout\ = CARRY((\blink_compl[3]~4_combout\ & (blink_counter(3) & !\LessThan4~5_cout\)) # (!\blink_compl[3]~4_combout\ & ((blink_counter(3)) # (!\LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink_compl[3]~4_combout\,
	datab => blink_counter(3),
	datad => VCC,
	cin => \LessThan4~5_cout\,
	cout => \LessThan4~7_cout\);

-- Location: LCCOMB_X15_Y12_N16
\LessThan4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~9_cout\ = CARRY((\blink_compl[4]~3_combout\ & ((!\LessThan4~7_cout\) # (!blink_counter(4)))) # (!\blink_compl[4]~3_combout\ & (!blink_counter(4) & !\LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink_compl[4]~3_combout\,
	datab => blink_counter(4),
	datad => VCC,
	cin => \LessThan4~7_cout\,
	cout => \LessThan4~9_cout\);

-- Location: LCCOMB_X15_Y12_N18
\LessThan4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~11_cout\ = CARRY((blink_counter(5) & ((!\LessThan4~9_cout\) # (!\blink_compl[5]~2_combout\))) # (!blink_counter(5) & (!\blink_compl[5]~2_combout\ & !\LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink_counter(5),
	datab => \blink_compl[5]~2_combout\,
	datad => VCC,
	cin => \LessThan4~9_cout\,
	cout => \LessThan4~11_cout\);

-- Location: LCCOMB_X15_Y12_N20
\LessThan4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~13_cout\ = CARRY((blink_counter(6) & (\blink_compl[6]~1_combout\ & !\LessThan4~11_cout\)) # (!blink_counter(6) & ((\blink_compl[6]~1_combout\) # (!\LessThan4~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink_counter(6),
	datab => \blink_compl[6]~1_combout\,
	datad => VCC,
	cin => \LessThan4~11_cout\,
	cout => \LessThan4~13_cout\);

-- Location: LCCOMB_X15_Y12_N22
\LessThan4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~14_combout\ = (blink_counter(7) & (\LessThan4~13_cout\ & \blink_compl[7]~0_combout\)) # (!blink_counter(7) & ((\LessThan4~13_cout\) # (\blink_compl[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink_counter(7),
	datad => \blink_compl[7]~0_combout\,
	cin => \LessThan4~13_cout\,
	combout => \LessThan4~14_combout\);

-- Location: LCCOMB_X13_Y7_N12
\pwm_counter[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_counter[2]~12_combout\ = (pwm_counter(2) & (\pwm_counter[1]~11\ $ (GND))) # (!pwm_counter(2) & (!\pwm_counter[1]~11\ & VCC))
-- \pwm_counter[2]~13\ = CARRY((pwm_counter(2) & !\pwm_counter[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(2),
	datad => VCC,
	cin => \pwm_counter[1]~11\,
	combout => \pwm_counter[2]~12_combout\,
	cout => \pwm_counter[2]~13\);

-- Location: LCCOMB_X13_Y7_N20
\pwm_counter[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_counter[6]~20_combout\ = (pwm_counter(6) & (\pwm_counter[5]~19\ $ (GND))) # (!pwm_counter(6) & (!\pwm_counter[5]~19\ & VCC))
-- \pwm_counter[6]~21\ = CARRY((pwm_counter(6) & !\pwm_counter[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(6),
	datad => VCC,
	cin => \pwm_counter[5]~19\,
	combout => \pwm_counter[6]~20_combout\,
	cout => \pwm_counter[6]~21\);

-- Location: LCCOMB_X14_Y12_N0
\blink_counter[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_counter[0]~8_combout\ = blink_counter(0) $ (VCC)
-- \blink_counter[0]~9\ = CARRY(blink_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => blink_counter(0),
	datad => VCC,
	combout => \blink_counter[0]~8_combout\,
	cout => \blink_counter[0]~9\);

-- Location: LCCOMB_X14_Y12_N2
\blink_counter[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_counter[1]~10_combout\ = (blink_counter(1) & (!\blink_counter[0]~9\)) # (!blink_counter(1) & ((\blink_counter[0]~9\) # (GND)))
-- \blink_counter[1]~11\ = CARRY((!\blink_counter[0]~9\) # (!blink_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink_counter(1),
	datad => VCC,
	cin => \blink_counter[0]~9\,
	combout => \blink_counter[1]~10_combout\,
	cout => \blink_counter[1]~11\);

-- Location: LCCOMB_X14_Y12_N4
\blink_counter[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_counter[2]~12_combout\ = (blink_counter(2) & (\blink_counter[1]~11\ $ (GND))) # (!blink_counter(2) & (!\blink_counter[1]~11\ & VCC))
-- \blink_counter[2]~13\ = CARRY((blink_counter(2) & !\blink_counter[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink_counter(2),
	datad => VCC,
	cin => \blink_counter[1]~11\,
	combout => \blink_counter[2]~12_combout\,
	cout => \blink_counter[2]~13\);

-- Location: LCCOMB_X14_Y12_N6
\blink_counter[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_counter[3]~14_combout\ = (blink_counter(3) & (!\blink_counter[2]~13\)) # (!blink_counter(3) & ((\blink_counter[2]~13\) # (GND)))
-- \blink_counter[3]~15\ = CARRY((!\blink_counter[2]~13\) # (!blink_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink_counter(3),
	datad => VCC,
	cin => \blink_counter[2]~13\,
	combout => \blink_counter[3]~14_combout\,
	cout => \blink_counter[3]~15\);

-- Location: LCCOMB_X14_Y12_N8
\blink_counter[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_counter[4]~16_combout\ = (blink_counter(4) & (\blink_counter[3]~15\ $ (GND))) # (!blink_counter(4) & (!\blink_counter[3]~15\ & VCC))
-- \blink_counter[4]~17\ = CARRY((blink_counter(4) & !\blink_counter[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink_counter(4),
	datad => VCC,
	cin => \blink_counter[3]~15\,
	combout => \blink_counter[4]~16_combout\,
	cout => \blink_counter[4]~17\);

-- Location: LCCOMB_X14_Y12_N10
\blink_counter[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_counter[5]~18_combout\ = (blink_counter(5) & (!\blink_counter[4]~17\)) # (!blink_counter(5) & ((\blink_counter[4]~17\) # (GND)))
-- \blink_counter[5]~19\ = CARRY((!\blink_counter[4]~17\) # (!blink_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink_counter(5),
	datad => VCC,
	cin => \blink_counter[4]~17\,
	combout => \blink_counter[5]~18_combout\,
	cout => \blink_counter[5]~19\);

-- Location: LCCOMB_X14_Y12_N12
\blink_counter[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_counter[6]~20_combout\ = (blink_counter(6) & (\blink_counter[5]~19\ $ (GND))) # (!blink_counter(6) & (!\blink_counter[5]~19\ & VCC))
-- \blink_counter[6]~21\ = CARRY((blink_counter(6) & !\blink_counter[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink_counter(6),
	datad => VCC,
	cin => \blink_counter[5]~19\,
	combout => \blink_counter[6]~20_combout\,
	cout => \blink_counter[6]~21\);

-- Location: LCCOMB_X14_Y12_N14
\blink_counter[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_counter[7]~22_combout\ = blink_counter(7) $ (\blink_counter[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink_counter(7),
	cin => \blink_counter[6]~21\,
	combout => \blink_counter[7]~22_combout\);

-- Location: LCFF_X13_Y4_N17
\tmux_counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_counter[17]~53_combout\,
	sclr => \tmux_counter[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmux_counter(17));

-- Location: LCFF_X13_Y5_N21
\tmux_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_counter[3]~24_combout\,
	sclr => \tmux_counter[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmux_counter(3));

-- Location: LCFF_X13_Y5_N25
\tmux_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_counter[5]~28_combout\,
	sclr => \tmux_counter[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmux_counter(5));

-- Location: LCFF_X13_Y4_N11
\tmux_counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_counter[14]~46_combout\,
	sclr => \tmux_counter[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmux_counter(14));

-- Location: LCCOMB_X13_Y5_N20
\tmux_counter[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[3]~24_combout\ = (tmux_counter(3) & (!\tmux_counter[2]~23\)) # (!tmux_counter(3) & ((\tmux_counter[2]~23\) # (GND)))
-- \tmux_counter[3]~25\ = CARRY((!\tmux_counter[2]~23\) # (!tmux_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tmux_counter(3),
	datad => VCC,
	cin => \tmux_counter[2]~23\,
	combout => \tmux_counter[3]~24_combout\,
	cout => \tmux_counter[3]~25\);

-- Location: LCCOMB_X13_Y5_N24
\tmux_counter[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[5]~28_combout\ = (tmux_counter(5) & (!\tmux_counter[4]~27\)) # (!tmux_counter(5) & ((\tmux_counter[4]~27\) # (GND)))
-- \tmux_counter[5]~29\ = CARRY((!\tmux_counter[4]~27\) # (!tmux_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tmux_counter(5),
	datad => VCC,
	cin => \tmux_counter[4]~27\,
	combout => \tmux_counter[5]~28_combout\,
	cout => \tmux_counter[5]~29\);

-- Location: LCCOMB_X13_Y4_N10
\tmux_counter[14]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[14]~46_combout\ = (tmux_counter(14) & (\tmux_counter[13]~45\ $ (GND))) # (!tmux_counter(14) & (!\tmux_counter[13]~45\ & VCC))
-- \tmux_counter[14]~47\ = CARRY((tmux_counter(14) & !\tmux_counter[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tmux_counter(14),
	datad => VCC,
	cin => \tmux_counter[13]~45\,
	combout => \tmux_counter[14]~46_combout\,
	cout => \tmux_counter[14]~47\);

-- Location: LCCOMB_X13_Y4_N14
\tmux_counter[16]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[16]~50_combout\ = (tmux_counter(16) & (\tmux_counter[15]~49\ $ (GND))) # (!tmux_counter(16) & (!\tmux_counter[15]~49\ & VCC))
-- \tmux_counter[16]~51\ = CARRY((tmux_counter(16) & !\tmux_counter[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmux_counter(16),
	datad => VCC,
	cin => \tmux_counter[15]~49\,
	combout => \tmux_counter[16]~50_combout\,
	cout => \tmux_counter[16]~51\);

-- Location: LCCOMB_X13_Y4_N16
\tmux_counter[17]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[17]~53_combout\ = tmux_counter(17) $ (\tmux_counter[16]~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tmux_counter(17),
	cin => \tmux_counter[16]~51\,
	combout => \tmux_counter[17]~53_combout\);

-- Location: LCFF_X19_Y11_N1
\s117_spi|tx_REG[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|tx_REG~10_combout\,
	ena => \s117_spi|tx_REG[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|tx_REG\(6));

-- Location: LCFF_X19_Y11_N11
\s117_spi|tx_REG[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|tx_REG~18_combout\,
	ena => \s117_spi|tx_REG[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|tx_REG\(5));

-- Location: LCFF_X19_Y11_N5
\s117_spi|tx_REG[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|tx_REG~25_combout\,
	ena => \s117_spi|tx_REG[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|tx_REG\(4));

-- Location: LCCOMB_X19_Y11_N30
\s117_spi|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|Mux0~0_combout\ = (\s117_spi|tx_COUNTER\(1) & (\s117_spi|tx_COUNTER\(0))) # (!\s117_spi|tx_COUNTER\(1) & ((\s117_spi|tx_COUNTER\(0) & ((\s117_spi|tx_REG\(5)))) # (!\s117_spi|tx_COUNTER\(0) & (\s117_spi|tx_REG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_COUNTER\(1),
	datab => \s117_spi|tx_COUNTER\(0),
	datac => \s117_spi|tx_REG\(4),
	datad => \s117_spi|tx_REG\(5),
	combout => \s117_spi|Mux0~0_combout\);

-- Location: LCFF_X19_Y11_N9
\s117_spi|tx_REG[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|tx_REG~32_combout\,
	ena => \s117_spi|tx_REG[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|tx_REG\(7));

-- Location: LCCOMB_X19_Y11_N26
\s117_spi|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|Mux0~1_combout\ = (\s117_spi|tx_COUNTER\(1) & ((\s117_spi|Mux0~0_combout\ & (\s117_spi|tx_REG\(7))) # (!\s117_spi|Mux0~0_combout\ & ((\s117_spi|tx_REG\(6)))))) # (!\s117_spi|tx_COUNTER\(1) & (\s117_spi|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_COUNTER\(1),
	datab => \s117_spi|Mux0~0_combout\,
	datac => \s117_spi|tx_REG\(7),
	datad => \s117_spi|tx_REG\(6),
	combout => \s117_spi|Mux0~1_combout\);

-- Location: LCFF_X19_Y11_N13
\s117_spi|tx_REG[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|tx_REG~39_combout\,
	ena => \s117_spi|tx_REG[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|tx_REG\(2));

-- Location: LCFF_X19_Y11_N7
\s117_spi|tx_REG[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|tx_REG~46_combout\,
	ena => \s117_spi|tx_REG[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|tx_REG\(1));

-- Location: LCFF_X19_Y11_N25
\s117_spi|tx_REG[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|tx_REG~53_combout\,
	ena => \s117_spi|tx_REG[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|tx_REG\(0));

-- Location: LCCOMB_X19_Y11_N18
\s117_spi|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|Mux0~2_combout\ = (\s117_spi|tx_COUNTER\(1) & (\s117_spi|tx_COUNTER\(0))) # (!\s117_spi|tx_COUNTER\(1) & ((\s117_spi|tx_COUNTER\(0) & ((\s117_spi|tx_REG\(1)))) # (!\s117_spi|tx_COUNTER\(0) & (\s117_spi|tx_REG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_COUNTER\(1),
	datab => \s117_spi|tx_COUNTER\(0),
	datac => \s117_spi|tx_REG\(0),
	datad => \s117_spi|tx_REG\(1),
	combout => \s117_spi|Mux0~2_combout\);

-- Location: LCFF_X19_Y11_N21
\s117_spi|tx_REG[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|tx_REG~60_combout\,
	ena => \s117_spi|tx_REG[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|tx_REG\(3));

-- Location: LCCOMB_X19_Y11_N14
\s117_spi|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|Mux0~3_combout\ = (\s117_spi|tx_COUNTER\(1) & ((\s117_spi|Mux0~2_combout\ & (\s117_spi|tx_REG\(3))) # (!\s117_spi|Mux0~2_combout\ & ((\s117_spi|tx_REG\(2)))))) # (!\s117_spi|tx_COUNTER\(1) & (\s117_spi|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_COUNTER\(1),
	datab => \s117_spi|Mux0~2_combout\,
	datac => \s117_spi|tx_REG\(3),
	datad => \s117_spi|tx_REG\(2),
	combout => \s117_spi|Mux0~3_combout\);

-- Location: LCCOMB_X18_Y8_N6
\s117_spi|r_miso~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|r_miso~0_combout\ = (\s117_spi|tx_COUNTER\(2) & ((\s117_spi|Mux0~1_combout\))) # (!\s117_spi|tx_COUNTER\(2) & (\s117_spi|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s117_spi|tx_COUNTER\(2),
	datac => \s117_spi|Mux0~3_combout\,
	datad => \s117_spi|Mux0~1_combout\,
	combout => \s117_spi|r_miso~0_combout\);

-- Location: LCFF_X14_Y7_N5
\seg_r[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \seg_r~15_combout\,
	ena => \seg_r[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg_r(1));

-- Location: LCFF_X15_Y12_N1
\blink_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \blink_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blink_out(0));

-- Location: LCCOMB_X14_Y6_N16
\decoder_r~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_r~13_combout\ = (seg_r(1) & (!seg_r(3) & ((seg_r(0)) # (!seg_r(2))))) # (!seg_r(1) & (seg_r(2) $ (((seg_r(3)) # (seg_r(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_r(1),
	datab => seg_r(3),
	datac => seg_r(2),
	datad => seg_r(0),
	combout => \decoder_r~13_combout\);

-- Location: LCCOMB_X14_Y6_N2
\seg_driver_r~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_driver_r~15_combout\ = (\seg_driver_r~13_combout\ & (S117_CNTR(4) $ (((\Equal2~0_combout\) # (\decoder_r~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver_r~13_combout\,
	datab => \Equal2~0_combout\,
	datac => \decoder_r~13_combout\,
	datad => S117_CNTR(4),
	combout => \seg_driver_r~15_combout\);

-- Location: LCCOMB_X18_Y11_N6
\Add5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = digit_counter(2) $ (((digit_counter(0)) # (digit_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_counter(0),
	datac => digit_counter(2),
	datad => digit_counter(1),
	combout => \Add5~1_combout\);

-- Location: LCFF_X14_Y10_N13
\S117_DIGEN[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \S117_DIGEN[5]~feeder_combout\,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DIGEN(5));

-- Location: LCFF_X14_Y10_N25
\S117_DIGEN[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \S117_DIGEN[7]~feeder_combout\,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DIGEN(7));

-- Location: LCFF_X14_Y10_N11
\S117_DIGEN[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(2),
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DIGEN(2));

-- Location: LCFF_X14_Y10_N29
\S117_DIGEN[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(1),
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DIGEN(1));

-- Location: LCFF_X14_Y10_N15
\S117_DIGEN[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(0),
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DIGEN(0));

-- Location: LCCOMB_X14_Y10_N28
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (digit_counter(1) & (((digit_counter(0))))) # (!digit_counter(1) & ((digit_counter(0) & ((S117_DIGEN(1)))) # (!digit_counter(0) & (S117_DIGEN(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_DIGEN(0),
	datab => digit_counter(1),
	datac => S117_DIGEN(1),
	datad => digit_counter(0),
	combout => \Mux0~2_combout\);

-- Location: LCFF_X14_Y10_N17
\S117_DIGEN[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(3),
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DIGEN(3));

-- Location: LCCOMB_X14_Y10_N16
\Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (digit_counter(1) & ((\Mux0~2_combout\ & ((S117_DIGEN(3)))) # (!\Mux0~2_combout\ & (S117_DIGEN(2))))) # (!digit_counter(1) & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_DIGEN(2),
	datab => digit_counter(1),
	datac => S117_DIGEN(3),
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X14_Y7_N20
\dig_driver_r[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dig_driver_r[3]~0_combout\ = ((S117_CNTR(7)) # ((!S117_CNTR(4) & digit_counter(2)))) # (!\Mux0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_CNTR(4),
	datab => \Mux0~4_combout\,
	datac => digit_counter(2),
	datad => S117_CNTR(7),
	combout => \dig_driver_r[3]~0_combout\);

-- Location: LCCOMB_X14_Y7_N10
\dig_driver_r[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dig_driver_r[7]~8_combout\ = ((S117_CNTR(7)) # ((!S117_CNTR(4) & !digit_counter(2)))) # (!\Mux0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_CNTR(4),
	datab => \Mux0~4_combout\,
	datac => digit_counter(2),
	datad => S117_CNTR(7),
	combout => \dig_driver_r[7]~8_combout\);

-- Location: LCFF_X18_Y11_N19
\S117_DUMMY[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(6),
	sload => VCC,
	ena => \S117_DUMMY[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DUMMY(6));

-- Location: LCCOMB_X18_Y10_N8
\Decoder0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (ctrl_word(1) & !ctrl_word(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ctrl_word(1),
	datad => ctrl_word(0),
	combout => \Decoder0~4_combout\);

-- Location: LCFF_X15_Y7_N17
\S117_BADJ[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(6),
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BADJ(6));

-- Location: LCCOMB_X14_Y6_N24
\s117_spi|tx_REG~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~0_combout\ = (ctrl_word(2) & (((S117_SEG1(6)) # (ctrl_word(1))))) # (!ctrl_word(2) & (S117_CNTR(6) & ((!ctrl_word(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_word(2),
	datab => S117_CNTR(6),
	datac => S117_SEG1(6),
	datad => ctrl_word(1),
	combout => \s117_spi|tx_REG~0_combout\);

-- Location: LCCOMB_X15_Y7_N16
\s117_spi|tx_REG~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~1_combout\ = (\s117_spi|tx_REG~0_combout\ & ((S117_SEG3(6)) # ((!ctrl_word(1))))) # (!\s117_spi|tx_REG~0_combout\ & (((S117_BADJ(6) & ctrl_word(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG~0_combout\,
	datab => S117_SEG3(6),
	datac => S117_BADJ(6),
	datad => ctrl_word(1),
	combout => \s117_spi|tx_REG~1_combout\);

-- Location: LCCOMB_X18_Y10_N28
\s117_spi|tx_REG[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG[1]~2_combout\ = (ctrl_word(0)) # ((ctrl_word(2) & ctrl_word(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_word(0),
	datac => ctrl_word(2),
	datad => ctrl_word(1),
	combout => \s117_spi|tx_REG[1]~2_combout\);

-- Location: LCCOMB_X15_Y10_N16
\s117_spi|tx_REG~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~3_combout\ = (\s117_spi|tx_REG[1]~2_combout\ & ((\s117_spi|tx_REG~1_combout\) # ((\Decoder0~4_combout\)))) # (!\s117_spi|tx_REG[1]~2_combout\ & (((S117_SEG0(6) & !\Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG[1]~2_combout\,
	datab => \s117_spi|tx_REG~1_combout\,
	datac => S117_SEG0(6),
	datad => \Decoder0~4_combout\,
	combout => \s117_spi|tx_REG~3_combout\);

-- Location: LCCOMB_X15_Y11_N16
\s117_spi|tx_REG~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~4_combout\ = (\s117_spi|tx_REG~3_combout\ & (((S117_SEG2(6)) # (!\Decoder0~4_combout\)))) # (!\s117_spi|tx_REG~3_combout\ & (S117_DIGEN(6) & ((\Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_DIGEN(6),
	datab => \s117_spi|tx_REG~3_combout\,
	datac => S117_SEG2(6),
	datad => \Decoder0~4_combout\,
	combout => \s117_spi|tx_REG~4_combout\);

-- Location: LCCOMB_X18_Y10_N30
\s117_spi|tx_REG[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG[1]~5_combout\ = (ctrl_word(0)) # (!ctrl_word(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ctrl_word(3),
	datad => ctrl_word(0),
	combout => \s117_spi|tx_REG[1]~5_combout\);

-- Location: LCCOMB_X18_Y10_N10
\s117_spi|tx_REG[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG[1]~6_combout\ = (ctrl_word(3) & ((ctrl_word(0)) # (ctrl_word(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ctrl_word(3),
	datac => ctrl_word(0),
	datad => ctrl_word(1),
	combout => \s117_spi|tx_REG[1]~6_combout\);

-- Location: LCFF_X14_Y11_N13
\S117_BLNK0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(6),
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BLNK0(6));

-- Location: LCCOMB_X15_Y11_N10
\s117_spi|tx_REG~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~7_combout\ = (\s117_spi|tx_REG[1]~6_combout\ & ((S117_DP(6)) # ((\s117_spi|tx_REG[1]~5_combout\)))) # (!\s117_spi|tx_REG[1]~6_combout\ & (((!\s117_spi|tx_REG[1]~5_combout\ & S117_BLNK0(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_DP(6),
	datab => \s117_spi|tx_REG[1]~6_combout\,
	datac => \s117_spi|tx_REG[1]~5_combout\,
	datad => S117_BLNK0(6),
	combout => \s117_spi|tx_REG~7_combout\);

-- Location: LCFF_X15_Y11_N29
\S117_BLNK1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(6),
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BLNK1(6));

-- Location: LCCOMB_X15_Y11_N22
\s117_spi|tx_REG~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~8_combout\ = (\s117_spi|tx_REG~7_combout\ & (((S117_BLNK1(6))) # (!\s117_spi|tx_REG[1]~5_combout\))) # (!\s117_spi|tx_REG~7_combout\ & (\s117_spi|tx_REG[1]~5_combout\ & (\s117_spi|tx_REG~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG~7_combout\,
	datab => \s117_spi|tx_REG[1]~5_combout\,
	datac => \s117_spi|tx_REG~4_combout\,
	datad => S117_BLNK1(6),
	combout => \s117_spi|tx_REG~8_combout\);

-- Location: LCCOMB_X17_Y10_N24
\s117_spi|tx_REG[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG[1]~9_combout\ = (ctrl_word(2) & (ctrl_word(3))) # (!ctrl_word(2) & ((ctrl_word(3) & (ctrl_word(0) & ctrl_word(1))) # (!ctrl_word(3) & (!ctrl_word(0) & !ctrl_word(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_word(2),
	datab => ctrl_word(3),
	datac => ctrl_word(0),
	datad => ctrl_word(1),
	combout => \s117_spi|tx_REG[1]~9_combout\);

-- Location: LCFF_X19_Y10_N1
tx_load_r : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tx_load_r~regout\);

-- Location: LCCOMB_X19_Y11_N0
\s117_spi|tx_REG~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~10_combout\ = ((\s117_spi|tx_REG[1]~9_combout\ & (S117_DUMMY(6))) # (!\s117_spi|tx_REG[1]~9_combout\ & ((\s117_spi|tx_REG~8_combout\)))) # (!\tx_load_r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG[1]~9_combout\,
	datab => S117_DUMMY(6),
	datac => \s117_spi|tx_REG~8_combout\,
	datad => \tx_load_r~regout\,
	combout => \s117_spi|tx_REG~10_combout\);

-- Location: LCCOMB_X19_Y11_N16
\s117_spi|tx_REG[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG[1]~11_combout\ = (\tx_load_r~regout\) # ((\cs_r3~regout\ & !\s117_spi|r2_cs~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cs_r3~regout\,
	datac => \s117_spi|r2_cs~regout\,
	datad => \tx_load_r~regout\,
	combout => \s117_spi|tx_REG[1]~11_combout\);

-- Location: LCCOMB_X18_Y8_N0
\s117_spi|tx_COUNTER[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_COUNTER[0]~1_combout\ = (!\cs_r3~regout\ & (((\s117_spi|r2_sck~regout\) # (!\s117_spi|sck_posedge~regout\)) # (!\s117_spi|r3_sck~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cs_r3~regout\,
	datab => \s117_spi|r3_sck~regout\,
	datac => \s117_spi|r2_sck~regout\,
	datad => \s117_spi|sck_posedge~regout\,
	combout => \s117_spi|tx_COUNTER[0]~1_combout\);

-- Location: LCFF_X18_Y11_N29
\S117_DUMMY[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(5),
	sload => VCC,
	ena => \S117_DUMMY[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DUMMY(5));

-- Location: LCFF_X14_Y7_N13
\S117_SEG1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(5),
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG1(5));

-- Location: LCCOMB_X17_Y7_N16
\s117_spi|tx_REG~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~12_combout\ = (ctrl_word(1) & ((ctrl_word(2)) # ((S117_BADJ(5))))) # (!ctrl_word(1) & (!ctrl_word(2) & ((S117_CNTR(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_word(1),
	datab => ctrl_word(2),
	datac => S117_BADJ(5),
	datad => S117_CNTR(5),
	combout => \s117_spi|tx_REG~12_combout\);

-- Location: LCFF_X15_Y7_N29
\S117_SEG3[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(5),
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG3(5));

-- Location: LCCOMB_X14_Y7_N12
\s117_spi|tx_REG~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~13_combout\ = (\s117_spi|tx_REG~12_combout\ & ((S117_SEG3(5)) # ((!ctrl_word(2))))) # (!\s117_spi|tx_REG~12_combout\ & (((S117_SEG1(5) & ctrl_word(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_SEG3(5),
	datab => \s117_spi|tx_REG~12_combout\,
	datac => S117_SEG1(5),
	datad => ctrl_word(2),
	combout => \s117_spi|tx_REG~13_combout\);

-- Location: LCFF_X15_Y10_N27
\S117_SEG0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(5),
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG0(5));

-- Location: LCCOMB_X15_Y10_N26
\s117_spi|tx_REG~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~14_combout\ = (\s117_spi|tx_REG[1]~2_combout\ & (((\Decoder0~4_combout\)))) # (!\s117_spi|tx_REG[1]~2_combout\ & ((\Decoder0~4_combout\ & (S117_DIGEN(5))) # (!\Decoder0~4_combout\ & ((S117_SEG0(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG[1]~2_combout\,
	datab => S117_DIGEN(5),
	datac => S117_SEG0(5),
	datad => \Decoder0~4_combout\,
	combout => \s117_spi|tx_REG~14_combout\);

-- Location: LCFF_X15_Y10_N13
\S117_SEG2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(5),
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG2(5));

-- Location: LCCOMB_X15_Y10_N12
\s117_spi|tx_REG~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~15_combout\ = (\s117_spi|tx_REG~14_combout\ & (((S117_SEG2(5)) # (!\s117_spi|tx_REG[1]~2_combout\)))) # (!\s117_spi|tx_REG~14_combout\ & (\s117_spi|tx_REG~13_combout\ & ((\s117_spi|tx_REG[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG~13_combout\,
	datab => \s117_spi|tx_REG~14_combout\,
	datac => S117_SEG2(5),
	datad => \s117_spi|tx_REG[1]~2_combout\,
	combout => \s117_spi|tx_REG~15_combout\);

-- Location: LCFF_X14_Y11_N11
\S117_BLNK0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(5),
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BLNK0(5));

-- Location: LCCOMB_X15_Y11_N0
\s117_spi|tx_REG~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~16_combout\ = (\s117_spi|tx_REG[1]~6_combout\ & (((\s117_spi|tx_REG[1]~5_combout\)))) # (!\s117_spi|tx_REG[1]~6_combout\ & ((\s117_spi|tx_REG[1]~5_combout\ & ((\s117_spi|tx_REG~15_combout\))) # (!\s117_spi|tx_REG[1]~5_combout\ & 
-- (S117_BLNK0(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_BLNK0(5),
	datab => \s117_spi|tx_REG[1]~6_combout\,
	datac => \s117_spi|tx_REG[1]~5_combout\,
	datad => \s117_spi|tx_REG~15_combout\,
	combout => \s117_spi|tx_REG~16_combout\);

-- Location: LCFF_X14_Y11_N25
\S117_BLNK1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(5),
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BLNK1(5));

-- Location: LCCOMB_X15_Y11_N18
\s117_spi|tx_REG~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~17_combout\ = (\s117_spi|tx_REG[1]~6_combout\ & ((\s117_spi|tx_REG~16_combout\ & (S117_BLNK1(5))) # (!\s117_spi|tx_REG~16_combout\ & ((S117_DP(5)))))) # (!\s117_spi|tx_REG[1]~6_combout\ & (((\s117_spi|tx_REG~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_BLNK1(5),
	datab => S117_DP(5),
	datac => \s117_spi|tx_REG[1]~6_combout\,
	datad => \s117_spi|tx_REG~16_combout\,
	combout => \s117_spi|tx_REG~17_combout\);

-- Location: LCCOMB_X19_Y11_N10
\s117_spi|tx_REG~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~18_combout\ = ((\s117_spi|tx_REG[1]~9_combout\ & (S117_DUMMY(5))) # (!\s117_spi|tx_REG[1]~9_combout\ & ((\s117_spi|tx_REG~17_combout\)))) # (!\tx_load_r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_DUMMY(5),
	datab => \s117_spi|tx_REG[1]~9_combout\,
	datac => \s117_spi|tx_REG~17_combout\,
	datad => \tx_load_r~regout\,
	combout => \s117_spi|tx_REG~18_combout\);

-- Location: LCFF_X19_Y11_N3
\S117_DUMMY[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(4),
	sload => VCC,
	ena => \S117_DUMMY[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DUMMY(4));

-- Location: LCCOMB_X17_Y7_N28
\s117_spi|tx_REG~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~19_combout\ = (ctrl_word(1) & (((ctrl_word(2))))) # (!ctrl_word(1) & ((ctrl_word(2) & ((S117_SEG1(4)))) # (!ctrl_word(2) & (S117_CNTR(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_word(1),
	datab => S117_CNTR(4),
	datac => S117_SEG1(4),
	datad => ctrl_word(2),
	combout => \s117_spi|tx_REG~19_combout\);

-- Location: LCCOMB_X17_Y7_N18
\s117_spi|tx_REG~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~20_combout\ = (ctrl_word(1) & ((\s117_spi|tx_REG~19_combout\ & (S117_SEG3(4))) # (!\s117_spi|tx_REG~19_combout\ & ((S117_BADJ(4)))))) # (!ctrl_word(1) & (((\s117_spi|tx_REG~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_word(1),
	datab => S117_SEG3(4),
	datac => S117_BADJ(4),
	datad => \s117_spi|tx_REG~19_combout\,
	combout => \s117_spi|tx_REG~20_combout\);

-- Location: LCCOMB_X15_Y10_N14
\s117_spi|tx_REG~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~21_combout\ = (\s117_spi|tx_REG[1]~2_combout\ & ((\s117_spi|tx_REG~20_combout\) # ((\Decoder0~4_combout\)))) # (!\s117_spi|tx_REG[1]~2_combout\ & (((S117_SEG0(4) & !\Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG[1]~2_combout\,
	datab => \s117_spi|tx_REG~20_combout\,
	datac => S117_SEG0(4),
	datad => \Decoder0~4_combout\,
	combout => \s117_spi|tx_REG~21_combout\);

-- Location: LCCOMB_X15_Y10_N8
\s117_spi|tx_REG~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~22_combout\ = (\s117_spi|tx_REG~21_combout\ & (((S117_SEG2(4)) # (!\Decoder0~4_combout\)))) # (!\s117_spi|tx_REG~21_combout\ & (S117_DIGEN(4) & ((\Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_DIGEN(4),
	datab => \s117_spi|tx_REG~21_combout\,
	datac => S117_SEG2(4),
	datad => \Decoder0~4_combout\,
	combout => \s117_spi|tx_REG~22_combout\);

-- Location: LCFF_X14_Y11_N9
\S117_BLNK0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(4),
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BLNK0(4));

-- Location: LCCOMB_X17_Y11_N16
\s117_spi|tx_REG~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~23_combout\ = (\s117_spi|tx_REG[1]~6_combout\ & (((S117_DP(4)) # (\s117_spi|tx_REG[1]~5_combout\)))) # (!\s117_spi|tx_REG[1]~6_combout\ & (S117_BLNK0(4) & ((!\s117_spi|tx_REG[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG[1]~6_combout\,
	datab => S117_BLNK0(4),
	datac => S117_DP(4),
	datad => \s117_spi|tx_REG[1]~5_combout\,
	combout => \s117_spi|tx_REG~23_combout\);

-- Location: LCFF_X17_Y11_N27
\S117_BLNK1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(4),
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BLNK1(4));

-- Location: LCCOMB_X17_Y11_N12
\s117_spi|tx_REG~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~24_combout\ = (\s117_spi|tx_REG~23_combout\ & ((S117_BLNK1(4)) # ((!\s117_spi|tx_REG[1]~5_combout\)))) # (!\s117_spi|tx_REG~23_combout\ & (((\s117_spi|tx_REG~22_combout\ & \s117_spi|tx_REG[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG~23_combout\,
	datab => S117_BLNK1(4),
	datac => \s117_spi|tx_REG~22_combout\,
	datad => \s117_spi|tx_REG[1]~5_combout\,
	combout => \s117_spi|tx_REG~24_combout\);

-- Location: LCCOMB_X19_Y11_N4
\s117_spi|tx_REG~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~25_combout\ = ((\s117_spi|tx_REG[1]~9_combout\ & ((S117_DUMMY(4)))) # (!\s117_spi|tx_REG[1]~9_combout\ & (\s117_spi|tx_REG~24_combout\))) # (!\tx_load_r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG~24_combout\,
	datab => \tx_load_r~regout\,
	datac => \s117_spi|tx_REG[1]~9_combout\,
	datad => S117_DUMMY(4),
	combout => \s117_spi|tx_REG~25_combout\);

-- Location: LCFF_X18_Y11_N15
\S117_DUMMY[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(7),
	sload => VCC,
	ena => \S117_DUMMY[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DUMMY(7));

-- Location: LCFF_X17_Y7_N25
\S117_BADJ[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(7),
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BADJ(7));

-- Location: LCCOMB_X17_Y7_N24
\s117_spi|tx_REG~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~26_combout\ = (ctrl_word(1) & ((ctrl_word(2)) # ((S117_BADJ(7))))) # (!ctrl_word(1) & (!ctrl_word(2) & ((S117_CNTR(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_word(1),
	datab => ctrl_word(2),
	datac => S117_BADJ(7),
	datad => S117_CNTR(7),
	combout => \s117_spi|tx_REG~26_combout\);

-- Location: LCCOMB_X17_Y7_N22
\s117_spi|tx_REG~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~27_combout\ = (\s117_spi|tx_REG~26_combout\ & ((S117_SEG3(7)) # ((!ctrl_word(2))))) # (!\s117_spi|tx_REG~26_combout\ & (((S117_SEG1(7) & ctrl_word(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG~26_combout\,
	datab => S117_SEG3(7),
	datac => S117_SEG1(7),
	datad => ctrl_word(2),
	combout => \s117_spi|tx_REG~27_combout\);

-- Location: LCCOMB_X15_Y10_N2
\s117_spi|tx_REG~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~28_combout\ = (\s117_spi|tx_REG[1]~2_combout\ & (((\Decoder0~4_combout\)))) # (!\s117_spi|tx_REG[1]~2_combout\ & ((\Decoder0~4_combout\ & (S117_DIGEN(7))) # (!\Decoder0~4_combout\ & ((S117_SEG0(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG[1]~2_combout\,
	datab => S117_DIGEN(7),
	datac => S117_SEG0(7),
	datad => \Decoder0~4_combout\,
	combout => \s117_spi|tx_REG~28_combout\);

-- Location: LCFF_X15_Y10_N21
\S117_SEG2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(7),
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG2(7));

-- Location: LCCOMB_X15_Y10_N20
\s117_spi|tx_REG~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~29_combout\ = (\s117_spi|tx_REG[1]~2_combout\ & ((\s117_spi|tx_REG~28_combout\ & (S117_SEG2(7))) # (!\s117_spi|tx_REG~28_combout\ & ((\s117_spi|tx_REG~27_combout\))))) # (!\s117_spi|tx_REG[1]~2_combout\ & (\s117_spi|tx_REG~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG[1]~2_combout\,
	datab => \s117_spi|tx_REG~28_combout\,
	datac => S117_SEG2(7),
	datad => \s117_spi|tx_REG~27_combout\,
	combout => \s117_spi|tx_REG~29_combout\);

-- Location: LCFF_X14_Y11_N15
\S117_BLNK0[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(7),
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BLNK0(7));

-- Location: LCCOMB_X15_Y11_N12
\s117_spi|tx_REG~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~30_combout\ = (\s117_spi|tx_REG[1]~5_combout\ & (((\s117_spi|tx_REG[1]~6_combout\) # (\s117_spi|tx_REG~29_combout\)))) # (!\s117_spi|tx_REG[1]~5_combout\ & (S117_BLNK0(7) & (!\s117_spi|tx_REG[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_BLNK0(7),
	datab => \s117_spi|tx_REG[1]~5_combout\,
	datac => \s117_spi|tx_REG[1]~6_combout\,
	datad => \s117_spi|tx_REG~29_combout\,
	combout => \s117_spi|tx_REG~30_combout\);

-- Location: LCFF_X14_Y11_N1
\S117_BLNK1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(7),
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BLNK1(7));

-- Location: LCCOMB_X18_Y11_N10
\s117_spi|tx_REG~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~31_combout\ = (\s117_spi|tx_REG~30_combout\ & ((S117_BLNK1(7)) # ((!\s117_spi|tx_REG[1]~6_combout\)))) # (!\s117_spi|tx_REG~30_combout\ & (((S117_DP(7) & \s117_spi|tx_REG[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG~30_combout\,
	datab => S117_BLNK1(7),
	datac => S117_DP(7),
	datad => \s117_spi|tx_REG[1]~6_combout\,
	combout => \s117_spi|tx_REG~31_combout\);

-- Location: LCCOMB_X19_Y11_N8
\s117_spi|tx_REG~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~32_combout\ = ((\s117_spi|tx_REG[1]~9_combout\ & ((S117_DUMMY(7)))) # (!\s117_spi|tx_REG[1]~9_combout\ & (\s117_spi|tx_REG~31_combout\))) # (!\tx_load_r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG~31_combout\,
	datab => \tx_load_r~regout\,
	datac => \s117_spi|tx_REG[1]~9_combout\,
	datad => S117_DUMMY(7),
	combout => \s117_spi|tx_REG~32_combout\);

-- Location: LCFF_X19_Y11_N29
\S117_DUMMY[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \S117_DUMMY[2]~feeder_combout\,
	ena => \S117_DUMMY[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DUMMY(2));

-- Location: LCFF_X14_Y6_N11
\S117_SEG1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(2),
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG1(2));

-- Location: LCFF_X14_Y6_N21
\S117_CNTR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(2),
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_CNTR(2));

-- Location: LCCOMB_X14_Y6_N20
\s117_spi|tx_REG~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~33_combout\ = (ctrl_word(1) & (((ctrl_word(2))))) # (!ctrl_word(1) & ((ctrl_word(2) & (S117_SEG1(2))) # (!ctrl_word(2) & ((S117_CNTR(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_SEG1(2),
	datab => ctrl_word(1),
	datac => S117_CNTR(2),
	datad => ctrl_word(2),
	combout => \s117_spi|tx_REG~33_combout\);

-- Location: LCCOMB_X15_Y7_N10
\s117_spi|tx_REG~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~34_combout\ = (\s117_spi|tx_REG~33_combout\ & ((S117_SEG3(2)) # ((!ctrl_word(1))))) # (!\s117_spi|tx_REG~33_combout\ & (((S117_BADJ(2) & ctrl_word(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_SEG3(2),
	datab => \s117_spi|tx_REG~33_combout\,
	datac => S117_BADJ(2),
	datad => ctrl_word(1),
	combout => \s117_spi|tx_REG~34_combout\);

-- Location: LCCOMB_X15_Y10_N30
\s117_spi|tx_REG~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~35_combout\ = (\s117_spi|tx_REG[1]~2_combout\ & ((\s117_spi|tx_REG~34_combout\) # ((\Decoder0~4_combout\)))) # (!\s117_spi|tx_REG[1]~2_combout\ & (((S117_SEG0(2) & !\Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG[1]~2_combout\,
	datab => \s117_spi|tx_REG~34_combout\,
	datac => S117_SEG0(2),
	datad => \Decoder0~4_combout\,
	combout => \s117_spi|tx_REG~35_combout\);

-- Location: LCCOMB_X14_Y10_N10
\s117_spi|tx_REG~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~36_combout\ = (\s117_spi|tx_REG~35_combout\ & ((S117_SEG2(2)) # ((!\Decoder0~4_combout\)))) # (!\s117_spi|tx_REG~35_combout\ & (((S117_DIGEN(2) & \Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_SEG2(2),
	datab => \s117_spi|tx_REG~35_combout\,
	datac => S117_DIGEN(2),
	datad => \Decoder0~4_combout\,
	combout => \s117_spi|tx_REG~36_combout\);

-- Location: LCFF_X14_Y11_N19
\S117_BLNK0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(2),
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BLNK0(2));

-- Location: LCCOMB_X15_Y11_N6
\s117_spi|tx_REG~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~37_combout\ = (\s117_spi|tx_REG[1]~6_combout\ & ((S117_DP(2)) # ((\s117_spi|tx_REG[1]~5_combout\)))) # (!\s117_spi|tx_REG[1]~6_combout\ & (((!\s117_spi|tx_REG[1]~5_combout\ & S117_BLNK0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_DP(2),
	datab => \s117_spi|tx_REG[1]~6_combout\,
	datac => \s117_spi|tx_REG[1]~5_combout\,
	datad => S117_BLNK0(2),
	combout => \s117_spi|tx_REG~37_combout\);

-- Location: LCFF_X14_Y11_N29
\S117_BLNK1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(2),
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BLNK1(2));

-- Location: LCCOMB_X15_Y11_N24
\s117_spi|tx_REG~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~38_combout\ = (\s117_spi|tx_REG~37_combout\ & ((S117_BLNK1(2)) # ((!\s117_spi|tx_REG[1]~5_combout\)))) # (!\s117_spi|tx_REG~37_combout\ & (((\s117_spi|tx_REG[1]~5_combout\ & \s117_spi|tx_REG~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG~37_combout\,
	datab => S117_BLNK1(2),
	datac => \s117_spi|tx_REG[1]~5_combout\,
	datad => \s117_spi|tx_REG~36_combout\,
	combout => \s117_spi|tx_REG~38_combout\);

-- Location: LCCOMB_X19_Y11_N12
\s117_spi|tx_REG~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~39_combout\ = ((\s117_spi|tx_REG[1]~9_combout\ & ((S117_DUMMY(2)))) # (!\s117_spi|tx_REG[1]~9_combout\ & (\s117_spi|tx_REG~38_combout\))) # (!\tx_load_r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG[1]~9_combout\,
	datab => \tx_load_r~regout\,
	datac => \s117_spi|tx_REG~38_combout\,
	datad => S117_DUMMY(2),
	combout => \s117_spi|tx_REG~39_combout\);

-- Location: LCFF_X18_Y11_N1
\S117_DUMMY[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(1),
	sload => VCC,
	ena => \S117_DUMMY[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DUMMY(1));

-- Location: LCFF_X14_Y7_N23
\S117_SEG1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(1),
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG1(1));

-- Location: LCFF_X14_Y8_N1
\S117_CNTR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(1),
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_CNTR(1));

-- Location: LCCOMB_X14_Y8_N0
\s117_spi|tx_REG~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~40_combout\ = (ctrl_word(1) & ((S117_BADJ(1)) # ((ctrl_word(2))))) # (!ctrl_word(1) & (((S117_CNTR(1) & !ctrl_word(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_word(1),
	datab => S117_BADJ(1),
	datac => S117_CNTR(1),
	datad => ctrl_word(2),
	combout => \s117_spi|tx_REG~40_combout\);

-- Location: LCFF_X14_Y8_N11
\S117_SEG3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(1),
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG3(1));

-- Location: LCCOMB_X14_Y8_N10
\s117_spi|tx_REG~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~41_combout\ = (\s117_spi|tx_REG~40_combout\ & (((S117_SEG3(1)) # (!ctrl_word(2))))) # (!\s117_spi|tx_REG~40_combout\ & (S117_SEG1(1) & ((ctrl_word(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_SEG1(1),
	datab => \s117_spi|tx_REG~40_combout\,
	datac => S117_SEG3(1),
	datad => ctrl_word(2),
	combout => \s117_spi|tx_REG~41_combout\);

-- Location: LCFF_X15_Y10_N11
\S117_SEG0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(1),
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG0(1));

-- Location: LCCOMB_X15_Y10_N10
\s117_spi|tx_REG~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~42_combout\ = (\s117_spi|tx_REG[1]~2_combout\ & (((\Decoder0~4_combout\)))) # (!\s117_spi|tx_REG[1]~2_combout\ & ((\Decoder0~4_combout\ & (S117_DIGEN(1))) # (!\Decoder0~4_combout\ & ((S117_SEG0(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG[1]~2_combout\,
	datab => S117_DIGEN(1),
	datac => S117_SEG0(1),
	datad => \Decoder0~4_combout\,
	combout => \s117_spi|tx_REG~42_combout\);

-- Location: LCFF_X15_Y10_N5
\S117_SEG2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(1),
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG2(1));

-- Location: LCCOMB_X15_Y10_N4
\s117_spi|tx_REG~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~43_combout\ = (\s117_spi|tx_REG~42_combout\ & (((S117_SEG2(1)) # (!\s117_spi|tx_REG[1]~2_combout\)))) # (!\s117_spi|tx_REG~42_combout\ & (\s117_spi|tx_REG~41_combout\ & ((\s117_spi|tx_REG[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG~42_combout\,
	datab => \s117_spi|tx_REG~41_combout\,
	datac => S117_SEG2(1),
	datad => \s117_spi|tx_REG[1]~2_combout\,
	combout => \s117_spi|tx_REG~43_combout\);

-- Location: LCFF_X14_Y11_N23
\S117_BLNK0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(1),
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BLNK0(1));

-- Location: LCCOMB_X15_Y11_N26
\s117_spi|tx_REG~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~44_combout\ = (\s117_spi|tx_REG[1]~6_combout\ & (((\s117_spi|tx_REG[1]~5_combout\)))) # (!\s117_spi|tx_REG[1]~6_combout\ & ((\s117_spi|tx_REG[1]~5_combout\ & (\s117_spi|tx_REG~43_combout\)) # (!\s117_spi|tx_REG[1]~5_combout\ & 
-- ((S117_BLNK0(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG~43_combout\,
	datab => \s117_spi|tx_REG[1]~6_combout\,
	datac => \s117_spi|tx_REG[1]~5_combout\,
	datad => S117_BLNK0(1),
	combout => \s117_spi|tx_REG~44_combout\);

-- Location: LCFF_X14_Y11_N17
\S117_BLNK1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(1),
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BLNK1(1));

-- Location: LCCOMB_X15_Y11_N20
\s117_spi|tx_REG~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~45_combout\ = (\s117_spi|tx_REG~44_combout\ & (((S117_BLNK1(1)) # (!\s117_spi|tx_REG[1]~6_combout\)))) # (!\s117_spi|tx_REG~44_combout\ & (S117_DP(1) & (\s117_spi|tx_REG[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_DP(1),
	datab => \s117_spi|tx_REG~44_combout\,
	datac => \s117_spi|tx_REG[1]~6_combout\,
	datad => S117_BLNK1(1),
	combout => \s117_spi|tx_REG~45_combout\);

-- Location: LCCOMB_X19_Y11_N6
\s117_spi|tx_REG~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~46_combout\ = ((\s117_spi|tx_REG[1]~9_combout\ & (S117_DUMMY(1))) # (!\s117_spi|tx_REG[1]~9_combout\ & ((\s117_spi|tx_REG~45_combout\)))) # (!\tx_load_r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_DUMMY(1),
	datab => \s117_spi|tx_REG[1]~9_combout\,
	datac => \s117_spi|tx_REG~45_combout\,
	datad => \tx_load_r~regout\,
	combout => \s117_spi|tx_REG~46_combout\);

-- Location: LCFF_X18_Y11_N3
\S117_DUMMY[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \S117_DUMMY[0]~feeder_combout\,
	ena => \S117_DUMMY[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DUMMY(0));

-- Location: LCFF_X15_Y7_N31
\S117_BADJ[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(0),
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BADJ(0));

-- Location: LCFF_X14_Y8_N13
\S117_CNTR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(0),
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_CNTR(0));

-- Location: LCCOMB_X14_Y8_N12
\s117_spi|tx_REG~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~47_combout\ = (ctrl_word(1) & (((ctrl_word(2))))) # (!ctrl_word(1) & ((ctrl_word(2) & (S117_SEG1(0))) # (!ctrl_word(2) & ((S117_CNTR(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_word(1),
	datab => S117_SEG1(0),
	datac => S117_CNTR(0),
	datad => ctrl_word(2),
	combout => \s117_spi|tx_REG~47_combout\);

-- Location: LCCOMB_X15_Y7_N30
\s117_spi|tx_REG~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~48_combout\ = (\s117_spi|tx_REG~47_combout\ & ((S117_SEG3(0)) # ((!ctrl_word(1))))) # (!\s117_spi|tx_REG~47_combout\ & (((S117_BADJ(0) & ctrl_word(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG~47_combout\,
	datab => S117_SEG3(0),
	datac => S117_BADJ(0),
	datad => ctrl_word(1),
	combout => \s117_spi|tx_REG~48_combout\);

-- Location: LCFF_X15_Y10_N23
\S117_SEG0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(0),
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG0(0));

-- Location: LCCOMB_X15_Y10_N22
\s117_spi|tx_REG~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~49_combout\ = (\s117_spi|tx_REG[1]~2_combout\ & ((\s117_spi|tx_REG~48_combout\) # ((\Decoder0~4_combout\)))) # (!\s117_spi|tx_REG[1]~2_combout\ & (((S117_SEG0(0) & !\Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG[1]~2_combout\,
	datab => \s117_spi|tx_REG~48_combout\,
	datac => S117_SEG0(0),
	datad => \Decoder0~4_combout\,
	combout => \s117_spi|tx_REG~49_combout\);

-- Location: LCCOMB_X14_Y10_N22
\s117_spi|tx_REG~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~50_combout\ = (\s117_spi|tx_REG~49_combout\ & (((S117_SEG2(0)) # (!\Decoder0~4_combout\)))) # (!\s117_spi|tx_REG~49_combout\ & (S117_DIGEN(0) & ((\Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_DIGEN(0),
	datab => \s117_spi|tx_REG~49_combout\,
	datac => S117_SEG2(0),
	datad => \Decoder0~4_combout\,
	combout => \s117_spi|tx_REG~50_combout\);

-- Location: LCFF_X14_Y11_N27
\S117_BLNK0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(0),
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BLNK0(0));

-- Location: LCCOMB_X18_Y11_N22
\s117_spi|tx_REG~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~51_combout\ = (\s117_spi|tx_REG[1]~6_combout\ & ((\s117_spi|tx_REG[1]~5_combout\) # ((S117_DP(0))))) # (!\s117_spi|tx_REG[1]~6_combout\ & (!\s117_spi|tx_REG[1]~5_combout\ & ((S117_BLNK0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG[1]~6_combout\,
	datab => \s117_spi|tx_REG[1]~5_combout\,
	datac => S117_DP(0),
	datad => S117_BLNK0(0),
	combout => \s117_spi|tx_REG~51_combout\);

-- Location: LCFF_X14_Y11_N21
\S117_BLNK1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(0),
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BLNK1(0));

-- Location: LCCOMB_X14_Y10_N0
\s117_spi|tx_REG~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~52_combout\ = (\s117_spi|tx_REG[1]~5_combout\ & ((\s117_spi|tx_REG~51_combout\ & (S117_BLNK1(0))) # (!\s117_spi|tx_REG~51_combout\ & ((\s117_spi|tx_REG~50_combout\))))) # (!\s117_spi|tx_REG[1]~5_combout\ & 
-- (((\s117_spi|tx_REG~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_BLNK1(0),
	datab => \s117_spi|tx_REG[1]~5_combout\,
	datac => \s117_spi|tx_REG~50_combout\,
	datad => \s117_spi|tx_REG~51_combout\,
	combout => \s117_spi|tx_REG~52_combout\);

-- Location: LCCOMB_X19_Y11_N24
\s117_spi|tx_REG~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~53_combout\ = ((\s117_spi|tx_REG[1]~9_combout\ & (S117_DUMMY(0))) # (!\s117_spi|tx_REG[1]~9_combout\ & ((\s117_spi|tx_REG~52_combout\)))) # (!\tx_load_r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_DUMMY(0),
	datab => \s117_spi|tx_REG[1]~9_combout\,
	datac => \s117_spi|tx_REG~52_combout\,
	datad => \tx_load_r~regout\,
	combout => \s117_spi|tx_REG~53_combout\);

-- Location: LCFF_X18_Y11_N5
\S117_DUMMY[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \S117_DUMMY[3]~feeder_combout\,
	ena => \S117_DUMMY[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DUMMY(3));

-- Location: LCFF_X14_Y8_N23
\S117_CNTR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(3),
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_CNTR(3));

-- Location: LCCOMB_X14_Y8_N22
\s117_spi|tx_REG~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~54_combout\ = (ctrl_word(2) & (((ctrl_word(1))))) # (!ctrl_word(2) & ((ctrl_word(1) & (S117_BADJ(3))) # (!ctrl_word(1) & ((S117_CNTR(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_BADJ(3),
	datab => ctrl_word(2),
	datac => S117_CNTR(3),
	datad => ctrl_word(1),
	combout => \s117_spi|tx_REG~54_combout\);

-- Location: LCCOMB_X14_Y7_N18
\s117_spi|tx_REG~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~55_combout\ = (\s117_spi|tx_REG~54_combout\ & ((S117_SEG3(3)) # ((!ctrl_word(2))))) # (!\s117_spi|tx_REG~54_combout\ & (((S117_SEG1(3) & ctrl_word(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_SEG3(3),
	datab => \s117_spi|tx_REG~54_combout\,
	datac => S117_SEG1(3),
	datad => ctrl_word(2),
	combout => \s117_spi|tx_REG~55_combout\);

-- Location: LCFF_X15_Y10_N1
\S117_SEG0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(3),
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG0(3));

-- Location: LCCOMB_X15_Y10_N0
\s117_spi|tx_REG~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~56_combout\ = (\s117_spi|tx_REG[1]~2_combout\ & (((\Decoder0~4_combout\)))) # (!\s117_spi|tx_REG[1]~2_combout\ & ((\Decoder0~4_combout\ & (S117_DIGEN(3))) # (!\Decoder0~4_combout\ & ((S117_SEG0(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG[1]~2_combout\,
	datab => S117_DIGEN(3),
	datac => S117_SEG0(3),
	datad => \Decoder0~4_combout\,
	combout => \s117_spi|tx_REG~56_combout\);

-- Location: LCFF_X15_Y11_N31
\S117_SEG2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(3),
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG2(3));

-- Location: LCCOMB_X15_Y11_N30
\s117_spi|tx_REG~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~57_combout\ = (\s117_spi|tx_REG~56_combout\ & (((S117_SEG2(3)) # (!\s117_spi|tx_REG[1]~2_combout\)))) # (!\s117_spi|tx_REG~56_combout\ & (\s117_spi|tx_REG~55_combout\ & ((\s117_spi|tx_REG[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG~55_combout\,
	datab => \s117_spi|tx_REG~56_combout\,
	datac => S117_SEG2(3),
	datad => \s117_spi|tx_REG[1]~2_combout\,
	combout => \s117_spi|tx_REG~57_combout\);

-- Location: LCFF_X14_Y11_N7
\S117_BLNK0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(3),
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BLNK0(3));

-- Location: LCCOMB_X15_Y11_N8
\s117_spi|tx_REG~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~58_combout\ = (\s117_spi|tx_REG[1]~6_combout\ & (((\s117_spi|tx_REG[1]~5_combout\)))) # (!\s117_spi|tx_REG[1]~6_combout\ & ((\s117_spi|tx_REG[1]~5_combout\ & ((\s117_spi|tx_REG~57_combout\))) # (!\s117_spi|tx_REG[1]~5_combout\ & 
-- (S117_BLNK0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_BLNK0(3),
	datab => \s117_spi|tx_REG[1]~6_combout\,
	datac => \s117_spi|tx_REG[1]~5_combout\,
	datad => \s117_spi|tx_REG~57_combout\,
	combout => \s117_spi|tx_REG~58_combout\);

-- Location: LCFF_X14_Y11_N31
\S117_BLNK1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(3),
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BLNK1(3));

-- Location: LCCOMB_X18_Y11_N26
\s117_spi|tx_REG~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~59_combout\ = (\s117_spi|tx_REG~58_combout\ & ((S117_BLNK1(3)) # ((!\s117_spi|tx_REG[1]~6_combout\)))) # (!\s117_spi|tx_REG~58_combout\ & (((S117_DP(3) & \s117_spi|tx_REG[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG~58_combout\,
	datab => S117_BLNK1(3),
	datac => S117_DP(3),
	datad => \s117_spi|tx_REG[1]~6_combout\,
	combout => \s117_spi|tx_REG~59_combout\);

-- Location: LCCOMB_X19_Y11_N20
\s117_spi|tx_REG~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_REG~60_combout\ = ((\s117_spi|tx_REG[1]~9_combout\ & ((S117_DUMMY(3)))) # (!\s117_spi|tx_REG[1]~9_combout\ & (\s117_spi|tx_REG~59_combout\))) # (!\tx_load_r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_REG[1]~9_combout\,
	datab => \s117_spi|tx_REG~59_combout\,
	datac => S117_DUMMY(3),
	datad => \tx_load_r~regout\,
	combout => \s117_spi|tx_REG~60_combout\);

-- Location: LCCOMB_X18_Y8_N14
\s117_spi|sck_posedge~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|sck_posedge~2_combout\ = (\cs_r3~regout\ & (((\s117_spi|sck_posedge~regout\)))) # (!\cs_r3~regout\ & ((\s117_spi|r2_sck~regout\ & ((\s117_spi|sck_posedge~regout\) # (!\s117_spi|r3_sck~regout\))) # (!\s117_spi|r2_sck~regout\ & 
-- (!\s117_spi|r3_sck~regout\ & \s117_spi|sck_posedge~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cs_r3~regout\,
	datab => \s117_spi|r2_sck~regout\,
	datac => \s117_spi|r3_sck~regout\,
	datad => \s117_spi|sck_posedge~regout\,
	combout => \s117_spi|sck_posedge~2_combout\);

-- Location: LCCOMB_X17_Y10_N26
\Decoder0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!ctrl_word(3) & \wrd_r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ctrl_word(3),
	datad => \wrd_r~regout\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X15_Y7_N20
\seg_r~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~2_combout\ = (digit_counter(1) & (((digit_counter(2))))) # (!digit_counter(1) & ((digit_counter(2) & (S117_SEG2(3))) # (!digit_counter(2) & ((S117_SEG0(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_counter(1),
	datab => S117_SEG2(3),
	datac => digit_counter(2),
	datad => S117_SEG0(3),
	combout => \seg_r~2_combout\);

-- Location: LCCOMB_X14_Y7_N14
\seg_r~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~11_combout\ = (digit_counter(1) & ((S117_SEG1(5)) # ((digit_counter(2))))) # (!digit_counter(1) & (((!digit_counter(2) & S117_SEG0(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_SEG1(5),
	datab => digit_counter(1),
	datac => digit_counter(2),
	datad => S117_SEG0(5),
	combout => \seg_r~11_combout\);

-- Location: LCCOMB_X15_Y7_N28
\seg_r~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~12_combout\ = (digit_counter(2) & ((\seg_r~11_combout\ & ((S117_SEG3(5)))) # (!\seg_r~11_combout\ & (S117_SEG2(5))))) # (!digit_counter(2) & (((\seg_r~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_counter(2),
	datab => S117_SEG2(5),
	datac => S117_SEG3(5),
	datad => \seg_r~11_combout\,
	combout => \seg_r~12_combout\);

-- Location: LCCOMB_X15_Y10_N6
\seg_r~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~13_combout\ = (digit_counter(2) & ((digit_counter(1)) # ((S117_SEG2(1))))) # (!digit_counter(2) & (!digit_counter(1) & ((S117_SEG0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_counter(2),
	datab => digit_counter(1),
	datac => S117_SEG2(1),
	datad => S117_SEG0(1),
	combout => \seg_r~13_combout\);

-- Location: LCCOMB_X14_Y7_N22
\seg_r~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~14_combout\ = (\seg_r~13_combout\ & (((S117_SEG3(1))) # (!digit_counter(1)))) # (!\seg_r~13_combout\ & (digit_counter(1) & (S117_SEG1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_r~13_combout\,
	datab => digit_counter(1),
	datac => S117_SEG1(1),
	datad => S117_SEG3(1),
	combout => \seg_r~14_combout\);

-- Location: LCCOMB_X14_Y7_N4
\seg_r~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~15_combout\ = (\Mux0~4_combout\ & ((digit_counter(0) & (\seg_r~12_combout\)) # (!digit_counter(0) & ((\seg_r~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_counter(0),
	datab => \Mux0~4_combout\,
	datac => \seg_r~12_combout\,
	datad => \seg_r~14_combout\,
	combout => \seg_r~15_combout\);

-- Location: LCCOMB_X17_Y7_N20
\Equal13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = (!S117_BADJ(6) & !S117_BADJ(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => S117_BADJ(6),
	datad => S117_BADJ(7),
	combout => \Equal13~1_combout\);

-- Location: LCCOMB_X15_Y12_N28
\blink_compl[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_compl[7]~0_combout\ = (\LessThan2~14_combout\ & ((S117_BLNK1(7)))) # (!\LessThan2~14_combout\ & (S117_BLNK0(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~14_combout\,
	datac => S117_BLNK0(7),
	datad => S117_BLNK1(7),
	combout => \blink_compl[7]~0_combout\);

-- Location: LCCOMB_X15_Y12_N30
\blink_compl[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_compl[6]~1_combout\ = (\LessThan2~14_combout\ & ((S117_BLNK1(6)))) # (!\LessThan2~14_combout\ & (S117_BLNK0(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_BLNK0(6),
	datac => \LessThan2~14_combout\,
	datad => S117_BLNK1(6),
	combout => \blink_compl[6]~1_combout\);

-- Location: LCCOMB_X17_Y11_N22
\blink_compl[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_compl[5]~2_combout\ = (\LessThan2~14_combout\ & ((S117_BLNK1(5)))) # (!\LessThan2~14_combout\ & (S117_BLNK0(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~14_combout\,
	datac => S117_BLNK0(5),
	datad => S117_BLNK1(5),
	combout => \blink_compl[5]~2_combout\);

-- Location: LCCOMB_X17_Y11_N24
\blink_compl[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_compl[4]~3_combout\ = (\LessThan2~14_combout\ & ((S117_BLNK1(4)))) # (!\LessThan2~14_combout\ & (S117_BLNK0(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~14_combout\,
	datac => S117_BLNK0(4),
	datad => S117_BLNK1(4),
	combout => \blink_compl[4]~3_combout\);

-- Location: LCCOMB_X15_Y12_N24
\Equal23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal23~0_combout\ = (!\blink_compl[4]~3_combout\ & (!\blink_compl[7]~0_combout\ & (!\blink_compl[6]~1_combout\ & !\blink_compl[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink_compl[4]~3_combout\,
	datab => \blink_compl[7]~0_combout\,
	datac => \blink_compl[6]~1_combout\,
	datad => \blink_compl[5]~2_combout\,
	combout => \Equal23~0_combout\);

-- Location: LCCOMB_X14_Y11_N22
\blink_compl[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_compl[3]~4_combout\ = (\LessThan2~14_combout\ & ((S117_BLNK1(3)))) # (!\LessThan2~14_combout\ & (S117_BLNK0(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_BLNK0(3),
	datab => S117_BLNK1(3),
	datad => \LessThan2~14_combout\,
	combout => \blink_compl[3]~4_combout\);

-- Location: LCCOMB_X15_Y11_N2
\blink_compl[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_compl[2]~5_combout\ = (\LessThan2~14_combout\ & ((S117_BLNK1(2)))) # (!\LessThan2~14_combout\ & (S117_BLNK0(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~14_combout\,
	datab => S117_BLNK0(2),
	datad => S117_BLNK1(2),
	combout => \blink_compl[2]~5_combout\);

-- Location: LCCOMB_X14_Y11_N18
\blink_compl[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_compl[1]~6_combout\ = (\LessThan2~14_combout\ & (S117_BLNK1(1))) # (!\LessThan2~14_combout\ & ((S117_BLNK0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_BLNK1(1),
	datab => S117_BLNK0(1),
	datad => \LessThan2~14_combout\,
	combout => \blink_compl[1]~6_combout\);

-- Location: LCCOMB_X17_Y11_N18
\blink_compl[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_compl[0]~7_combout\ = (\LessThan2~14_combout\ & ((S117_BLNK1(0)))) # (!\LessThan2~14_combout\ & (S117_BLNK0(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~14_combout\,
	datac => S117_BLNK0(0),
	datad => S117_BLNK1(0),
	combout => \blink_compl[0]~7_combout\);

-- Location: LCCOMB_X15_Y12_N2
\Equal23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal23~1_combout\ = (!\blink_compl[3]~4_combout\ & (!\blink_compl[1]~6_combout\ & (!\blink_compl[0]~7_combout\ & !\blink_compl[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink_compl[3]~4_combout\,
	datab => \blink_compl[1]~6_combout\,
	datac => \blink_compl[0]~7_combout\,
	datad => \blink_compl[2]~5_combout\,
	combout => \Equal23~1_combout\);

-- Location: LCFF_X10_Y4_N3
\interval_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \interval_counter~0_combout\,
	ena => \dig_driver_r[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => interval_counter(1));

-- Location: LCFF_X10_Y4_N13
\interval_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \interval_counter~1_combout\,
	ena => \dig_driver_r[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => interval_counter(3));

-- Location: LCFF_X10_Y4_N15
\interval_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \interval_counter~2_combout\,
	ena => \dig_driver_r[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => interval_counter(0));

-- Location: LCFF_X10_Y4_N17
\interval_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \interval_counter~3_combout\,
	ena => \dig_driver_r[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => interval_counter(2));

-- Location: LCCOMB_X10_Y4_N26
\blink_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_out[0]~0_combout\ = (interval_counter(3) & (!interval_counter(0) & (!interval_counter(2) & interval_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => interval_counter(3),
	datab => interval_counter(0),
	datac => interval_counter(2),
	datad => interval_counter(1),
	combout => \blink_out[0]~0_combout\);

-- Location: LCCOMB_X15_Y12_N26
\blink_out[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_out[0]~1_combout\ = (\blink_out[0]~0_combout\ & (!S117_CNTR(7) & \tmux_posedge~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blink_out[0]~0_combout\,
	datac => S117_CNTR(7),
	datad => \tmux_posedge~regout\,
	combout => \blink_out[0]~1_combout\);

-- Location: LCCOMB_X14_Y11_N26
\blink_comph[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_comph[7]~0_combout\ = (\LessThan2~14_combout\ & (S117_BLNK0(7))) # (!\LessThan2~14_combout\ & ((S117_BLNK1(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~14_combout\,
	datab => S117_BLNK0(7),
	datad => S117_BLNK1(7),
	combout => \blink_comph[7]~0_combout\);

-- Location: LCCOMB_X15_Y11_N28
\blink_comph[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_comph[6]~1_combout\ = (\LessThan2~14_combout\ & ((S117_BLNK0(6)))) # (!\LessThan2~14_combout\ & (S117_BLNK1(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~14_combout\,
	datac => S117_BLNK1(6),
	datad => S117_BLNK0(6),
	combout => \blink_comph[6]~1_combout\);

-- Location: LCCOMB_X14_Y11_N24
\blink_comph[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_comph[5]~2_combout\ = (\LessThan2~14_combout\ & ((S117_BLNK0(5)))) # (!\LessThan2~14_combout\ & (S117_BLNK1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~14_combout\,
	datac => S117_BLNK1(5),
	datad => S117_BLNK0(5),
	combout => \blink_comph[5]~2_combout\);

-- Location: LCCOMB_X17_Y11_N26
\blink_comph[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_comph[4]~3_combout\ = (\LessThan2~14_combout\ & (S117_BLNK0(4))) # (!\LessThan2~14_combout\ & ((S117_BLNK1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~14_combout\,
	datab => S117_BLNK0(4),
	datac => S117_BLNK1(4),
	combout => \blink_comph[4]~3_combout\);

-- Location: LCCOMB_X14_Y11_N30
\blink_comph[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_comph[3]~4_combout\ = (\LessThan2~14_combout\ & ((S117_BLNK0(3)))) # (!\LessThan2~14_combout\ & (S117_BLNK1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~14_combout\,
	datac => S117_BLNK1(3),
	datad => S117_BLNK0(3),
	combout => \blink_comph[3]~4_combout\);

-- Location: LCCOMB_X14_Y11_N28
\blink_comph[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_comph[2]~5_combout\ = (\LessThan2~14_combout\ & ((S117_BLNK0(2)))) # (!\LessThan2~14_combout\ & (S117_BLNK1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~14_combout\,
	datac => S117_BLNK1(2),
	datad => S117_BLNK0(2),
	combout => \blink_comph[2]~5_combout\);

-- Location: LCCOMB_X14_Y11_N16
\blink_comph[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_comph[1]~6_combout\ = (\LessThan2~14_combout\ & ((S117_BLNK0(1)))) # (!\LessThan2~14_combout\ & (S117_BLNK1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~14_combout\,
	datac => S117_BLNK1(1),
	datad => S117_BLNK0(1),
	combout => \blink_comph[1]~6_combout\);

-- Location: LCCOMB_X14_Y11_N20
\blink_comph[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_comph[0]~7_combout\ = (\LessThan2~14_combout\ & ((S117_BLNK0(0)))) # (!\LessThan2~14_combout\ & (S117_BLNK1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~14_combout\,
	datac => S117_BLNK1(0),
	datad => S117_BLNK0(0),
	combout => \blink_comph[0]~7_combout\);

-- Location: LCCOMB_X15_Y12_N4
\blink_out[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_out[0]~2_combout\ = (\blink_out[0]~1_combout\ & ((\LessThan5~14_combout\ & (!\LessThan4~14_combout\)) # (!\LessThan5~14_combout\ & ((blink_out(0)))))) # (!\blink_out[0]~1_combout\ & (((blink_out(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink_out[0]~1_combout\,
	datab => \LessThan4~14_combout\,
	datac => \LessThan5~14_combout\,
	datad => blink_out(0),
	combout => \blink_out[0]~2_combout\);

-- Location: LCCOMB_X15_Y12_N0
\blink_out[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_out[0]~3_combout\ = (\blink_out[0]~2_combout\) # ((\Equal23~0_combout\ & (\blink_out[0]~1_combout\ & \Equal23~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal23~0_combout\,
	datab => \blink_out[0]~2_combout\,
	datac => \blink_out[0]~1_combout\,
	datad => \Equal23~1_combout\,
	combout => \blink_out[0]~3_combout\);

-- Location: LCCOMB_X17_Y10_N2
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (ctrl_word(2) & (!ctrl_word(3))) # (!ctrl_word(2) & ((ctrl_word(3) & ((!ctrl_word(1)) # (!ctrl_word(0)))) # (!ctrl_word(3) & ((ctrl_word(0)) # (ctrl_word(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_word(2),
	datab => ctrl_word(3),
	datac => ctrl_word(0),
	datad => ctrl_word(1),
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X17_Y10_N28
\S117_DUMMY[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \S117_DUMMY[7]~0_combout\ = (!\WideOr0~0_combout\ & \wrd_r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr0~0_combout\,
	datad => \wrd_r~regout\,
	combout => \S117_DUMMY[7]~0_combout\);

-- Location: LCCOMB_X17_Y10_N0
\Decoder0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~14_combout\ = (!ctrl_word(0) & (\Decoder0~7_combout\ & !ctrl_word(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ctrl_word(0),
	datac => \Decoder0~7_combout\,
	datad => ctrl_word(1),
	combout => \Decoder0~14_combout\);

-- Location: LCCOMB_X17_Y10_N10
\Decoder0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~15_combout\ = (ctrl_word(0) & (\Decoder0~7_combout\ & !ctrl_word(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ctrl_word(0),
	datac => \Decoder0~7_combout\,
	datad => ctrl_word(1),
	combout => \Decoder0~15_combout\);

-- Location: LCFF_X18_Y10_N27
\state.STATE_READ\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \ctrl_word[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.STATE_READ~regout\);

-- Location: LCCOMB_X19_Y10_N0
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.STATE_READ~regout\) # ((\s117_spi|DATR~regout\ & (\tx_load_r~regout\ & !\state.STATE_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_READ~regout\,
	datab => \s117_spi|DATR~regout\,
	datac => \tx_load_r~regout\,
	datad => \state.STATE_IDLE~regout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X18_Y8_N12
\s117_spi|rx_REG[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|rx_REG[4]~0_combout\ = (\s117_spi|r2_sck~regout\ & (!\s117_spi|r3_sck~regout\ & !\cs_r3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|r2_sck~regout\,
	datab => \s117_spi|r3_sck~regout\,
	datac => \cs_r3~regout\,
	combout => \s117_spi|rx_REG[4]~0_combout\);

-- Location: LCFF_X18_Y10_N21
\state.STATE_WAIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.STATE_WAIT~regout\);

-- Location: LCFF_X18_Y10_N13
\ctrl_word[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \ctrl_word[6]~feeder_combout\,
	ena => \ctrl_word[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ctrl_word(6));

-- Location: LCCOMB_X10_Y4_N2
\interval_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \interval_counter~0_combout\ = (!\blink_out[0]~0_combout\ & (!S117_CNTR(7) & (interval_counter(0) $ (interval_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => interval_counter(0),
	datab => \blink_out[0]~0_combout\,
	datac => interval_counter(1),
	datad => S117_CNTR(7),
	combout => \interval_counter~0_combout\);

-- Location: LCCOMB_X10_Y4_N28
\Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = interval_counter(3) $ (((interval_counter(0) & (interval_counter(2) & interval_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => interval_counter(3),
	datab => interval_counter(0),
	datac => interval_counter(2),
	datad => interval_counter(1),
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X10_Y4_N12
\interval_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \interval_counter~1_combout\ = (!S117_CNTR(7) & (\Add4~0_combout\ & !\blink_out[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_CNTR(7),
	datab => \Add4~0_combout\,
	datad => \blink_out[0]~0_combout\,
	combout => \interval_counter~1_combout\);

-- Location: LCCOMB_X10_Y4_N14
\interval_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \interval_counter~2_combout\ = (!S117_CNTR(7) & (!interval_counter(0) & !\blink_out[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_CNTR(7),
	datac => interval_counter(0),
	datad => \blink_out[0]~0_combout\,
	combout => \interval_counter~2_combout\);

-- Location: LCCOMB_X10_Y4_N30
\Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = interval_counter(2) $ (((interval_counter(1) & interval_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => interval_counter(2),
	datab => interval_counter(1),
	datac => interval_counter(0),
	combout => \Add4~1_combout\);

-- Location: LCCOMB_X10_Y4_N16
\interval_counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \interval_counter~3_combout\ = (!S117_CNTR(7) & (\Add4~1_combout\ & !\blink_out[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_CNTR(7),
	datab => \Add4~1_combout\,
	datad => \blink_out[0]~0_combout\,
	combout => \interval_counter~3_combout\);

-- Location: LCCOMB_X15_Y12_N6
\blink_counter[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_counter[6]~24_combout\ = (S117_CNTR(7)) # ((!\LessThan5~14_combout\ & ((!\Equal23~1_combout\) # (!\Equal23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal23~0_combout\,
	datab => \Equal23~1_combout\,
	datac => \LessThan5~14_combout\,
	datad => S117_CNTR(7),
	combout => \blink_counter[6]~24_combout\);

-- Location: LCCOMB_X13_Y7_N24
\blink_counter[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \blink_counter[6]~25_combout\ = (S117_CNTR(7)) # ((\tmux_posedge~regout\ & \blink_out[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmux_posedge~regout\,
	datac => \blink_out[0]~0_combout\,
	datad => S117_CNTR(7),
	combout => \blink_counter[6]~25_combout\);

-- Location: LCCOMB_X13_Y5_N2
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (tmux_counter(4)) # (((tmux_counter(6)) # (!tmux_counter(5))) # (!tmux_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmux_counter(4),
	datab => tmux_counter(7),
	datac => tmux_counter(5),
	datad => tmux_counter(6),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X18_Y10_N20
\state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~10_combout\ = (\always0~0_combout\ & ((\state.STATE_READ~regout\) # ((\state.STATE_WAIT~regout\ & !\s117_spi|DATR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~0_combout\,
	datab => \state.STATE_READ~regout\,
	datac => \state.STATE_WAIT~regout\,
	datad => \s117_spi|DATR~regout\,
	combout => \state~10_combout\);

-- Location: LCCOMB_X14_Y6_N6
\decoder_r[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_r[2]~8_combout\ = (seg_r(2) & (((!seg_r(3))))) # (!seg_r(2) & (((!seg_r(3) & seg_r(0))) # (!seg_r(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_r(1),
	datab => seg_r(3),
	datac => seg_r(2),
	datad => seg_r(0),
	combout => \decoder_r[2]~8_combout\);

-- Location: LCCOMB_X14_Y10_N12
\S117_DIGEN[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \S117_DIGEN[5]~feeder_combout\ = \s117_spi|rx_DATA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|rx_DATA\(5),
	combout => \S117_DIGEN[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y10_N12
\ctrl_word[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctrl_word[6]~feeder_combout\ = \s117_spi|rx_DATA\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|rx_DATA\(6),
	combout => \ctrl_word[6]~feeder_combout\);

-- Location: LCCOMB_X14_Y10_N24
\S117_DIGEN[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \S117_DIGEN[7]~feeder_combout\ = \s117_spi|rx_DATA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|rx_DATA\(7),
	combout => \S117_DIGEN[7]~feeder_combout\);

-- Location: LCCOMB_X18_Y11_N4
\S117_DUMMY[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \S117_DUMMY[3]~feeder_combout\ = \s117_spi|rx_DATA\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|rx_DATA\(3),
	combout => \S117_DUMMY[3]~feeder_combout\);

-- Location: LCCOMB_X19_Y11_N28
\S117_DUMMY[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \S117_DUMMY[2]~feeder_combout\ = \s117_spi|rx_DATA\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|rx_DATA\(2),
	combout => \S117_DUMMY[2]~feeder_combout\);

-- Location: LCCOMB_X18_Y11_N2
\S117_DUMMY[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \S117_DUMMY[0]~feeder_combout\ = \s117_spi|rx_DATA\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|rx_DATA\(0),
	combout => \S117_DUMMY[0]~feeder_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mclk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mclk,
	combout => \mclk~combout\);

-- Location: CLKCTRL_G2
\mclk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mclk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mclk~clkctrl_outclk\);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CS,
	combout => \CS~combout\);

-- Location: LCFF_X18_Y8_N21
cs_r1 : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \CS~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cs_r1~regout\);

-- Location: LCFF_X18_Y8_N3
\s117_spi|r2_cs\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \cs_r1~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|r2_cs~regout\);

-- Location: LCFF_X18_Y8_N13
cs_r3 : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|r2_cs~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cs_r3~regout\);

-- Location: LCCOMB_X18_Y8_N2
\always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (\s117_spi|r2_cs~regout\) # (!\cs_r3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cs_r3~regout\,
	datac => \s117_spi|r2_cs~regout\,
	combout => \always0~0_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SCK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SCK,
	combout => \SCK~combout\);

-- Location: LCCOMB_X18_Y8_N4
\s117_spi|r1_sck~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|r1_sck~feeder_combout\ = \SCK~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SCK~combout\,
	combout => \s117_spi|r1_sck~feeder_combout\);

-- Location: LCFF_X18_Y8_N5
\s117_spi|r1_sck\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|r1_sck~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|r1_sck~regout\);

-- Location: LCFF_X18_Y8_N1
\s117_spi|r2_sck\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|r1_sck~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|r2_sck~regout\);

-- Location: LCFF_X18_Y8_N15
\s117_spi|r3_sck\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|r2_sck~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|r3_sck~regout\);

-- Location: LCCOMB_X18_Y8_N18
\s117_spi|sck_posedge~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|sck_posedge~3_combout\ = (\s117_spi|sck_posedge~2_combout\ & ((\s117_spi|r2_cs~regout\) # (!\cs_r3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|sck_posedge~2_combout\,
	datac => \cs_r3~regout\,
	datad => \s117_spi|r2_cs~regout\,
	combout => \s117_spi|sck_posedge~3_combout\);

-- Location: LCFF_X18_Y8_N19
\s117_spi|sck_posedge\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|sck_posedge~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|sck_posedge~regout\);

-- Location: LCCOMB_X18_Y8_N24
\s117_spi|r_miso~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|r_miso~1_combout\ = (!\cs_r3~regout\ & (\s117_spi|r3_sck~regout\ & (!\s117_spi|r2_sck~regout\ & \s117_spi|sck_posedge~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cs_r3~regout\,
	datab => \s117_spi|r3_sck~regout\,
	datac => \s117_spi|r2_sck~regout\,
	datad => \s117_spi|sck_posedge~regout\,
	combout => \s117_spi|r_miso~1_combout\);

-- Location: LCCOMB_X18_Y8_N8
\s117_spi|r_miso~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|r_miso~2_combout\ = ((\s117_spi|r_miso~1_combout\ & (\s117_spi|r_miso~0_combout\)) # (!\s117_spi|r_miso~1_combout\ & ((\s117_spi|r_miso~regout\)))) # (!\always0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|r_miso~0_combout\,
	datab => \always0~0_combout\,
	datac => \s117_spi|r_miso~regout\,
	datad => \s117_spi|r_miso~1_combout\,
	combout => \s117_spi|r_miso~2_combout\);

-- Location: LCFF_X18_Y8_N9
\s117_spi|r_miso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|r_miso~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|r_miso~regout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MOSI~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MOSI,
	combout => \MOSI~combout\);

-- Location: LCFF_X10_Y6_N27
\s117_spi|r1_mosi\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \MOSI~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|r1_mosi~regout\);

-- Location: LCCOMB_X10_Y6_N0
\s117_spi|r2_mosi~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|r2_mosi~feeder_combout\ = \s117_spi|r1_mosi~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|r1_mosi~regout\,
	combout => \s117_spi|r2_mosi~feeder_combout\);

-- Location: LCFF_X10_Y6_N1
\s117_spi|r2_mosi\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|r2_mosi~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|r2_mosi~regout\);

-- Location: LCCOMB_X17_Y8_N16
\s117_spi|rx_REG[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|rx_REG[0]~feeder_combout\ = \s117_spi|r2_mosi~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|r2_mosi~regout\,
	combout => \s117_spi|rx_REG[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y8_N22
\s117_spi|tx_COUNTER~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_COUNTER~3_combout\ = (!\s117_spi|tx_COUNTER\(0) & ((\s117_spi|r2_cs~regout\) # (!\cs_r3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cs_r3~regout\,
	datac => \s117_spi|tx_COUNTER\(0),
	datad => \s117_spi|r2_cs~regout\,
	combout => \s117_spi|tx_COUNTER~3_combout\);

-- Location: LCCOMB_X18_Y8_N28
\s117_spi|tx_COUNTER[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_COUNTER[0]~2_combout\ = (!\s117_spi|tx_COUNTER[0]~1_combout\ & ((!\s117_spi|r2_cs~regout\) # (!\cs_r3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_COUNTER[0]~1_combout\,
	datac => \cs_r3~regout\,
	datad => \s117_spi|r2_cs~regout\,
	combout => \s117_spi|tx_COUNTER[0]~2_combout\);

-- Location: LCFF_X18_Y8_N23
\s117_spi|tx_COUNTER[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|tx_COUNTER~3_combout\,
	ena => \s117_spi|tx_COUNTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|tx_COUNTER\(0));

-- Location: LCCOMB_X18_Y8_N10
\s117_spi|tx_COUNTER~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_COUNTER~0_combout\ = (\cs_r3~regout\ & ((\s117_spi|tx_COUNTER\(0) $ (!\s117_spi|tx_COUNTER\(1))) # (!\s117_spi|r2_cs~regout\))) # (!\cs_r3~regout\ & (\s117_spi|tx_COUNTER\(0) $ ((!\s117_spi|tx_COUNTER\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cs_r3~regout\,
	datab => \s117_spi|tx_COUNTER\(0),
	datac => \s117_spi|tx_COUNTER\(1),
	datad => \s117_spi|r2_cs~regout\,
	combout => \s117_spi|tx_COUNTER~0_combout\);

-- Location: LCFF_X18_Y8_N11
\s117_spi|tx_COUNTER[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|tx_COUNTER~0_combout\,
	ena => \s117_spi|tx_COUNTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|tx_COUNTER\(1));

-- Location: LCCOMB_X18_Y8_N26
\s117_spi|tx_COUNTER~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|tx_COUNTER~4_combout\ = (\s117_spi|tx_COUNTER\(2) $ (((!\s117_spi|tx_COUNTER\(0) & !\s117_spi|tx_COUNTER\(1))))) # (!\always0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|tx_COUNTER\(0),
	datab => \always0~0_combout\,
	datac => \s117_spi|tx_COUNTER\(2),
	datad => \s117_spi|tx_COUNTER\(1),
	combout => \s117_spi|tx_COUNTER~4_combout\);

-- Location: LCFF_X18_Y8_N27
\s117_spi|tx_COUNTER[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|tx_COUNTER~4_combout\,
	ena => \s117_spi|tx_COUNTER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|tx_COUNTER\(2));

-- Location: LCCOMB_X18_Y8_N30
\s117_spi|rx_REG[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|rx_REG[4]~1_combout\ = (\s117_spi|rx_REG[4]~0_combout\ & (((!\s117_spi|tx_COUNTER\(1)) # (!\s117_spi|tx_COUNTER\(0))) # (!\s117_spi|tx_COUNTER\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|rx_REG[4]~0_combout\,
	datab => \s117_spi|tx_COUNTER\(2),
	datac => \s117_spi|tx_COUNTER\(0),
	datad => \s117_spi|tx_COUNTER\(1),
	combout => \s117_spi|rx_REG[4]~1_combout\);

-- Location: LCFF_X17_Y8_N17
\s117_spi|rx_REG[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|rx_REG[0]~feeder_combout\,
	ena => \s117_spi|rx_REG[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|rx_REG\(0));

-- Location: LCFF_X17_Y8_N13
\s117_spi|rx_REG[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_REG\(0),
	sload => VCC,
	ena => \s117_spi|rx_REG[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|rx_REG\(1));

-- Location: LCCOMB_X17_Y8_N18
\s117_spi|rx_REG[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|rx_REG[2]~feeder_combout\ = \s117_spi|rx_REG\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|rx_REG\(1),
	combout => \s117_spi|rx_REG[2]~feeder_combout\);

-- Location: LCFF_X17_Y8_N19
\s117_spi|rx_REG[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|rx_REG[2]~feeder_combout\,
	ena => \s117_spi|rx_REG[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|rx_REG\(2));

-- Location: LCCOMB_X17_Y8_N8
\s117_spi|rx_REG[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|rx_REG[3]~feeder_combout\ = \s117_spi|rx_REG\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|rx_REG\(2),
	combout => \s117_spi|rx_REG[3]~feeder_combout\);

-- Location: LCFF_X17_Y8_N9
\s117_spi|rx_REG[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|rx_REG[3]~feeder_combout\,
	ena => \s117_spi|rx_REG[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|rx_REG\(3));

-- Location: LCCOMB_X18_Y8_N16
\s117_spi|rx_DATA[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|rx_DATA[5]~0_combout\ = (\s117_spi|rx_REG[4]~0_combout\ & (\s117_spi|tx_COUNTER\(2) & (\s117_spi|tx_COUNTER\(0) & \s117_spi|tx_COUNTER\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|rx_REG[4]~0_combout\,
	datab => \s117_spi|tx_COUNTER\(2),
	datac => \s117_spi|tx_COUNTER\(0),
	datad => \s117_spi|tx_COUNTER\(1),
	combout => \s117_spi|rx_DATA[5]~0_combout\);

-- Location: LCFF_X17_Y8_N1
\s117_spi|rx_DATA[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_REG\(3),
	sload => VCC,
	ena => \s117_spi|rx_DATA[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|rx_DATA\(4));

-- Location: LCCOMB_X17_Y8_N22
\s117_spi|rx_DATA[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|rx_DATA[0]~feeder_combout\ = \s117_spi|r2_mosi~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|r2_mosi~regout\,
	combout => \s117_spi|rx_DATA[0]~feeder_combout\);

-- Location: LCFF_X17_Y8_N23
\s117_spi|rx_DATA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|rx_DATA[0]~feeder_combout\,
	ena => \s117_spi|rx_DATA[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|rx_DATA\(0));

-- Location: LCCOMB_X18_Y10_N22
\state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~11_combout\ = (\state.STATE_WAIT~regout\ & (\s117_spi|DATR~regout\ & ((\s117_spi|r2_cs~regout\) # (!\cs_r3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_WAIT~regout\,
	datab => \s117_spi|r2_cs~regout\,
	datac => \cs_r3~regout\,
	datad => \s117_spi|DATR~regout\,
	combout => \state~11_combout\);

-- Location: LCFF_X18_Y10_N23
\state.STATE_FINISH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.STATE_FINISH~regout\);

-- Location: LCCOMB_X18_Y10_N24
\state~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~9_combout\ = (!\state.STATE_FINISH~regout\ & (\always0~0_combout\ & ((\s117_spi|DATR~regout\) # (\state.STATE_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|DATR~regout\,
	datab => \state.STATE_FINISH~regout\,
	datac => \state.STATE_IDLE~regout\,
	datad => \always0~0_combout\,
	combout => \state~9_combout\);

-- Location: LCFF_X18_Y10_N25
\state.STATE_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.STATE_IDLE~regout\);

-- Location: LCCOMB_X19_Y10_N8
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.STATE_WAIT~regout\ & ((\s117_spi|DATR~regout\) # ((\datr_clr_r~regout\)))) # (!\state.STATE_WAIT~regout\ & (\s117_spi|DATR~regout\ & ((!\state.STATE_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_WAIT~regout\,
	datab => \s117_spi|DATR~regout\,
	datac => \datr_clr_r~regout\,
	datad => \state.STATE_IDLE~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X19_Y10_N9
datr_clr_r : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datr_clr_r~regout\);

-- Location: LCCOMB_X19_Y10_N4
\s117_spi|DATR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|DATR~0_combout\ = (\always0~0_combout\ & (!\datr_clr_r~regout\ & ((\s117_spi|rx_DATA[5]~0_combout\) # (\s117_spi|DATR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s117_spi|rx_DATA[5]~0_combout\,
	datab => \always0~0_combout\,
	datac => \s117_spi|DATR~regout\,
	datad => \datr_clr_r~regout\,
	combout => \s117_spi|DATR~0_combout\);

-- Location: LCFF_X19_Y10_N5
\s117_spi|DATR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|DATR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|DATR~regout\);

-- Location: LCCOMB_X18_Y10_N26
\ctrl_word[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctrl_word[3]~0_combout\ = (!\state.STATE_IDLE~regout\ & (\s117_spi|DATR~regout\ & ((\s117_spi|r2_cs~regout\) # (!\cs_r3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_IDLE~regout\,
	datab => \s117_spi|r2_cs~regout\,
	datac => \cs_r3~regout\,
	datad => \s117_spi|DATR~regout\,
	combout => \ctrl_word[3]~0_combout\);

-- Location: LCFF_X18_Y10_N11
\ctrl_word[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(0),
	sload => VCC,
	ena => \ctrl_word[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ctrl_word(0));

-- Location: LCCOMB_X17_Y8_N20
\s117_spi|rx_DATA[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|rx_DATA[2]~feeder_combout\ = \s117_spi|rx_REG\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|rx_REG\(1),
	combout => \s117_spi|rx_DATA[2]~feeder_combout\);

-- Location: LCFF_X17_Y8_N21
\s117_spi|rx_DATA[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|rx_DATA[2]~feeder_combout\,
	ena => \s117_spi|rx_DATA[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|rx_DATA\(2));

-- Location: LCFF_X18_Y10_N29
\ctrl_word[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(2),
	sload => VCC,
	ena => \ctrl_word[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ctrl_word(2));

-- Location: LCFF_X17_Y8_N25
\s117_spi|rx_DATA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_REG\(0),
	sload => VCC,
	ena => \s117_spi|rx_DATA[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|rx_DATA\(1));

-- Location: LCFF_X18_Y10_N9
\ctrl_word[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(1),
	sload => VCC,
	ena => \ctrl_word[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ctrl_word(1));

-- Location: LCCOMB_X17_Y10_N12
\Decoder0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (\Decoder0~5_combout\ & (ctrl_word(0) & (!ctrl_word(2) & !ctrl_word(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~5_combout\,
	datab => ctrl_word(0),
	datac => ctrl_word(2),
	datad => ctrl_word(1),
	combout => \Decoder0~6_combout\);

-- Location: LCFF_X14_Y6_N1
\S117_CNTR[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(4),
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_CNTR(4));

-- Location: LCFF_X17_Y8_N3
\s117_spi|rx_REG[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_REG\(3),
	sload => VCC,
	ena => \s117_spi|rx_REG[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|rx_REG\(4));

-- Location: LCCOMB_X17_Y8_N28
\s117_spi|rx_REG[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|rx_REG[5]~feeder_combout\ = \s117_spi|rx_REG\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|rx_REG\(4),
	combout => \s117_spi|rx_REG[5]~feeder_combout\);

-- Location: LCFF_X17_Y8_N29
\s117_spi|rx_REG[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|rx_REG[5]~feeder_combout\,
	ena => \s117_spi|rx_REG[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|rx_REG\(5));

-- Location: LCCOMB_X17_Y8_N30
\s117_spi|rx_REG[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|rx_REG[6]~feeder_combout\ = \s117_spi|rx_REG\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|rx_REG\(5),
	combout => \s117_spi|rx_REG[6]~feeder_combout\);

-- Location: LCFF_X17_Y8_N31
\s117_spi|rx_REG[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|rx_REG[6]~feeder_combout\,
	ena => \s117_spi|rx_REG[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|rx_REG\(6));

-- Location: LCCOMB_X17_Y8_N6
\s117_spi|rx_DATA[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|rx_DATA[7]~feeder_combout\ = \s117_spi|rx_REG\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|rx_REG\(6),
	combout => \s117_spi|rx_DATA[7]~feeder_combout\);

-- Location: LCFF_X17_Y8_N7
\s117_spi|rx_DATA[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|rx_DATA[7]~feeder_combout\,
	ena => \s117_spi|rx_DATA[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|rx_DATA\(7));

-- Location: LCFF_X15_Y12_N27
\S117_CNTR[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(7),
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_CNTR(7));

-- Location: LCCOMB_X13_Y5_N14
\tmux_counter[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[0]~18_combout\ = tmux_counter(0) $ (VCC)
-- \tmux_counter[0]~19\ = CARRY(tmux_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tmux_counter(0),
	datad => VCC,
	combout => \tmux_counter[0]~18_combout\,
	cout => \tmux_counter[0]~19\);

-- Location: LCCOMB_X13_Y4_N6
\tmux_counter[12]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[12]~42_combout\ = (tmux_counter(12) & (\tmux_counter[11]~41\ $ (GND))) # (!tmux_counter(12) & (!\tmux_counter[11]~41\ & VCC))
-- \tmux_counter[12]~43\ = CARRY((tmux_counter(12) & !\tmux_counter[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tmux_counter(12),
	datad => VCC,
	cin => \tmux_counter[11]~41\,
	combout => \tmux_counter[12]~42_combout\,
	cout => \tmux_counter[12]~43\);

-- Location: LCFF_X13_Y4_N7
\tmux_counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_counter[12]~42_combout\,
	sclr => \tmux_counter[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmux_counter(12));

-- Location: LCCOMB_X13_Y4_N12
\tmux_counter[15]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[15]~48_combout\ = (tmux_counter(15) & (!\tmux_counter[14]~47\)) # (!tmux_counter(15) & ((\tmux_counter[14]~47\) # (GND)))
-- \tmux_counter[15]~49\ = CARRY((!\tmux_counter[14]~47\) # (!tmux_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tmux_counter(15),
	datad => VCC,
	cin => \tmux_counter[14]~47\,
	combout => \tmux_counter[15]~48_combout\,
	cout => \tmux_counter[15]~49\);

-- Location: LCFF_X13_Y4_N13
\tmux_counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_counter[15]~48_combout\,
	sclr => \tmux_counter[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmux_counter(15));

-- Location: LCCOMB_X13_Y4_N20
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ((tmux_counter(12)) # ((tmux_counter(15)) # (!tmux_counter(13)))) # (!tmux_counter(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmux_counter(14),
	datab => tmux_counter(12),
	datac => tmux_counter(13),
	datad => tmux_counter(15),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X13_Y5_N16
\tmux_counter[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[1]~20_combout\ = (tmux_counter(1) & (!\tmux_counter[0]~19\)) # (!tmux_counter(1) & ((\tmux_counter[0]~19\) # (GND)))
-- \tmux_counter[1]~21\ = CARRY((!\tmux_counter[0]~19\) # (!tmux_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tmux_counter(1),
	datad => VCC,
	cin => \tmux_counter[0]~19\,
	combout => \tmux_counter[1]~20_combout\,
	cout => \tmux_counter[1]~21\);

-- Location: LCFF_X13_Y5_N17
\tmux_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_counter[1]~20_combout\,
	sclr => \tmux_counter[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmux_counter(1));

-- Location: LCCOMB_X13_Y5_N0
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ((tmux_counter(0)) # ((tmux_counter(1)) # (tmux_counter(2)))) # (!tmux_counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmux_counter(3),
	datab => tmux_counter(0),
	datac => tmux_counter(1),
	datad => tmux_counter(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X13_Y4_N26
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ((tmux_counter(9)) # ((tmux_counter(11)) # (tmux_counter(10)))) # (!tmux_counter(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmux_counter(8),
	datab => tmux_counter(9),
	datac => tmux_counter(11),
	datad => tmux_counter(10),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X13_Y6_N22
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~1_combout\) # ((\Equal1~3_combout\) # ((\Equal1~0_combout\) # (\Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~3_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X13_Y6_N8
\tmux_counter[17]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[17]~52_combout\ = (S117_CNTR(7)) # ((!tmux_counter(17) & (!tmux_counter(16) & !\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmux_counter(17),
	datab => tmux_counter(16),
	datac => S117_CNTR(7),
	datad => \Equal1~4_combout\,
	combout => \tmux_counter[17]~52_combout\);

-- Location: LCFF_X13_Y5_N15
\tmux_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_counter[0]~18_combout\,
	sclr => \tmux_counter[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmux_counter(0));

-- Location: LCCOMB_X13_Y5_N18
\tmux_counter[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[2]~22_combout\ = (tmux_counter(2) & (\tmux_counter[1]~21\ $ (GND))) # (!tmux_counter(2) & (!\tmux_counter[1]~21\ & VCC))
-- \tmux_counter[2]~23\ = CARRY((tmux_counter(2) & !\tmux_counter[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmux_counter(2),
	datad => VCC,
	cin => \tmux_counter[1]~21\,
	combout => \tmux_counter[2]~22_combout\,
	cout => \tmux_counter[2]~23\);

-- Location: LCFF_X13_Y5_N19
\tmux_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_counter[2]~22_combout\,
	sclr => \tmux_counter[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmux_counter(2));

-- Location: LCCOMB_X13_Y5_N22
\tmux_counter[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[4]~26_combout\ = (tmux_counter(4) & (\tmux_counter[3]~25\ $ (GND))) # (!tmux_counter(4) & (!\tmux_counter[3]~25\ & VCC))
-- \tmux_counter[4]~27\ = CARRY((tmux_counter(4) & !\tmux_counter[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmux_counter(4),
	datad => VCC,
	cin => \tmux_counter[3]~25\,
	combout => \tmux_counter[4]~26_combout\,
	cout => \tmux_counter[4]~27\);

-- Location: LCFF_X13_Y5_N23
\tmux_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_counter[4]~26_combout\,
	sclr => \tmux_counter[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmux_counter(4));

-- Location: LCCOMB_X13_Y5_N26
\tmux_counter[6]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[6]~30_combout\ = (tmux_counter(6) & (\tmux_counter[5]~29\ $ (GND))) # (!tmux_counter(6) & (!\tmux_counter[5]~29\ & VCC))
-- \tmux_counter[6]~31\ = CARRY((tmux_counter(6) & !\tmux_counter[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmux_counter(6),
	datad => VCC,
	cin => \tmux_counter[5]~29\,
	combout => \tmux_counter[6]~30_combout\,
	cout => \tmux_counter[6]~31\);

-- Location: LCFF_X13_Y5_N27
\tmux_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_counter[6]~30_combout\,
	sclr => \tmux_counter[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmux_counter(6));

-- Location: LCCOMB_X13_Y5_N28
\tmux_counter[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[7]~32_combout\ = (tmux_counter(7) & (!\tmux_counter[6]~31\)) # (!tmux_counter(7) & ((\tmux_counter[6]~31\) # (GND)))
-- \tmux_counter[7]~33\ = CARRY((!\tmux_counter[6]~31\) # (!tmux_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmux_counter(7),
	datad => VCC,
	cin => \tmux_counter[6]~31\,
	combout => \tmux_counter[7]~32_combout\,
	cout => \tmux_counter[7]~33\);

-- Location: LCFF_X13_Y5_N29
\tmux_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_counter[7]~32_combout\,
	sclr => \tmux_counter[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmux_counter(7));

-- Location: LCCOMB_X13_Y5_N30
\tmux_counter[8]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[8]~34_combout\ = (tmux_counter(8) & (\tmux_counter[7]~33\ $ (GND))) # (!tmux_counter(8) & (!\tmux_counter[7]~33\ & VCC))
-- \tmux_counter[8]~35\ = CARRY((tmux_counter(8) & !\tmux_counter[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmux_counter(8),
	datad => VCC,
	cin => \tmux_counter[7]~33\,
	combout => \tmux_counter[8]~34_combout\,
	cout => \tmux_counter[8]~35\);

-- Location: LCFF_X13_Y5_N31
\tmux_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_counter[8]~34_combout\,
	sclr => \tmux_counter[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmux_counter(8));

-- Location: LCCOMB_X13_Y4_N0
\tmux_counter[9]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[9]~36_combout\ = (tmux_counter(9) & (!\tmux_counter[8]~35\)) # (!tmux_counter(9) & ((\tmux_counter[8]~35\) # (GND)))
-- \tmux_counter[9]~37\ = CARRY((!\tmux_counter[8]~35\) # (!tmux_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmux_counter(9),
	datad => VCC,
	cin => \tmux_counter[8]~35\,
	combout => \tmux_counter[9]~36_combout\,
	cout => \tmux_counter[9]~37\);

-- Location: LCFF_X13_Y4_N1
\tmux_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_counter[9]~36_combout\,
	sclr => \tmux_counter[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmux_counter(9));

-- Location: LCCOMB_X13_Y4_N2
\tmux_counter[10]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[10]~38_combout\ = (tmux_counter(10) & (\tmux_counter[9]~37\ $ (GND))) # (!tmux_counter(10) & (!\tmux_counter[9]~37\ & VCC))
-- \tmux_counter[10]~39\ = CARRY((tmux_counter(10) & !\tmux_counter[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmux_counter(10),
	datad => VCC,
	cin => \tmux_counter[9]~37\,
	combout => \tmux_counter[10]~38_combout\,
	cout => \tmux_counter[10]~39\);

-- Location: LCFF_X13_Y4_N3
\tmux_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_counter[10]~38_combout\,
	sclr => \tmux_counter[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmux_counter(10));

-- Location: LCCOMB_X13_Y4_N4
\tmux_counter[11]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[11]~40_combout\ = (tmux_counter(11) & (!\tmux_counter[10]~39\)) # (!tmux_counter(11) & ((\tmux_counter[10]~39\) # (GND)))
-- \tmux_counter[11]~41\ = CARRY((!\tmux_counter[10]~39\) # (!tmux_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmux_counter(11),
	datad => VCC,
	cin => \tmux_counter[10]~39\,
	combout => \tmux_counter[11]~40_combout\,
	cout => \tmux_counter[11]~41\);

-- Location: LCFF_X13_Y4_N5
\tmux_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_counter[11]~40_combout\,
	sclr => \tmux_counter[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmux_counter(11));

-- Location: LCCOMB_X13_Y4_N8
\tmux_counter[13]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_counter[13]~44_combout\ = (tmux_counter(13) & (!\tmux_counter[12]~43\)) # (!tmux_counter(13) & ((\tmux_counter[12]~43\) # (GND)))
-- \tmux_counter[13]~45\ = CARRY((!\tmux_counter[12]~43\) # (!tmux_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tmux_counter(13),
	datad => VCC,
	cin => \tmux_counter[12]~43\,
	combout => \tmux_counter[13]~44_combout\,
	cout => \tmux_counter[13]~45\);

-- Location: LCFF_X13_Y4_N9
\tmux_counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_counter[13]~44_combout\,
	sclr => \tmux_counter[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmux_counter(13));

-- Location: LCFF_X13_Y4_N15
\tmux_counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_counter[16]~50_combout\,
	sclr => \tmux_counter[17]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmux_counter(16));

-- Location: LCCOMB_X13_Y6_N10
\tmux_count_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_count_out~0_combout\ = \tmux_count_out~regout\ $ (((!tmux_counter(17) & (!tmux_counter(16) & !\Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tmux_counter(17),
	datab => tmux_counter(16),
	datac => \tmux_count_out~regout\,
	datad => \Equal1~4_combout\,
	combout => \tmux_count_out~0_combout\);

-- Location: LCFF_X13_Y6_N11
tmux_count_out : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_count_out~0_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tmux_count_out~regout\);

-- Location: LCCOMB_X13_Y6_N28
\tmux_r~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmux_r~0_combout\ = (!S117_CNTR(7) & \tmux_count_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => S117_CNTR(7),
	datad => \tmux_count_out~regout\,
	combout => \tmux_r~0_combout\);

-- Location: LCFF_X13_Y6_N29
tmux_r : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \tmux_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tmux_r~regout\);

-- Location: LCCOMB_X13_Y6_N0
\always2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \always2~0_combout\ = (\tmux_count_out~regout\ & !\tmux_r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmux_count_out~regout\,
	datad => \tmux_r~regout\,
	combout => \always2~0_combout\);

-- Location: LCFF_X13_Y6_N1
tmux_posedge : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \always2~0_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tmux_posedge~regout\);

-- Location: LCCOMB_X10_Y4_N24
\digit_counter[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \digit_counter[2]~0_combout\ = digit_counter(2) $ (((\ShiftLeft0~0_combout\ & (\tmux_posedge~regout\ & !S117_CNTR(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~0_combout\,
	datab => \tmux_posedge~regout\,
	datac => digit_counter(2),
	datad => S117_CNTR(7),
	combout => \digit_counter[2]~0_combout\);

-- Location: LCFF_X10_Y4_N25
\digit_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \digit_counter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => digit_counter(2));

-- Location: LCCOMB_X14_Y7_N2
\Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = digit_counter(0) $ (digit_counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_counter(0),
	datac => digit_counter(1),
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X14_Y7_N28
\seg_r[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r[0]~5_combout\ = (\tmux_posedge~regout\ & !S117_CNTR(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmux_posedge~regout\,
	datad => S117_CNTR(7),
	combout => \seg_r[0]~5_combout\);

-- Location: LCFF_X14_Y7_N3
\digit_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \Add5~0_combout\,
	ena => \seg_r[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => digit_counter(1));

-- Location: LCCOMB_X17_Y8_N4
\s117_spi|rx_DATA[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|rx_DATA[6]~feeder_combout\ = \s117_spi|rx_REG\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|rx_REG\(5),
	combout => \s117_spi|rx_DATA[6]~feeder_combout\);

-- Location: LCFF_X17_Y8_N5
\s117_spi|rx_DATA[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|rx_DATA[6]~feeder_combout\,
	ena => \s117_spi|rx_DATA[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|rx_DATA\(6));

-- Location: LCCOMB_X17_Y10_N16
\Decoder0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (\Decoder0~5_combout\ & (!ctrl_word(0) & (!ctrl_word(2) & ctrl_word(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~5_combout\,
	datab => ctrl_word(0),
	datac => ctrl_word(2),
	datad => ctrl_word(1),
	combout => \Decoder0~8_combout\);

-- Location: LCFF_X14_Y10_N19
\S117_DIGEN[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(6),
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DIGEN(6));

-- Location: LCFF_X14_Y10_N31
\S117_DIGEN[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(4),
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DIGEN(4));

-- Location: LCCOMB_X14_Y7_N24
\digit_counter[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \digit_counter[0]~1_combout\ = !digit_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => digit_counter(0),
	combout => \digit_counter[0]~1_combout\);

-- Location: LCFF_X14_Y7_N25
\digit_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \digit_counter[0]~1_combout\,
	ena => \seg_r[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => digit_counter(0));

-- Location: LCCOMB_X14_Y10_N30
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (digit_counter(1) & (((digit_counter(0))))) # (!digit_counter(1) & ((digit_counter(0) & (S117_DIGEN(5))) # (!digit_counter(0) & ((S117_DIGEN(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_DIGEN(5),
	datab => digit_counter(1),
	datac => S117_DIGEN(4),
	datad => digit_counter(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X14_Y10_N18
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (digit_counter(1) & ((\Mux0~0_combout\ & (S117_DIGEN(7))) # (!\Mux0~0_combout\ & ((S117_DIGEN(6)))))) # (!digit_counter(1) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_DIGEN(7),
	datab => digit_counter(1),
	datac => S117_DIGEN(6),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X14_Y10_N26
\Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (digit_counter(2) & ((\Mux0~1_combout\))) # (!digit_counter(2) & (\Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datac => digit_counter(2),
	datad => \Mux0~1_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X17_Y10_N22
\Decoder0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~13_combout\ = (\Decoder0~5_combout\ & (!ctrl_word(0) & (ctrl_word(2) & ctrl_word(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~5_combout\,
	datab => ctrl_word(0),
	datac => ctrl_word(2),
	datad => ctrl_word(1),
	combout => \Decoder0~13_combout\);

-- Location: LCFF_X15_Y10_N25
\S117_SEG2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(2),
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG2(2));

-- Location: LCCOMB_X17_Y10_N20
\Decoder0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~12_combout\ = (\Decoder0~5_combout\ & (!ctrl_word(0) & (ctrl_word(2) & !ctrl_word(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~5_combout\,
	datab => ctrl_word(0),
	datac => ctrl_word(2),
	datad => ctrl_word(1),
	combout => \Decoder0~12_combout\);

-- Location: LCFF_X15_Y10_N31
\S117_SEG0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(2),
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG0(2));

-- Location: LCCOMB_X15_Y10_N24
\seg_r~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~8_combout\ = (digit_counter(2) & ((digit_counter(1)) # ((S117_SEG2(2))))) # (!digit_counter(2) & (!digit_counter(1) & ((S117_SEG0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_counter(2),
	datab => digit_counter(1),
	datac => S117_SEG2(2),
	datad => S117_SEG0(2),
	combout => \seg_r~8_combout\);

-- Location: LCCOMB_X17_Y10_N18
\Decoder0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (\Decoder0~5_combout\ & (ctrl_word(0) & (ctrl_word(2) & ctrl_word(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~5_combout\,
	datab => ctrl_word(0),
	datac => ctrl_word(2),
	datad => ctrl_word(1),
	combout => \Decoder0~11_combout\);

-- Location: LCFF_X15_Y7_N13
\S117_SEG3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(2),
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG3(2));

-- Location: LCCOMB_X15_Y7_N12
\seg_r~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~9_combout\ = (\seg_r~8_combout\ & (((S117_SEG3(2)) # (!digit_counter(1))))) # (!\seg_r~8_combout\ & (S117_SEG1(2) & ((digit_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_SEG1(2),
	datab => \seg_r~8_combout\,
	datac => S117_SEG3(2),
	datad => digit_counter(1),
	combout => \seg_r~9_combout\);

-- Location: LCFF_X15_Y10_N17
\S117_SEG0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(6),
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG0(6));

-- Location: LCCOMB_X17_Y10_N8
\Decoder0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (\Decoder0~5_combout\ & (ctrl_word(0) & (ctrl_word(2) & !ctrl_word(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~5_combout\,
	datab => ctrl_word(0),
	datac => ctrl_word(2),
	datad => ctrl_word(1),
	combout => \Decoder0~10_combout\);

-- Location: LCFF_X14_Y6_N25
\S117_SEG1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(6),
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG1(6));

-- Location: LCCOMB_X15_Y10_N28
\seg_r~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~6_combout\ = (digit_counter(2) & (digit_counter(1))) # (!digit_counter(2) & ((digit_counter(1) & ((S117_SEG1(6)))) # (!digit_counter(1) & (S117_SEG0(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_counter(2),
	datab => digit_counter(1),
	datac => S117_SEG0(6),
	datad => S117_SEG1(6),
	combout => \seg_r~6_combout\);

-- Location: LCFF_X15_Y7_N19
\S117_SEG3[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(6),
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG3(6));

-- Location: LCFF_X15_Y11_N17
\S117_SEG2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(6),
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG2(6));

-- Location: LCCOMB_X15_Y7_N18
\seg_r~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~7_combout\ = (digit_counter(2) & ((\seg_r~6_combout\ & (S117_SEG3(6))) # (!\seg_r~6_combout\ & ((S117_SEG2(6)))))) # (!digit_counter(2) & (\seg_r~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_counter(2),
	datab => \seg_r~6_combout\,
	datac => S117_SEG3(6),
	datad => S117_SEG2(6),
	combout => \seg_r~7_combout\);

-- Location: LCCOMB_X14_Y7_N26
\seg_r~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~10_combout\ = (\Mux0~4_combout\ & ((digit_counter(0) & ((\seg_r~7_combout\))) # (!digit_counter(0) & (\seg_r~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_counter(0),
	datab => \Mux0~4_combout\,
	datac => \seg_r~9_combout\,
	datad => \seg_r~7_combout\,
	combout => \seg_r~10_combout\);

-- Location: LCFF_X14_Y7_N27
\seg_r[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \seg_r~10_combout\,
	ena => \seg_r[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg_r(2));

-- Location: LCCOMB_X17_Y8_N26
\s117_spi|rx_DATA[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|rx_DATA[3]~feeder_combout\ = \s117_spi|rx_REG\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|rx_REG\(2),
	combout => \s117_spi|rx_DATA[3]~feeder_combout\);

-- Location: LCFF_X17_Y8_N27
\s117_spi|rx_DATA[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|rx_DATA[3]~feeder_combout\,
	ena => \s117_spi|rx_DATA[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|rx_DATA\(3));

-- Location: LCFF_X14_Y7_N19
\S117_SEG1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(3),
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG1(3));

-- Location: LCFF_X15_Y7_N27
\S117_SEG3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(3),
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG3(3));

-- Location: LCCOMB_X15_Y7_N26
\seg_r~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~3_combout\ = (\seg_r~2_combout\ & (((S117_SEG3(3)) # (!digit_counter(1))))) # (!\seg_r~2_combout\ & (S117_SEG1(3) & ((digit_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_r~2_combout\,
	datab => S117_SEG1(3),
	datac => S117_SEG3(3),
	datad => digit_counter(1),
	combout => \seg_r~3_combout\);

-- Location: LCFF_X15_Y10_N3
\S117_SEG0[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(7),
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG0(7));

-- Location: LCCOMB_X15_Y10_N18
\seg_r~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~0_combout\ = (digit_counter(1) & (((digit_counter(2))))) # (!digit_counter(1) & ((digit_counter(2) & (S117_SEG2(7))) # (!digit_counter(2) & ((S117_SEG0(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_SEG2(7),
	datab => digit_counter(1),
	datac => digit_counter(2),
	datad => S117_SEG0(7),
	combout => \seg_r~0_combout\);

-- Location: LCFF_X15_Y7_N25
\S117_SEG3[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(7),
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG3(7));

-- Location: LCFF_X17_Y7_N23
\S117_SEG1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(7),
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG1(7));

-- Location: LCCOMB_X15_Y7_N24
\seg_r~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~1_combout\ = (digit_counter(1) & ((\seg_r~0_combout\ & (S117_SEG3(7))) # (!\seg_r~0_combout\ & ((S117_SEG1(7)))))) # (!digit_counter(1) & (\seg_r~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_counter(1),
	datab => \seg_r~0_combout\,
	datac => S117_SEG3(7),
	datad => S117_SEG1(7),
	combout => \seg_r~1_combout\);

-- Location: LCCOMB_X14_Y7_N16
\seg_r~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~4_combout\ = (\Mux0~4_combout\ & ((digit_counter(0) & ((\seg_r~1_combout\))) # (!digit_counter(0) & (\seg_r~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_counter(0),
	datab => \Mux0~4_combout\,
	datac => \seg_r~3_combout\,
	datad => \seg_r~1_combout\,
	combout => \seg_r~4_combout\);

-- Location: LCFF_X14_Y7_N17
\seg_r[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \seg_r~4_combout\,
	ena => \seg_r[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg_r(3));

-- Location: LCCOMB_X14_Y6_N18
\seg_driver_r~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_driver_r~8_combout\ = seg_r(3) $ (S117_CNTR(4) $ (((seg_r(1)) # (seg_r(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_r(1),
	datab => seg_r(2),
	datac => seg_r(3),
	datad => S117_CNTR(4),
	combout => \seg_driver_r~8_combout\);

-- Location: LCCOMB_X14_Y6_N0
\decoder_r[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_r[3]~11_combout\ = S117_CNTR(4) $ (((seg_r(1) & (!seg_r(3))) # (!seg_r(1) & ((!seg_r(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_r(1),
	datab => seg_r(3),
	datac => S117_CNTR(4),
	datad => seg_r(2),
	combout => \decoder_r[3]~11_combout\);

-- Location: LCCOMB_X13_Y6_N20
\seg_driver_r~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_driver_r~24_combout\ = (seg_r(0) & (\seg_driver_r~8_combout\)) # (!seg_r(0) & ((\decoder_r[3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_r(0),
	datab => \seg_driver_r~8_combout\,
	datad => \decoder_r[3]~11_combout\,
	combout => \seg_driver_r~24_combout\);

-- Location: LCFF_X14_Y6_N31
\S117_CNTR[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(6),
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_CNTR(6));

-- Location: LCCOMB_X13_Y6_N16
\seg_driver_r~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_driver_r~14_combout\ = (\seg_driver_r~13_combout\ & ((\seg_driver_r~24_combout\) # ((!S117_CNTR(4) & S117_CNTR(6))))) # (!\seg_driver_r~13_combout\ & (!S117_CNTR(4) & ((S117_CNTR(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver_r~13_combout\,
	datab => S117_CNTR(4),
	datac => \seg_driver_r~24_combout\,
	datad => S117_CNTR(6),
	combout => \seg_driver_r~14_combout\);

-- Location: LCFF_X13_Y6_N17
\seg_driver_r[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \seg_driver_r~14_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg_driver_r(0));

-- Location: LCCOMB_X13_Y6_N2
\seg_driver_r~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_driver_r~16_combout\ = (\seg_driver_r~15_combout\) # ((!S117_CNTR(4) & S117_CNTR(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver_r~15_combout\,
	datac => S117_CNTR(4),
	datad => S117_CNTR(6),
	combout => \seg_driver_r~16_combout\);

-- Location: LCFF_X13_Y6_N3
\seg_driver_r[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \seg_driver_r~16_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg_driver_r(1));

-- Location: LCCOMB_X13_Y7_N8
\pwm_counter[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_counter[0]~8_combout\ = pwm_counter(0) $ (VCC)
-- \pwm_counter[0]~9\ = CARRY(pwm_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(0),
	datad => VCC,
	combout => \pwm_counter[0]~8_combout\,
	cout => \pwm_counter[0]~9\);

-- Location: LCFF_X13_Y7_N9
\pwm_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \pwm_counter[0]~8_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pwm_counter(0));

-- Location: LCCOMB_X13_Y7_N10
\pwm_counter[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_counter[1]~10_combout\ = (pwm_counter(1) & (!\pwm_counter[0]~9\)) # (!pwm_counter(1) & ((\pwm_counter[0]~9\) # (GND)))
-- \pwm_counter[1]~11\ = CARRY((!\pwm_counter[0]~9\) # (!pwm_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(1),
	datad => VCC,
	cin => \pwm_counter[0]~9\,
	combout => \pwm_counter[1]~10_combout\,
	cout => \pwm_counter[1]~11\);

-- Location: LCCOMB_X13_Y7_N14
\pwm_counter[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_counter[3]~14_combout\ = (pwm_counter(3) & (!\pwm_counter[2]~13\)) # (!pwm_counter(3) & ((\pwm_counter[2]~13\) # (GND)))
-- \pwm_counter[3]~15\ = CARRY((!\pwm_counter[2]~13\) # (!pwm_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(3),
	datad => VCC,
	cin => \pwm_counter[2]~13\,
	combout => \pwm_counter[3]~14_combout\,
	cout => \pwm_counter[3]~15\);

-- Location: LCFF_X13_Y7_N15
\pwm_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \pwm_counter[3]~14_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pwm_counter(3));

-- Location: LCFF_X13_Y7_N11
\pwm_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \pwm_counter[1]~10_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pwm_counter(1));

-- Location: LCCOMB_X13_Y7_N28
\Equal12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (pwm_counter(2) & (pwm_counter(0) & (pwm_counter(3) & pwm_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(2),
	datab => pwm_counter(0),
	datac => pwm_counter(3),
	datad => pwm_counter(1),
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X17_Y10_N6
\Decoder0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (\Decoder0~5_combout\ & (ctrl_word(0) & (!ctrl_word(2) & ctrl_word(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~5_combout\,
	datab => ctrl_word(0),
	datac => ctrl_word(2),
	datad => ctrl_word(1),
	combout => \Decoder0~9_combout\);

-- Location: LCFF_X17_Y7_N19
\S117_BADJ[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(4),
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BADJ(4));

-- Location: LCCOMB_X17_Y8_N10
\s117_spi|rx_DATA[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s117_spi|rx_DATA[5]~feeder_combout\ = \s117_spi|rx_REG\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|rx_REG\(4),
	combout => \s117_spi|rx_DATA[5]~feeder_combout\);

-- Location: LCFF_X17_Y8_N11
\s117_spi|rx_DATA[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \s117_spi|rx_DATA[5]~feeder_combout\,
	ena => \s117_spi|rx_DATA[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s117_spi|rx_DATA\(5));

-- Location: LCFF_X17_Y7_N17
\S117_BADJ[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(5),
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BADJ(5));

-- Location: LCFF_X15_Y7_N11
\S117_BADJ[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(2),
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BADJ(2));

-- Location: LCFF_X17_Y7_N27
\S117_BADJ[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(3),
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BADJ(3));

-- Location: LCFF_X17_Y7_N3
\S117_BADJ[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(1),
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_BADJ(1));

-- Location: LCCOMB_X17_Y7_N26
\Equal13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (!S117_BADJ(0) & (!S117_BADJ(2) & (!S117_BADJ(3) & !S117_BADJ(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_BADJ(0),
	datab => S117_BADJ(2),
	datac => S117_BADJ(3),
	datad => S117_BADJ(1),
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X17_Y7_N30
\Equal13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal13~2_combout\ = (\Equal13~1_combout\ & (!S117_BADJ(4) & (!S117_BADJ(5) & \Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~1_combout\,
	datab => S117_BADJ(4),
	datac => S117_BADJ(5),
	datad => \Equal13~0_combout\,
	combout => \Equal13~2_combout\);

-- Location: LCCOMB_X13_Y7_N16
\pwm_counter[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_counter[4]~16_combout\ = (pwm_counter(4) & (\pwm_counter[3]~15\ $ (GND))) # (!pwm_counter(4) & (!\pwm_counter[3]~15\ & VCC))
-- \pwm_counter[4]~17\ = CARRY((pwm_counter(4) & !\pwm_counter[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(4),
	datad => VCC,
	cin => \pwm_counter[3]~15\,
	combout => \pwm_counter[4]~16_combout\,
	cout => \pwm_counter[4]~17\);

-- Location: LCCOMB_X13_Y7_N18
\pwm_counter[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_counter[5]~18_combout\ = (pwm_counter(5) & (!\pwm_counter[4]~17\)) # (!pwm_counter(5) & ((\pwm_counter[4]~17\) # (GND)))
-- \pwm_counter[5]~19\ = CARRY((!\pwm_counter[4]~17\) # (!pwm_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(5),
	datad => VCC,
	cin => \pwm_counter[4]~17\,
	combout => \pwm_counter[5]~18_combout\,
	cout => \pwm_counter[5]~19\);

-- Location: LCFF_X13_Y7_N19
\pwm_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \pwm_counter[5]~18_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pwm_counter(5));

-- Location: LCFF_X13_Y7_N17
\pwm_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \pwm_counter[4]~16_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pwm_counter(4));

-- Location: LCCOMB_X13_Y7_N22
\pwm_counter[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_counter[7]~22_combout\ = \pwm_counter[6]~21\ $ (pwm_counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => pwm_counter(7),
	cin => \pwm_counter[6]~21\,
	combout => \pwm_counter[7]~22_combout\);

-- Location: LCFF_X13_Y7_N23
\pwm_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \pwm_counter[7]~22_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pwm_counter(7));

-- Location: LCCOMB_X13_Y7_N30
\Equal12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal12~1_combout\ = (pwm_counter(6) & (pwm_counter(5) & (pwm_counter(4) & pwm_counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(6),
	datab => pwm_counter(5),
	datac => pwm_counter(4),
	datad => pwm_counter(7),
	combout => \Equal12~1_combout\);

-- Location: LCCOMB_X13_Y7_N0
\pwm_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwm_out~0_combout\ = (\Equal12~0_combout\ & ((\Equal12~1_combout\ & ((!\Equal13~2_combout\))) # (!\Equal12~1_combout\ & (\LessThan1~14_combout\)))) # (!\Equal12~0_combout\ & (\LessThan1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~14_combout\,
	datab => \Equal12~0_combout\,
	datac => \Equal13~2_combout\,
	datad => \Equal12~1_combout\,
	combout => \pwm_out~0_combout\);

-- Location: LCFF_X13_Y7_N1
\pwm_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \pwm_out~0_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pwm_out(0));

-- Location: LCFF_X14_Y6_N13
\S117_CNTR[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(5),
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_CNTR(5));

-- Location: LCCOMB_X14_Y6_N12
\seg_driver_r~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_driver_r~13_combout\ = (pwm_out(0) & (!S117_CNTR(6) & ((blink_out(0)) # (!S117_CNTR(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => blink_out(0),
	datab => pwm_out(0),
	datac => S117_CNTR(5),
	datad => S117_CNTR(6),
	combout => \seg_driver_r~13_combout\);

-- Location: LCCOMB_X13_Y6_N4
\seg_driver_r~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_driver_r~27_combout\ = (S117_CNTR(4) & (!\decoder_r[2]~8_combout\ & ((\seg_driver_r~13_combout\)))) # (!S117_CNTR(4) & ((S117_CNTR(6)) # ((\decoder_r[2]~8_combout\ & \seg_driver_r~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_r[2]~8_combout\,
	datab => S117_CNTR(6),
	datac => S117_CNTR(4),
	datad => \seg_driver_r~13_combout\,
	combout => \seg_driver_r~27_combout\);

-- Location: LCFF_X13_Y6_N5
\seg_driver_r[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \seg_driver_r~27_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg_driver_r(2));

-- Location: LCCOMB_X14_Y6_N8
\decoder_r[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_r[3]~12_combout\ = S117_CNTR(4) $ (((seg_r(1) & (!seg_r(2) & !seg_r(3))) # (!seg_r(1) & (seg_r(2) $ (seg_r(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_r(1),
	datab => seg_r(2),
	datac => seg_r(3),
	datad => S117_CNTR(4),
	combout => \decoder_r[3]~12_combout\);

-- Location: LCCOMB_X13_Y6_N18
\decoder_r[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_r[3]~15_combout\ = (seg_r(0) & (\decoder_r[3]~12_combout\)) # (!seg_r(0) & ((\decoder_r[3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_r(0),
	datac => \decoder_r[3]~12_combout\,
	datad => \decoder_r[3]~11_combout\,
	combout => \decoder_r[3]~15_combout\);

-- Location: LCCOMB_X13_Y6_N6
\seg_driver_r~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_driver_r~17_combout\ = (\seg_driver_r~13_combout\ & ((\decoder_r[3]~15_combout\) # ((!S117_CNTR(4) & S117_CNTR(6))))) # (!\seg_driver_r~13_combout\ & (((!S117_CNTR(4) & S117_CNTR(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver_r~13_combout\,
	datab => \decoder_r[3]~15_combout\,
	datac => S117_CNTR(4),
	datad => S117_CNTR(6),
	combout => \seg_driver_r~17_combout\);

-- Location: LCFF_X13_Y6_N7
\seg_driver_r[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \seg_driver_r~17_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg_driver_r(3));

-- Location: LCFF_X14_Y10_N23
\S117_SEG2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(0),
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG2(0));

-- Location: LCCOMB_X14_Y10_N4
\seg_r~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~18_combout\ = (digit_counter(1) & (((digit_counter(2))))) # (!digit_counter(1) & ((digit_counter(2) & ((S117_SEG2(0)))) # (!digit_counter(2) & (S117_SEG0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S117_SEG0(0),
	datab => S117_SEG2(0),
	datac => digit_counter(1),
	datad => digit_counter(2),
	combout => \seg_r~18_combout\);

-- Location: LCFF_X15_Y7_N9
\S117_SEG3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(0),
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG3(0));

-- Location: LCFF_X14_Y7_N1
\S117_SEG1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(0),
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG1(0));

-- Location: LCCOMB_X15_Y7_N8
\seg_r~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~19_combout\ = (digit_counter(1) & ((\seg_r~18_combout\ & (S117_SEG3(0))) # (!\seg_r~18_combout\ & ((S117_SEG1(0)))))) # (!digit_counter(1) & (\seg_r~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_counter(1),
	datab => \seg_r~18_combout\,
	datac => S117_SEG3(0),
	datad => S117_SEG1(0),
	combout => \seg_r~19_combout\);

-- Location: LCFF_X15_Y10_N15
\S117_SEG0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(4),
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG0(4));

-- Location: LCFF_X17_Y7_N29
\S117_SEG1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(4),
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG1(4));

-- Location: LCCOMB_X14_Y10_N2
\seg_r~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~16_combout\ = (digit_counter(2) & (digit_counter(1))) # (!digit_counter(2) & ((digit_counter(1) & ((S117_SEG1(4)))) # (!digit_counter(1) & (S117_SEG0(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_counter(2),
	datab => digit_counter(1),
	datac => S117_SEG0(4),
	datad => S117_SEG1(4),
	combout => \seg_r~16_combout\);

-- Location: LCFF_X15_Y7_N23
\S117_SEG3[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(4),
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG3(4));

-- Location: LCFF_X15_Y10_N9
\S117_SEG2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(4),
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_SEG2(4));

-- Location: LCCOMB_X15_Y7_N22
\seg_r~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~17_combout\ = (digit_counter(2) & ((\seg_r~16_combout\ & (S117_SEG3(4))) # (!\seg_r~16_combout\ & ((S117_SEG2(4)))))) # (!digit_counter(2) & (\seg_r~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_counter(2),
	datab => \seg_r~16_combout\,
	datac => S117_SEG3(4),
	datad => S117_SEG2(4),
	combout => \seg_r~17_combout\);

-- Location: LCCOMB_X14_Y7_N30
\seg_r~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_r~20_combout\ = (\Mux0~4_combout\ & ((digit_counter(0) & ((\seg_r~17_combout\))) # (!digit_counter(0) & (\seg_r~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_counter(0),
	datab => \Mux0~4_combout\,
	datac => \seg_r~19_combout\,
	datad => \seg_r~17_combout\,
	combout => \seg_r~20_combout\);

-- Location: LCFF_X14_Y7_N31
\seg_r[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \seg_r~20_combout\,
	ena => \seg_r[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg_r(0));

-- Location: LCCOMB_X14_Y6_N26
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!seg_r(1) & (!seg_r(3) & (!seg_r(2) & !seg_r(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_r(1),
	datab => seg_r(3),
	datac => seg_r(2),
	datad => seg_r(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X14_Y6_N4
\decoder_r~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \decoder_r~14_combout\ = (!seg_r(0) & ((seg_r(1) & (!seg_r(3))) # (!seg_r(1) & (seg_r(3) & !seg_r(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_r(1),
	datab => seg_r(3),
	datac => seg_r(2),
	datad => seg_r(0),
	combout => \decoder_r~14_combout\);

-- Location: LCCOMB_X14_Y6_N14
\seg_driver_r~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_driver_r~18_combout\ = (\seg_driver_r~13_combout\ & (S117_CNTR(4) $ (((\Equal2~0_combout\) # (\decoder_r~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver_r~13_combout\,
	datab => \Equal2~0_combout\,
	datac => \decoder_r~14_combout\,
	datad => S117_CNTR(4),
	combout => \seg_driver_r~18_combout\);

-- Location: LCCOMB_X13_Y6_N24
\seg_driver_r~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_driver_r~19_combout\ = (\seg_driver_r~18_combout\) # ((!S117_CNTR(4) & S117_CNTR(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => S117_CNTR(4),
	datac => \seg_driver_r~18_combout\,
	datad => S117_CNTR(6),
	combout => \seg_driver_r~19_combout\);

-- Location: LCFF_X13_Y6_N25
\seg_driver_r[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \seg_driver_r~19_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg_driver_r(4));

-- Location: LCCOMB_X14_Y6_N28
\seg_driver_r~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_driver_r~25_combout\ = (seg_r(2) & ((seg_r(3)) # ((seg_r(1) & seg_r(0))))) # (!seg_r(2) & ((seg_r(1)) # ((!seg_r(3) & seg_r(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_r(1),
	datab => seg_r(3),
	datac => seg_r(2),
	datad => seg_r(0),
	combout => \seg_driver_r~25_combout\);

-- Location: LCCOMB_X13_Y6_N26
\seg_driver_r~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_driver_r~20_combout\ = (S117_CNTR(4) & (\seg_driver_r~13_combout\ & (\seg_driver_r~25_combout\))) # (!S117_CNTR(4) & ((S117_CNTR(6)) # ((\seg_driver_r~13_combout\ & !\seg_driver_r~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver_r~13_combout\,
	datab => \seg_driver_r~25_combout\,
	datac => S117_CNTR(4),
	datad => S117_CNTR(6),
	combout => \seg_driver_r~20_combout\);

-- Location: LCFF_X13_Y6_N27
\seg_driver_r[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \seg_driver_r~20_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg_driver_r(5));

-- Location: LCCOMB_X14_Y6_N22
\seg_driver_r~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_driver_r~26_combout\ = (seg_r(1) & ((seg_r(3)) # ((seg_r(2) & seg_r(0))))) # (!seg_r(1) & (seg_r(3) $ ((!seg_r(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_r(1),
	datab => seg_r(3),
	datac => seg_r(2),
	datad => seg_r(0),
	combout => \seg_driver_r~26_combout\);

-- Location: LCCOMB_X13_Y6_N12
\seg_driver_r~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_driver_r~21_combout\ = (S117_CNTR(4) & (\seg_driver_r~13_combout\ & (\seg_driver_r~26_combout\))) # (!S117_CNTR(4) & ((S117_CNTR(6)) # ((\seg_driver_r~13_combout\ & !\seg_driver_r~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver_r~13_combout\,
	datab => \seg_driver_r~26_combout\,
	datac => S117_CNTR(4),
	datad => S117_CNTR(6),
	combout => \seg_driver_r~21_combout\);

-- Location: LCFF_X13_Y6_N13
\seg_driver_r[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \seg_driver_r~21_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg_driver_r(6));

-- Location: LCFF_X18_Y10_N31
\ctrl_word[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(3),
	sload => VCC,
	ena => \ctrl_word[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ctrl_word(3));

-- Location: LCCOMB_X18_Y10_N18
\ctrl_word[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctrl_word[7]~feeder_combout\ = \s117_spi|rx_DATA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|rx_DATA\(7),
	combout => \ctrl_word[7]~feeder_combout\);

-- Location: LCFF_X18_Y10_N19
\ctrl_word[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \ctrl_word[7]~feeder_combout\,
	ena => \ctrl_word[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ctrl_word(7));

-- Location: LCCOMB_X18_Y10_N0
\ctrl_word[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctrl_word[5]~feeder_combout\ = \s117_spi|rx_DATA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s117_spi|rx_DATA\(5),
	combout => \ctrl_word[5]~feeder_combout\);

-- Location: LCFF_X18_Y10_N1
\ctrl_word[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \ctrl_word[5]~feeder_combout\,
	ena => \ctrl_word[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ctrl_word(5));

-- Location: LCFF_X18_Y10_N7
\ctrl_word[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(4),
	sload => VCC,
	ena => \ctrl_word[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ctrl_word(4));

-- Location: LCCOMB_X18_Y10_N6
\Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\state.STATE_WAIT~regout\ & (!ctrl_word(5) & (!ctrl_word(4) & \s117_spi|DATR~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_WAIT~regout\,
	datab => ctrl_word(5),
	datac => ctrl_word(4),
	datad => \s117_spi|DATR~regout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X19_Y10_N30
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\wrd_r~regout\ & ((\state.STATE_WAIT~regout\) # ((!\state.STATE_IDLE~regout\ & \s117_spi|DATR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_WAIT~regout\,
	datab => \state.STATE_IDLE~regout\,
	datac => \s117_spi|DATR~regout\,
	datad => \wrd_r~regout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X19_Y10_N10
\Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\Selector3~0_combout\) # ((!ctrl_word(6) & (ctrl_word(7) & \Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_word(6),
	datab => ctrl_word(7),
	datac => \Selector3~1_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~2_combout\);

-- Location: LCFF_X19_Y10_N11
wrd_r : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \Selector3~2_combout\,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wrd_r~regout\);

-- Location: LCCOMB_X17_Y10_N14
\Decoder0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (ctrl_word(3) & (!ctrl_word(2) & \wrd_r~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ctrl_word(3),
	datac => ctrl_word(2),
	datad => \wrd_r~regout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X17_Y10_N4
\Decoder0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~16_combout\ = (!ctrl_word(0) & (\Decoder0~7_combout\ & ctrl_word(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ctrl_word(0),
	datac => \Decoder0~7_combout\,
	datad => ctrl_word(1),
	combout => \Decoder0~16_combout\);

-- Location: LCFF_X17_Y11_N17
\S117_DP[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(4),
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DP(4));

-- Location: LCFF_X18_Y11_N25
\S117_DP[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(5),
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DP(5));

-- Location: LCFF_X18_Y11_N21
\S117_DP[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(6),
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DP(6));

-- Location: LCFF_X18_Y11_N11
\S117_DP[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(7),
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DP(7));

-- Location: LCCOMB_X18_Y11_N20
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (digit_counter(0) & (((S117_DP(6))) # (!digit_counter(1)))) # (!digit_counter(0) & (!digit_counter(1) & ((S117_DP(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_counter(0),
	datab => digit_counter(1),
	datac => S117_DP(6),
	datad => S117_DP(7),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X18_Y11_N24
\Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Add5~0_combout\ & ((\Mux1~2_combout\ & (S117_DP(4))) # (!\Mux1~2_combout\ & ((S117_DP(5)))))) # (!\Add5~0_combout\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => S117_DP(4),
	datac => S117_DP(5),
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCFF_X18_Y11_N23
\S117_DP[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(0),
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DP(0));

-- Location: LCFF_X18_Y11_N9
\S117_DP[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(1),
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DP(1));

-- Location: LCFF_X18_Y11_N13
\S117_DP[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(2),
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DP(2));

-- Location: LCFF_X18_Y11_N27
\S117_DP[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	sdata => \s117_spi|rx_DATA\(3),
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S117_DP(3));

-- Location: LCCOMB_X18_Y11_N12
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (digit_counter(0) & (((S117_DP(2))) # (!digit_counter(1)))) # (!digit_counter(0) & (!digit_counter(1) & ((S117_DP(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit_counter(0),
	datab => digit_counter(1),
	datac => S117_DP(2),
	datad => S117_DP(3),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X18_Y11_N8
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Add5~0_combout\ & ((\Mux1~0_combout\ & (S117_DP(0))) # (!\Mux1~0_combout\ & ((S117_DP(1)))))) # (!\Add5~0_combout\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => S117_DP(0),
	datac => S117_DP(1),
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X18_Y11_N16
\seg_driver_r~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_driver_r~22_combout\ = (S117_CNTR(4)) # ((\Add5~1_combout\ & ((\Mux1~1_combout\))) # (!\Add5~1_combout\ & (\Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~1_combout\,
	datab => S117_CNTR(4),
	datac => \Mux1~3_combout\,
	datad => \Mux1~1_combout\,
	combout => \seg_driver_r~22_combout\);

-- Location: LCCOMB_X13_Y6_N30
\seg_driver_r~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg_driver_r~23_combout\ = (\seg_driver_r~13_combout\ & ((\seg_driver_r~22_combout\) # ((!S117_CNTR(4) & S117_CNTR(6))))) # (!\seg_driver_r~13_combout\ & (!S117_CNTR(4) & ((S117_CNTR(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver_r~13_combout\,
	datab => S117_CNTR(4),
	datac => \seg_driver_r~22_combout\,
	datad => S117_CNTR(6),
	combout => \seg_driver_r~23_combout\);

-- Location: LCFF_X13_Y6_N31
\seg_driver_r[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \seg_driver_r~23_combout\,
	sclr => S117_CNTR(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg_driver_r(7));

-- Location: LCCOMB_X14_Y10_N8
\Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (digit_counter(1)) # (digit_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => digit_counter(1),
	datad => digit_counter(0),
	combout => \Add5~2_combout\);

-- Location: LCCOMB_X10_Y4_N0
\dig_driver_r~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dig_driver_r~1_combout\ = (!\dig_driver_r[3]~0_combout\ & ((S117_CNTR(4) & ((digit_counter(2)) # (\Add5~2_combout\))) # (!S117_CNTR(4) & ((!\Add5~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dig_driver_r[3]~0_combout\,
	datab => S117_CNTR(4),
	datac => digit_counter(2),
	datad => \Add5~2_combout\,
	combout => \dig_driver_r~1_combout\);

-- Location: LCCOMB_X13_Y7_N26
\dig_driver_r[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dig_driver_r[3]~2_combout\ = (\tmux_posedge~regout\) # (S117_CNTR(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tmux_posedge~regout\,
	datad => S117_CNTR(7),
	combout => \dig_driver_r[3]~2_combout\);

-- Location: LCFF_X10_Y4_N1
\dig_driver_r[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \dig_driver_r~1_combout\,
	ena => \dig_driver_r[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dig_driver_r(0));

-- Location: LCCOMB_X14_Y7_N6
\dig_driver_r~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dig_driver_r~3_combout\ = (!digit_counter(1) & digit_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => digit_counter(1),
	datac => digit_counter(0),
	combout => \dig_driver_r~3_combout\);

-- Location: LCCOMB_X10_Y4_N18
\dig_driver_r~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dig_driver_r~4_combout\ = (!\dig_driver_r[3]~0_combout\ & ((S117_CNTR(4) & ((digit_counter(2)) # (!\dig_driver_r~3_combout\))) # (!S117_CNTR(4) & ((\dig_driver_r~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dig_driver_r[3]~0_combout\,
	datab => S117_CNTR(4),
	datac => digit_counter(2),
	datad => \dig_driver_r~3_combout\,
	combout => \dig_driver_r~4_combout\);

-- Location: LCFF_X10_Y4_N19
\dig_driver_r[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \dig_driver_r~4_combout\,
	ena => \dig_driver_r[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dig_driver_r(1));

-- Location: LCCOMB_X14_Y10_N20
\dig_driver_r~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dig_driver_r~5_combout\ = (digit_counter(1) & !digit_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => digit_counter(1),
	datad => digit_counter(0),
	combout => \dig_driver_r~5_combout\);

-- Location: LCCOMB_X10_Y4_N4
\dig_driver_r~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dig_driver_r~6_combout\ = (!\dig_driver_r[3]~0_combout\ & ((S117_CNTR(4) & ((digit_counter(2)) # (!\dig_driver_r~5_combout\))) # (!S117_CNTR(4) & ((\dig_driver_r~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dig_driver_r[3]~0_combout\,
	datab => S117_CNTR(4),
	datac => digit_counter(2),
	datad => \dig_driver_r~5_combout\,
	combout => \dig_driver_r~6_combout\);

-- Location: LCFF_X10_Y4_N5
\dig_driver_r[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \dig_driver_r~6_combout\,
	ena => \dig_driver_r[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dig_driver_r(2));

-- Location: LCCOMB_X14_Y7_N8
\ShiftLeft0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = (digit_counter(1) & digit_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => digit_counter(1),
	datac => digit_counter(0),
	combout => \ShiftLeft0~0_combout\);

-- Location: LCCOMB_X10_Y4_N22
\dig_driver_r~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dig_driver_r~7_combout\ = (!\dig_driver_r[3]~0_combout\ & ((S117_CNTR(4) & ((digit_counter(2)) # (!\ShiftLeft0~0_combout\))) # (!S117_CNTR(4) & ((\ShiftLeft0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dig_driver_r[3]~0_combout\,
	datab => S117_CNTR(4),
	datac => digit_counter(2),
	datad => \ShiftLeft0~0_combout\,
	combout => \dig_driver_r~7_combout\);

-- Location: LCFF_X10_Y4_N23
\dig_driver_r[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \dig_driver_r~7_combout\,
	ena => \dig_driver_r[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dig_driver_r(3));

-- Location: LCCOMB_X10_Y4_N8
\dig_driver_r~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \dig_driver_r~9_combout\ = (!\dig_driver_r[7]~8_combout\ & ((S117_CNTR(4) & ((\Add5~2_combout\) # (!digit_counter(2)))) # (!S117_CNTR(4) & ((!\Add5~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dig_driver_r[7]~8_combout\,
	datab => S117_CNTR(4),
	datac => digit_counter(2),
	datad => \Add5~2_combout\,
	combout => \dig_driver_r~9_combout\);

-- Location: LCFF_X10_Y4_N9
\dig_driver_r[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \dig_driver_r~9_combout\,
	ena => \dig_driver_r[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dig_driver_r(4));

-- Location: LCCOMB_X10_Y4_N10
\dig_driver_r~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dig_driver_r~10_combout\ = (!\dig_driver_r[7]~8_combout\ & ((S117_CNTR(4) & ((!\dig_driver_r~3_combout\) # (!digit_counter(2)))) # (!S117_CNTR(4) & ((\dig_driver_r~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dig_driver_r[7]~8_combout\,
	datab => S117_CNTR(4),
	datac => digit_counter(2),
	datad => \dig_driver_r~3_combout\,
	combout => \dig_driver_r~10_combout\);

-- Location: LCFF_X10_Y4_N11
\dig_driver_r[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \dig_driver_r~10_combout\,
	ena => \dig_driver_r[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dig_driver_r(5));

-- Location: LCCOMB_X10_Y4_N20
\dig_driver_r~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \dig_driver_r~11_combout\ = (!\dig_driver_r[7]~8_combout\ & ((S117_CNTR(4) & ((!\dig_driver_r~5_combout\) # (!digit_counter(2)))) # (!S117_CNTR(4) & ((\dig_driver_r~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dig_driver_r[7]~8_combout\,
	datab => S117_CNTR(4),
	datac => digit_counter(2),
	datad => \dig_driver_r~5_combout\,
	combout => \dig_driver_r~11_combout\);

-- Location: LCFF_X10_Y4_N21
\dig_driver_r[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \dig_driver_r~11_combout\,
	ena => \dig_driver_r[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dig_driver_r(6));

-- Location: LCCOMB_X10_Y4_N6
\dig_driver_r~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \dig_driver_r~12_combout\ = (!\dig_driver_r[7]~8_combout\ & ((S117_CNTR(4) & ((!\ShiftLeft0~0_combout\) # (!digit_counter(2)))) # (!S117_CNTR(4) & ((\ShiftLeft0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dig_driver_r[7]~8_combout\,
	datab => S117_CNTR(4),
	datac => digit_counter(2),
	datad => \ShiftLeft0~0_combout\,
	combout => \dig_driver_r~12_combout\);

-- Location: LCFF_X10_Y4_N7
\dig_driver_r[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mclk~clkctrl_outclk\,
	datain => \dig_driver_r~12_combout\,
	ena => \dig_driver_r[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dig_driver_r(7));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MISO~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \s117_spi|r_miso~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MISO);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg_driver_r(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG(0));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg_driver_r(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG(1));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg_driver_r(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG(2));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg_driver_r(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG(3));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg_driver_r(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG(4));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg_driver_r(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG(5));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg_driver_r(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG(6));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEG[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg_driver_r(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEG(7));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DEG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => dig_driver_r(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DEG(0));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DEG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => dig_driver_r(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DEG(1));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DEG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => dig_driver_r(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DEG(2));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DEG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => dig_driver_r(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DEG(3));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DEG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => dig_driver_r(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DEG(4));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DEG[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => dig_driver_r(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DEG(5));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DEG[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => dig_driver_r(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DEG(6));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DEG[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => dig_driver_r(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DEG(7));
END structure;


