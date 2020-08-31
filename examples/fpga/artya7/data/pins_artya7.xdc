## Based on https://github.com/Digilent/digilent-xdc/blob/master/Arty-A7-100-Master.xdc
## This file is a general .xdc for the Arty A7-100 Rev. D
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { IO_CLK }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { IO_CLK }];

## LEDs
set_property -dict { PACKAGE_PIN H17    IOSTANDARD LVCMOS33 } [get_ports { LED[0] }]; #IO_L24N_T3_35 Sch=led[4]
set_property -dict { PACKAGE_PIN K15    IOSTANDARD LVCMOS33 } [get_ports { LED[1] }]; #IO_25_35 Sch=led[5]
set_property -dict { PACKAGE_PIN J13    IOSTANDARD LVCMOS33 } [get_ports { LED[2] }]; #IO_L24P_T3_A01_D17_14 Sch=led[6]
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { LED[3] }]; #IO_L24N_T3_A00_D16_14 Sch=led[7]

## Misc. ChipKit Ports (set to a random pin of the Ethernet port for the Nexys4 DDR
set_property -dict { PACKAGE_PIN C17    IOSTANDARD LVCMOS33 } [get_ports { IO_RST_N }]; #IO_L16P_T2_35 Sch=ck_rst
