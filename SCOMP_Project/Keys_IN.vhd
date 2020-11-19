LIBRARY IEEE;
LIBRARY LPM;

USE IEEE.STD_LOGIC_1164.ALL;
USE LPM.LPM_COMPONENTS.ALL;

ENTITY Keys_IN IS
  PORT(
    CS          : IN    STD_LOGIC;
    KEYS        : IN    STD_LOGIC_VECTOR(1 DOWNTO 0);
    IO_DATA     : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END Keys_IN;

ARCHITECTURE a OF Keys_IN IS
	-- Signal useful for implementation
  SIGNAL B_KEYS : STD_LOGIC_VECTOR(15 DOWNTO 0);
	
  -- Use LPM function to create bidirection I/O data bus
  BEGIN
	IO_BUS: lpm_bustri
    GENERIC MAP (
      lpm_width => 16
    )
    PORT MAP (
      data     => B_KEYS,
      enabledt => CS,
      tridata  => IO_DATA
    );
  
    PROCESS
    BEGIN
      WAIT UNTIL RISING_EDGE(CS);
		-- Output the value of the keys to SCOMP
      B_KEYS <= X"000" & '0' & '0' & not KEYS;
    END PROCESS;
END a;

