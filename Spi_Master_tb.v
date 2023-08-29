module spi_Master_tb();
reg rst_n,clk,SS_n,MOSI;
wire MISO;
spi_Interface tb_inst(MOSI,MISO,SS_n,clk,rst_n);

//signal to force MOSI to send the correct seqeuence in read operations for correct function
reg ensure_correct_read_sequence=1;

initial begin
	clk=1;
	forever
		#5 clk=~clk;
end

initial begin
	//Test reset functionality for 5 clock cycles
	rst_n=0;
	$readmemh("mem.txt",tb_inst.RAM_inst.mem);
	repeat(5) begin
		MOSI=$random;
		SS_n=$random;
		@(negedge clk);
	end
	rst_n=1;
	//Test Read Operation
	repeat(4) begin
		SS_n=0; //start communication
		MOSI=$random;   //MOSI value Shouldn't affect the transition to chk_cmd state
		@(negedge clk);
		MOSI= 1;     // Read Operation
		ensure_correct_read_sequence=~ensure_correct_read_sequence;
		//12 clock cycles --> 1 to set write state. 10 for serial to parallel conversion, 1 for ram operation.
		@(negedge clk);  // din[9]=1
		@(negedge clk);
		MOSI=ensure_correct_read_sequence;    // din[8]=0 if no read adress was receieved before, =1 if a read adress was received
		repeat(10) begin 
			@(negedge clk);
			MOSI=$random;  //random data/address
		end
		if(~ensure_correct_read_sequence)
			SS_n=1; //end communication
		else begin // [Read Data operation] delay for 8 clock cycles to convert parallel tx_data to serial MISO
			repeat(8)
				@(negedge clk);
		end
		SS_n=1;
		repeat(3) begin
			@(negedge clk); // some delay
		end
	end

	// test Write in memory with held address
	repeat(4) begin
		SS_n=0;
		MOSI=$random;
		@(negedge clk);
		MOSI=0;     // Write Operation.
		@(negedge clk);
		@(negedge clk);
		MOSI=$random;    
		repeat(10) begin //data to be writen
			@(negedge clk);
			MOSI=$random; 
		end
		SS_n=1;
		repeat(3) begin
			@(negedge clk); // some delay
		end
	end

	$stop;
end

endmodule