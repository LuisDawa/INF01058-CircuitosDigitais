library verilog;
use verilog.vl_types.all;
entity encod is
    port(
        V               : out    vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        S               : out    vl_logic_vector(2 downto 0)
    );
end encod;
