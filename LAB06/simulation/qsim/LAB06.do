onerror {exit -code 1}
vlib work
vlog -work work LAB06.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.LAB06_vlg_vec_tst -voptargs="+acc"
vcd file -direction LAB06.msim.vcd
vcd add -internal LAB06_vlg_vec_tst/*
vcd add -internal LAB06_vlg_vec_tst/i1/*
run -all
quit -f
