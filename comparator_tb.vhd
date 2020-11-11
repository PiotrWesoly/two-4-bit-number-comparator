LIBRARY ieee;
LIBRARY generics;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE generics.components.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE behavior OF testbench IS 

	COMPONENT comparator
	PORT(
		A : IN std_logic_vector(3 downto 0);
		B : IN std_logic_vector(3 downto 0);          
		Q0 : OUT std_logic;
		Q1 : OUT std_logic;
		Q2 : OUT std_logic
		);
	END COMPONENT;

	SIGNAL A :  std_logic_vector(3 downto 0);
	SIGNAL B :  std_logic_vector(3 downto 0);
	SIGNAL Q0 :  std_logic;
	SIGNAL Q1 :  std_logic;
	SIGNAL Q2 :  std_logic;

BEGIN

	uut: comparator PORT MAP(
		A => A,
		B => B,
		Q0 => Q0,
		Q1 => Q1,
		Q2 => Q2
	);


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN

	A<="1100";
	B<="0110";
	wait for 40ns;
	A<="0110";
	B<="0010";
	wait for 40ns;
	A<="0110";
	B<="0100";
	wait for 40ns;
	A<="0101";
	B<="0100";
	wait for 40ns;
	A<="1111";
	B<="1111";
      wait; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;

