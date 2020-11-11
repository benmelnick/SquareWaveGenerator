-- SQ_GEN.VHD (a peripheral module for SCOMP)
-- 2020.10.10
--
-- Generates a square wave with period dependant on value
-- sent from SCOMP.

LIBRARY IEEE;
LIBRARY LPM;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE LPM.LPM_COMPONENTS.ALL;


ENTITY SQ_GEN IS
	PORT(CLOCK_1MHz,
		CLOCK_4Hz,
		RESETN,
		CS       : IN STD_LOGIC;
		IO_WRITE : IN STD_LOGIC;
		SQ       : OUT STD_LOGIC;
		IO_DATA  : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END SQ_GEN;


ARCHITECTURE a OF SQ_GEN IS
	SIGNAL Count      : STD_LOGIC_VECTOR(13 DOWNTO 0);
	SIGNAL FreqCount  : STD_LOGIC_VECTOR(13 DOWNTO 0);
	SIGNAL DurCount	: STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL Duration   : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL Finished	: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL IO_VAL		: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL SqWave     : STD_LOGIC;
	SIGNAL IO_OUT     : STD_LOGIC;

	BEGIN
	
	-- Use LPM function to create bidirection I/O data bus
	IO_BUS: lpm_bustri
	GENERIC MAP (
		lpm_width => 16
	)
	PORT MAP (
		data     => Finished,
		enabledt => IO_OUT,
		tridata  => IO_DATA
	);
	
	IO_OUT <= (CS AND NOT(IO_WRITE));

	PROCESS (CLOCK_1MHz, RESETN, CS, IO_WRITE)
	BEGIN
	
		-- Create a register to store the data sent from SCOMP
		IF (RESETN = '0') THEN
			FreqCount <= "00" & X"000";
			IO_VAL <= X"3FFF";
		ELSIF (rising_edge(CS) and IO_WRITE = '1') THEN
			-- When written to, latch IO_DATA into the compare register.
			FreqCount <= IO_DATA(13 DOWNTO 0);
			IO_VAL <= IO_DATA;
		END IF;
		
		-- Create a counter, and a comparator that resets the counter when it matches
		-- the number sent from SCOMP
		IF (rising_edge(CLOCK_1MHz)) THEN
			-- On compare match, reset counter and flip output.
			-- Count+1 is used so that the number sent from SCOMP
			-- is directly the number of intervals (instead of
			-- needing to subtract 1 on SCOMP's side).
			IF (Count) >= FreqCount THEN
				Count <= "00" & X"000";
				SqWave <= not SqWave;
			-- else, increment counter
			ELSE
				Count <= Count + 1;
			END IF;
		END IF;
	END PROCESS;
	
	PROCESS (CLOCK_4Hz, RESETN, CS, IO_WRITE)
	BEGIN
	
		IF (RESETN = '0') THEN
			Duration <= "00";
			Finished <= X"0001";
		ELSIF CS = '1' and IO_WRITE = '1' THEN
			Duration <= IO_DATA(15 DOWNTO 14);
			DurCount <= "00";
			IF (Duration = "00") THEN
				Finished <= X"0001";
			ELSE
				Finished <= X"0000";
			END IF;
		ELSIF (rising_edge(CLOCK_4Hz) and Finished /= X"0001") THEN
			IF (Duration /= "00" and DurCount /= Duration) THEN
				DurCount <= DurCount + 1;
			ELSE
				Finished <= X"0001";
			END IF;
		END IF;
	END PROCESS;
	
	PROCESS (SqWave, Finished, Duration, IO_VAL)
	BEGIN
		IF ((Finished = X"0000" or Duration = "00") and IO_VAL /= X"3FFF") THEN
			SQ <= SqWave;
		END IF;
	END PROCESS;
	
END a;
