library verilog;
use verilog.vl_types.all;
entity SCLA_vlg_check_tst is
    port(
        C4              : in     vl_logic;
        S               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end SCLA_vlg_check_tst;
