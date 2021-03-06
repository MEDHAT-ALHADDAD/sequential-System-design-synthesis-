ENTITY zero_x0 IS
GENERIC (
  CONSTANT area 	 : NATURAL := 750;
  CONSTANT transistors	 : NATURAL := 1
);
PORT (
  nq	 : out BIT;
  vdd	 : in  BIT;
  vss	 : in  BIT
);
END zero_x0;

ARCHITECTURE behaviour_data_flow OF zero_x0 IS

BEGIN
  ASSERT ((vdd and not (vss)) = '1')
  REPORT "power supply is missing on zero_x0"
  SEVERITY WARNING;
  nq <= '0';
END;
