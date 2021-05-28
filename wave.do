onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider ENTRADAS
add wave -noupdate /ula_bancoreg_tb/uut/clock
add wave -noupdate /ula_bancoreg_tb/uut/reset
add wave -noupdate /ula_bancoreg_tb/uut/FUNCT
add wave -noupdate -radix binary /ula_bancoreg_tb/uut/Rs
add wave -noupdate -radix binary /ula_bancoreg_tb/uut/Rt
add wave -noupdate -radix binary /ula_bancoreg_tb/uut/Rd
add wave -noupdate -radix decimal /ula_bancoreg_tb/colocaValorAux
add wave -noupdate -divider FLAGS
add wave -noupdate /ula_bancoreg_tb/uut/overflow
add wave -noupdate -divider {SINAIS INTERNOS}
add wave -noupdate -radix decimal /ula_bancoreg_tb/uut/a
add wave -noupdate -radix decimal /ula_bancoreg_tb/uut/b
add wave -noupdate -radix decimal /ula_bancoreg_tb/uut/d
add wave -noupdate -radix decimal /ula_bancoreg_tb/uut/fSoma
add wave -noupdate -radix decimal /ula_bancoreg_tb/uut/fSubt
add wave -noupdate -radix binary /ula_bancoreg_tb/uut/fSomaOut
add wave -noupdate -radix binary /ula_bancoreg_tb/uut/fSubtOut
add wave -noupdate -divider SAIDAS
add wave -noupdate -divider OUTROS
add wave -noupdate /ula_bancoreg_tb/uut/OPCODE
add wave -noupdate /ula_bancoreg_tb/uut/SHAMT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {352346 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 222
configure wave -valuecolwidth 100
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
WaveRestoreZoom {311296 ps} {393216 ps}
