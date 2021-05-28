onerror {quit -f}
vlib work
vlog -work work ula_bancoReg.vo
vlog -work work ula_bancoReg.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.multiplexador_matricial_8bits_vlg_vec_tst
vcd file -direction ula_bancoReg.msim.vcd
vcd add -internal multiplexador_matricial_8bits_vlg_vec_tst/*
vcd add -internal multiplexador_matricial_8bits_vlg_vec_tst/i1/*
add wave /*
run -all
