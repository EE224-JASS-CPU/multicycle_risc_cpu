transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/jass2.0/Gates.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/RegisterFile.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/mux8.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/memory.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/Flipflop.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/demux8.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/demux4.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/16bit8to1mux.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/16bit1to8demux.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/4to1mux.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/16bit2x1mux.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/zero_padding.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/zero_flag.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/sixteen_bit_full_adder.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/sign_ext_six.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/sign_ext_nine.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/shift_one.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/shift_eight.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/register16bit.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/multiplier.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/full_adder.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/demux2.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/bitwise_OR.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/bitwise_IMP.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/bitwise_AND.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/alu.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/2to1mux.vhd}
vcom -93 -work work {C:/intelFPGA_lite/jass2.0/fsm.vhd}

vcom -93 -work work {C:/intelFPGA_lite/jass2.0/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run 1 sec
