library verilog;
use verilog.vl_types.all;
entity RCA16bits_vlg_check_tst is
    port(
        Cout            : in     vl_logic;
        S               : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end RCA16bits_vlg_check_tst;
