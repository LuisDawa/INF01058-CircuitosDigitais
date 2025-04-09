onerror {exit -code 1}
vlib work
vlog -work work RCA16bits.vo
vlog -work work Waveform16b.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.RCA16bits_vlg_vec_tst -voptargs="+acc"
vcd file -direction RCA16bits.msim.vcd
vcd add -internal RCA16bits_vlg_vec_tst/*
vcd add -internal RCA16bits_vlg_vec_tst/i1/*
run -all
quit -f
