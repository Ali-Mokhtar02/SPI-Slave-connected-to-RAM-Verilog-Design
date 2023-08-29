module spA_RAM( din, rx_valid, clk, rst_n, dout, tx_valid);
parameter MEM_DEPTH=256;
parameter ADDR_SIZE=8;
input[9:0] din;
input rx_valid,clk,rst_n;
output reg [ADDR_SIZE-1:0] dout;
output reg tx_valid;
reg [ADDR_SIZE-1:0] read_address, write_address;
reg [ADDR_SIZE-1:0] mem [MEM_DEPTH-1:0];
always @(posedge clk) begin
	if (~rst_n) begin
		dout<=0;
		tx_valid<=0;
		read_address<=0;
		write_address<=0;	
	end
	else if(rx_valid) begin
		case({ din[9], din[8]} )
			2'b00: 
				begin 
					write_address<=din[7:0];
					tx_valid<=0;
				end
			2'b01:
				begin
					mem[write_address]<=din[7:0];
					tx_valid<=0;
				end
			2'b10: 
				begin
					read_address<=din[7:0];
					tx_valid<=0;
				end
			2'b11: 
				begin
					dout<=mem[read_address];
					tx_valid<=1;
				end
		endcase
	end
end
endmodule