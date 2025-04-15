library verilog;
use verilog.vl_types.all;
entity decod_vlg_sample_tst is
    port(
        E               : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end decod_vlg_sample_tst;
