onerror {exit -code 1}
vlib work
vlog -work work RCA8bits.vo
vlog -work work Waveform8b.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.RCA8bits_vlg_vec_tst -voptargs="+acc"
vcd file -direction RCA8bits.msim.vcd
vcd add -internal RCA8bits_vlg_vec_tst/*
vcd add -internal RCA8bits_vlg_vec_tst/i1/*
run -all
quit -f
