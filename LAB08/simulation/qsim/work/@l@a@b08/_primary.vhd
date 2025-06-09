library verilog;
use verilog.vl_types.all;
entity LAB08 is
    port(
        Q               : out    vl_logic_vector(7 downto 0);
        D               : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        Sel             : in     vl_logic_vector(1 downto 0)
    );
end LAB08;
