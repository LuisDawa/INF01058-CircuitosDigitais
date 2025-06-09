library verilog;
use verilog.vl_types.all;
entity LAB06 is
    port(
        A_D             : out    vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        SEL             : in     vl_logic_vector(1 downto 0);
        B_D             : out    vl_logic;
        C_D             : out    vl_logic;
        D_D             : out    vl_logic;
        G_D             : out    vl_logic;
        E_D             : out    vl_logic;
        F_D             : out    vl_logic
    );
end LAB06;
