module SPI (
			input wire   MOSI ,
			input clk , 
			input wire SCK ,
			input wire CS ,
			output  MISO  ,
			output reg DATR , 
			input datr_clr ,  
			input wire [7:0] tx_load_data , 
			input tx_load_ctrl ,
			output wire [7:0] rx_read_data
			);
			



reg r1_mosi , r2_mosi ;
reg r1_sck , r2_sck , r3_sck ; 
reg r1_cs , r2_cs , r3_cs ; 
reg r_miso ; 


reg [7:0] rx_REG     ;
reg [7:0] tx_REG     ;		
reg [2:0] tx_COUNTER ;
reg [7:0] rx_DATA    ;
reg [7:0] tx_DATA    ; 
reg sck_posedge ; 


always@( posedge clk ) begin 


	/* Synchronize Inputs with clk */
	r1_mosi <= MOSI ; 
	r2_mosi <= r1_mosi ;

	r1_sck <= SCK ; 
	r2_sck <= r1_sck ;
	r3_sck <= r2_sck ; 

	r1_cs <= CS ; 
	r2_cs <= r1_cs ; 
	r3_cs <= r2_cs ;



/* NEGEDGE CS */

	if ( (r3_cs == 1'b1) && (r2_cs == 1'b0) ) begin 

		tx_COUNTER <= 3'b110 ; 
		tx_REG <= 8'B11111111 ; 
		r_miso <=  1'b1 ; 
		DATR <= 1'B0 ; 
		sck_posedge <= 1'b0 ; 

	end 


	/* POSEDGE SCK */

	else if( (r3_sck == 1'b0) && (r2_sck == 1'b1) && ( r3_cs == 1'b0 )) begin 

		if ( tx_COUNTER == 3'B111  ) begin 
			rx_DATA[7:0] <= { rx_REG[6:0] , r2_mosi }; 
			DATR <= 1'b1 ; 
		end 
		else begin 
			rx_REG[7:0] <= { rx_REG[6:0] , r2_mosi } ;
		end
	sck_posedge <= 1'b1 ; 

	end 

	/* NEGEDGE SCK */

	else if( (r3_sck == 1'b1) && (r2_sck == 1'b0) && (r3_cs == 1'b0 ) ) begin 

	if( sck_posedge == 1'b1 ) begin 
		tx_COUNTER <= tx_COUNTER - 1'b1 ;
		r_miso <= tx_REG[ tx_COUNTER ] ; 
		sck_posedge <= 1'b0 ; 
	end 

	end 
	/* Clear DATR */ 
	if ( datr_clr == 1'b1 ) begin 
		DATR <= 1'b0 ; 
	end 

	/* LOAD */
	if ( tx_load_ctrl == 1'b1  ) begin 
		tx_REG <= tx_load_data ;
	end 

end 

assign MISO = r_miso  ; 
assign rx_read_data = rx_DATA ; 




endmodule 
			
	
	