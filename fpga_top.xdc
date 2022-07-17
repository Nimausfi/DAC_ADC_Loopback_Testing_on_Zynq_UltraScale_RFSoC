
set_property PACKAGE_PIN B12 [get_ports LED]
set_property IOSTANDARD LVCMOS33 [get_ports LED]

set_property PACKAGE_PIN H30 [get_ports FPGA_REFCLK_clk_p]
set_property IOSTANDARD LVDS [get_ports {FPGA_REFCLK_clk_p}]
set_property DQS_BIAS TRUE [get_ports {FPGA_REFCLK_clk_p}]
set_property DQS_BIAS TRUE [get_ports {FPGA_REFCLK_clk_n}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {FPGA_REFCLK_clk_p}]

set_property PACKAGE_PIN H28 [get_ports SYSREF_FPGA_clk_p]
set_property IOSTANDARD LVDS [get_ports {SYSREF_FPGA_clk_p}]
set_property DQS_BIAS TRUE [get_ports {SYSREF_FPGA_clk_p}]
set_property DQS_BIAS TRUE [get_ports {SYSREF_FPGA_clk_n}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {SYSREF_FPGA_clk_p}]


set_property BITSTREAM.CONFIG.USR_ACCESS TIMESTAMP [current_design]

set_false_path -to [get_pins -hierarchical -filter {NAME =~ */*vec_in_s1_reg*/D}]
#connect_debug_port dbg_hub/clk [get_nets clk_pl_0]