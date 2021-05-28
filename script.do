vcom -work work -2008 -explicit C:/Users/lucaszm/Desktop/_SDA/ula_bancoReg/componentes_ula.vhd
vcom -work work -2008 -explicit C:/Users/lucaszm/Desktop/_SDA/ula_bancoReg/deco5to32.vhd
vcom -work work -2008 -explicit C:/Users/lucaszm/Desktop/_SDA/ula_bancoReg/registrador_Nbits.vhd
vcom -work work -2008 -explicit C:/Users/lucaszm/Desktop/_SDA/ula_bancoReg/M_registrador_Nbits.vhd
vcom -work work -2008 -explicit C:/Users/lucaszm/Desktop/_SDA/ula_bancoReg/somador.vhd
vcom -work work -2008 -explicit C:/Users/lucaszm/Desktop/_SDA/ula_bancoReg/ula_bancoReg.vhd
vcom -work work -2008 -explicit C:/Users/lucaszm/Desktop/_SDA/ula_bancoReg/ula_bancoReg_TB.vhd
vcom -work work -2008 -explicit {C:\Users\lucaszm\Desktop\_SDA\ula_bancoReg\somador_Nbits.vhd}
vcom -work work -2008 -explicit C:/Users/lucaszm/Desktop/_SDA/ula_bancoReg/mux9to1.vhd
vsim -gui work.ula_bancoreg_tb
do wave.do
run 20 us