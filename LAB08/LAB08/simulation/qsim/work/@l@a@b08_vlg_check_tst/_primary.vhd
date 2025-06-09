library verilog;
use verilog.vl_types.all;
entity LAB08_vlg_check_tst is
    port(
        Q               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end LAB08_vlg_check_tst;
