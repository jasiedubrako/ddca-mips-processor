# ----------------------------------------------------
# Inputs - A mapped to SW3..SW0, B mapped to SW7..SW4
# ----------------------------------------------------
set_property PACKAGE_PIN V17 [get_ports {a[0]}]
set_property PACKAGE_PIN V16 [get_ports {a[1]}]
set_property PACKAGE_PIN W16 [get_ports {a[2]}]
set_property PACKAGE_PIN W17 [get_ports {a[3]}]

set_property PACKAGE_PIN W15 [get_ports {b[0]}]
set_property PACKAGE_PIN V15 [get_ports {b[1]}]
set_property PACKAGE_PIN W14 [get_ports {b[2]}]
set_property PACKAGE_PIN W13 [get_ports {b[3]}]

# ----------------------------------------------------
# 7-segment display outputs - D[0]=a ... D[6]=g
# ----------------------------------------------------
set_property PACKAGE_PIN W7 [get_ports {D[0]}]
set_property PACKAGE_PIN W6 [get_ports {D[1]}]
set_property PACKAGE_PIN U8 [get_ports {D[2]}]
set_property PACKAGE_PIN V8 [get_ports {D[3]}]
set_property PACKAGE_PIN U5 [get_ports {D[4]}]
set_property PACKAGE_PIN V5 [get_ports {D[5]}]
set_property PACKAGE_PIN U7 [get_ports {D[6]}]

# ----------------------------------------------------
# Overflow LED - LD0
# ----------------------------------------------------
set_property PACKAGE_PIN U16 [get_ports {overflow}]

# ----------------------------------------------------
# 7-segment display anode - activate display 0 only
# (active-low: 0=on, 1=off)
# ----------------------------------------------------
set_property PACKAGE_PIN U2 [get_ports {AN[0]}]
set_property PACKAGE_PIN U4 [get_ports {AN[1]}]
set_property PACKAGE_PIN V4 [get_ports {AN[2]}]
set_property PACKAGE_PIN W4 [get_ports {AN[3]}]

# ----------------------------------------------------
# I/O Standards
# ----------------------------------------------------
set_property IOSTANDARD LVCMOS33 [get_ports {a[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {overflow}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[3]}]