onerror {exit -code 1}
vlib work
vlog -work work lab071.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.lab071_vlg_vec_tst -voptargs="+acc"
vcd file -direction lab071.msim.vcd
vcd add -internal lab071_vlg_vec_tst/*
vcd add -internal lab071_vlg_vec_tst/i1/*
run -all
quit -f
