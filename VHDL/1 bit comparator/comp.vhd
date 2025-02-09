library ieee;
use ieee.std_logic_1164.all;  -- Corrected 'std-logic-ll64' to 'std_logic_1164'

entity eql is
    port ( 
        i0, i1 : in std_logic;  -- Fixed 'il' to 'i1' for clarity
        eq : out std_logic
    );
end eql;

architecture sop_arch of eql is  -- Fixed 'sop-arch' to 'sop_arch' for consistency
    signal p0, p1 : std_logic;  -- Fixed 'PO, pi' to 'p0, p1' (case consistency)
begin
    -- Sum of two product terms
    eq <= p0 or p1;

    -- Product terms
    p0 <= (not i0) and (not i1);  
    p1 <= i0 and i1;  

end sop_arch;
