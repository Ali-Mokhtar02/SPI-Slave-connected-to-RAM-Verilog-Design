module spi_Interface(MOSI,MISO,SS_n,clk,rst_n);
input MOSI,SS_n,clk,rst_n;
output MISO;

wire[9:0] rx_data;
wire[7:0] tx_data;
wire tx_valid;
wire rx_valid;

SPI_SLAVE spi_inst(MOSI,MISO,SS_n,clk,rst_n,rx_data,rx_valid,tx_data,tx_valid);

spA_RAM RAM_inst (rx_data, rx_valid, clk, rst_n, tx_data, tx_valid );

endmodule