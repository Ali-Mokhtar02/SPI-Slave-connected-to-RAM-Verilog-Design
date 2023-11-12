create_project SPI_Project E:/spi -part xc7a35ticpg236-1L -force

add_files SpaRAM.v SPI_FIRST_TRIAL.v SPI_INTERFRACE.v constrain_SPI.xdc

synth_design -rtl -top spi_Interface > elab.log

write_schematic elaborated_schematic.pdf -format pdf -force 

launch_runs synth_1 > synth.log

wait_on_run synth_1
open_run synth_1

write_schematic synthesized_schematic.pdf -format pdf -force 

write_verilog -force SPI_netlist.v

launch_runs impl_1 -to_step write_bitstream 

wait_on_run impl_1
open_run impl_1

