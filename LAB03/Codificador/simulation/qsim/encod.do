onerror {quit -f}
vlib work
vlog -work work encod.vo
vlog -work work encod.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.encod_vlg_vec_tst
vcd file -direction encod.msim.vcd
vcd add -internal encod_vlg_vec_tst/*
vcd add -internal encod_vlg_vec_tst/i1/*
add wave /*
run -all
