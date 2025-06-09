library verilog;
use verilog.vl_types.all;
entity LAB08_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        D               : in     vl_logic_vector(7 downto 0);
        Sel             : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end LAB08_vlg_sample_tst;
