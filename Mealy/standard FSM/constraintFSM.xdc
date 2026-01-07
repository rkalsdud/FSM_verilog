set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]

set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVCMOS33} [get_ports clk]

set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports x]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS33} [get_ports reset]

set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS33} [get_ports state[2]]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports state[1]]
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports state[0]]

set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS33} [get_ports z]