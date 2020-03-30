-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "10/18/2019 14:22:26"
                                                            
-- Vhdl Test Bench template for design  :  Flanke_detektor
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Flanke_detektor_vhd_tst IS
END Flanke_detektor_vhd_tst;
ARCHITECTURE Flanke_detektor_arch OF Flanke_detektor_vhd_tst IS
-- constants
	constant periode : time := 10 us;                                           
-- signals                                                   
SIGNAL clock_50 : STD_LOGIC;
SIGNAL reset_clk : STD_LOGIC;
SIGNAL sig_inn : STD_LOGIC;
SIGNAL sig_inn_ne : STD_LOGIC;
COMPONENT Flanke_detektor
	PORT (
	clock_50 : IN STD_LOGIC;
	reset_clk : IN STD_LOGIC;
	sig_inn : IN STD_LOGIC;
	sig_inn_ne : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Flanke_detektor
	PORT MAP (
-- list connections between master ports and signals
	clock_50 => clock_50,
	reset_clk => reset_clk,
	sig_inn => sig_inn,
	sig_inn_ne => sig_inn_ne
	);

p_clk : process
begin
	clock_50 <= '0';
	loop
		wait for periode/2;
		clock_50 <= not clock_50;
	end loop;
	wait;
end process p_clk;

init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once
	sig_inn <= '0', '1' after 37 us, '0' after 53 us, '1' after 83 us;                    
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Flanke_detektor_arch;