library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity comparator is
port(
	signal A: in std_logic_vector (3 downto 0);
	signal B: in std_logic_vector (3 downto 0);
	signal Q0: out std_logic;	--A>B Q0=1
	signal Q1: out std_logic;	--A<B Q1=10
	signal Q2: out std_logic);	--A=B Q2=1
end;

architecture simple of comparator is
begin
process(A, B)
begin	
 	if(A(3)>B(3))then 
       
 		Q0<='0'; Q1<='1'; Q2<='0';
   
	elsif(A(3)<B(3)) then
 
      		 Q0<='1'; Q1<='0'; Q2<='0';
	end if;
   
	for i in 2 downto 0 loop
       
		if(A(i+1)=B(i+1)) then
           
			if(A(i)>B(i)) then
               
				Q0<='1'; Q1<='0'; Q2<='0';
		
                exit;
	  	        elsif(B(i)>A(i)) then
		
                Q0<='0'; Q1<='1'; Q2<='0';
		
                exit;
		
         elsif(A(i)=B(i)) then
		
                Q0<='0'; Q1<='0'; Q2<='1';
		
         end if;
	
        end if;
    
    end loop;

end process;
 

end simple;
