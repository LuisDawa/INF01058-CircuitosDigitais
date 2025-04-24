library verilog;
use verilog.vl_types.all;
entity SCLA is
    port(
        C4              : out    vl_logic;
        C0              : in     vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        S               : out    vl_logic_vector(3 downto 0)
    );
end SCLA;
