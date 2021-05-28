onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix decimal /multiplexador_matricial_8bits_tb/a
add wave -noupdate -radix decimal /multiplexador_matricial_8bits_tb/b
add wave -noupdate -radix decimal /multiplexador_matricial_8bits_tb/uut/s
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {708466 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {691200 ps} {819200 ps}
