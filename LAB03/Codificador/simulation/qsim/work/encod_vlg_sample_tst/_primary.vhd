library verilog;
use verilog.vl_types.all;
entity encod_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end encod_vlg_sample_tst;
