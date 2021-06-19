onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider ENTRADAS
add wave -noupdate /multiplexador_sequencial_8bits_tb/uut/clk
add wave -noupdate /multiplexador_sequencial_8bits_tb/uut/reset
add wave -noupdate -radix unsigned /multiplexador_sequencial_8bits_tb/uut/MD
add wave -noupdate -radix unsigned /multiplexador_sequencial_8bits_tb/uut/MR
add wave -noupdate -divider REGISTRADOR
add wave -noupdate /multiplexador_sequencial_8bits_tb/uut/enable
add wave -noupdate -radix unsigned /multiplexador_sequencial_8bits_tb/uut/PR_ENTRADA
add wave -noupdate -radix unsigned /multiplexador_sequencial_8bits_tb/uut/PR_SAIDA
add wave -noupdate -divider SOMA
add wave -noupdate /multiplexador_sequencial_8bits_tb/uut/MUX
add wave -noupdate -radix unsigned /multiplexador_sequencial_8bits_tb/uut/PP
add wave -noupdate /multiplexador_sequencial_8bits_tb/uut/RESULT
add wave -noupdate /multiplexador_sequencial_8bits_tb/uut/c4
add wave -noupdate /multiplexador_sequencial_8bits_tb/uut/overflow
add wave -noupdate -divider ESTADOS
add wave -noupdate /multiplexador_sequencial_8bits_tb/uut/ESTATO_ATUAL
add wave -noupdate /multiplexador_sequencial_8bits_tb/uut/ESTADO_PROXIMO
add wave -noupdate -divider SAIDAS
add wave -noupdate -radix unsigned /multiplexador_sequencial_8bits_tb/uut/PR
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1250000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 337
configure wave -valuecolwidth 82
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {1231218 ps} {1337330 ps}
