


module main (	
				 input wire mclk ,
				/* SPI Interface */  
				 input wire MOSI ,
				 input wire SCK  ,
				 input wire CS   ,
				 output wire MISO ,
				 /* Segment Output */
				 output wire [7:0] SEG , 
				 /* Segment Enable */
				 output wire [7:0] DEG 
 ) ;
 
 
 
 /* Local Params */
 localparam STATE_IDLE   = 3'B00 ; 
 localparam STATE_READ   = 3'B01 ; 
 localparam STATE_WAIT   = 3'B10 ; 
 localparam STATE_FINISH = 3'B11 ;
 
 localparam TMUX_OVF = 18'd25000 ; 
 localparam INTERVAL_OVF = 7'd10 ;
 
localparam SEG_A  = 0 ; 
localparam SEG_B  = 1 ; 
localparam SEG_C  = 2 ; 
localparam SEG_D  = 3 ;
localparam SEG_E  = 4 ; 
localparam SEG_F  = 5 ; 
localparam SEG_G  = 6 ; 
localparam SEG_DP = 7 ;

 
 
 
 
 // Register Addr 

localparam S117_CNTR_ADDR  = 4'b0001 ;
localparam S117_DIGEN_ADDR = 4'b0010 ;
localparam S117_BADJ_ADDR  = 4'b0011 ;
localparam S117_SEG0_ADDR  = 4'b0100 ;
localparam S117_SEG1_ADDR  = 4'b0101 ;
localparam S117_SEG2_ADDR  = 4'b0110 ;
localparam S117_SEG3_ADDR  = 4'b0111 ;
localparam S117_BLNK0_ADDR = 4'B1000 ; 
localparam S117_BLNK1_ADDR = 4'B1001 ;
localparam S117_DP_ADDR    = 4'B1010 ; 


// CNTR Register Bit Positions 

localparam S117_CNTR_PWRDN = 7 ;
localparam S117_CNTR_TEST  = 6 ; 
localparam S117_CNTR_CLKMD = 5 ;
localparam S117_CNTR_POL   = 4 ; 
localparam S117_CNTR_NC3   = 3 ; 
localparam S117_CNTR_NC2   = 2 ; 
localparam S117_CNTR_NC1   = 1 ; 
localparam S117_CNTR_NC0   = 0 ; 

// BADJ Register Bit Positions 

localparam S117_BADJ_PWDMD7 = 7 ; 
localparam S117_BADJ_PWDMD6 = 6 ; 
localparam S117_BADJ_PWDMD5 = 5 ; 
localparam S117_BADJ_PWDMD4 = 4 ; 
localparam S117_BADJ_PWDMD3 = 3 ; 
localparam S117_BADJ_PWDMD2 = 2 ; 
localparam S117_BADJ_PWDMD1 = 1 ; 
localparam S117_BADJ_PWDMD0 = 0 ; 

// SEG0 Register Bit Positions 

localparam S117_SEG0_DIG2_3 = 7 ;
localparam S117_SEG0_DIG2_2 = 6 ;
localparam S117_SEG0_DIG2_1 = 5 ;
localparam S117_SEG0_DIG2_0 = 4 ;
localparam S117_SEG0_DIG1_3 = 3 ;
localparam S117_SEG0_DIG1_2 = 2 ;
localparam S117_SEG0_DIG1_1 = 1 ;
localparam S117_SEG0_DIG1_0 = 0 ;

// SEG1 Register Bit Positions 

localparam S117_SEG1_DIG4_3 = 7 ;
localparam S117_SEG1_DIG4_2 = 6 ;
localparam S117_SEG1_DIG4_1 = 5 ;
localparam S117_SEG1_DIG4_0 = 4 ;
localparam S117_SEG1_DIG3_3 = 3 ;
localparam S117_SEG1_DIG3_2 = 2 ;
localparam S117_SEG1_DIG3_1 = 1 ;
localparam S117_SEG1_DIG3_0 = 0 ;

// SEG2 Register Bit Positions 

localparam S117_SEG2_DIG6_3 = 7 ;
localparam S117_SEG2_DIG6_2 = 6 ;
localparam S117_SEG2_DIG6_1 = 5 ;
localparam S117_SEG2_DIG6_0 = 4 ;
localparam S117_SEG2_DIG5_3 = 3 ;
localparam S117_SEG2_DIG5_2 = 2 ;
localparam S117_SEG2_DIG5_1 = 1 ;
localparam S117_SEG2_DIG5_0 = 0 ;

// SEG3 Register Bit Positions 

localparam S117_SEG3_DIG8_3 = 7 ;
localparam S117_SEG3_DIG8_2 = 6 ;
localparam S117_SEG3_DIG8_1 = 5 ;
localparam S117_SEG3_DIG8_0 = 4 ;
localparam S117_SEG3_DIG7_3 = 3 ;
localparam S117_SEG3_DIG7_2 = 2 ;
localparam S117_SEG3_DIG7_1 = 1 ;
localparam S117_SEG3_DIG7_0 = 0 ;

// DIGEN Register Bit Positions 

localparam S117_DIGEN_DIG8EN = 7 ;
localparam S117_DIGEN_DIG7EN = 6 ;
localparam S117_DIGEN_DIG6EN = 5 ;
localparam S117_DIGEN_DIG5EN = 4 ;
localparam S117_DIGEN_DIG4EN = 3 ;
localparam S117_DIGEN_DIG3EN = 2 ;
localparam S117_DIGEN_DIG2EN = 1 ;
localparam S117_DIGEN_DIG1EN = 0 ;

// BLNK0 Register Bit Positions 

localparam S117_BLNK0_BP7 = 7 ; 
localparam S117_BLNK0_BP6 = 6 ;
localparam S117_BLNK0_BP5 = 5 ;
localparam S117_BLNK0_BP4 = 4 ;
localparam S117_BLNK0_BP3 = 3 ;
localparam S117_BLNK0_BP2 = 2 ;
localparam S117_BLNK0_BP1 = 1 ;
localparam S117_BLNK0_BP0 = 0 ;

// BLNK1 Register Bit Positions 

localparam S117_BLNK1_BP7 = 7 ; 
localparam S117_BLNK1_BP6 = 6 ;
localparam S117_BLNK1_BP5 = 5 ;
localparam S117_BLNK1_BP4 = 4 ;
localparam S117_BLNK1_BP3 = 3 ;
localparam S117_BLNK1_BP2 = 2 ;
localparam S117_BLNK1_BP1 = 1 ;
localparam S117_BLNK1_BP0 = 0 ;

// DP Register bit Positions 

localparam S117_DP_DP7 = 7 ; 
localparam S117_DP_DP6 = 6 ;
localparam S117_DP_DP5 = 5 ;
localparam S117_DP_DP4 = 4 ;
localparam S117_DP_DP3 = 3 ;
localparam S117_DP_DP2 = 2 ;
localparam S117_DP_DP1 = 1 ;
localparam S117_DP_DP0 = 0 ;

// Registers in the Register File 

reg [7:0] S117_CNTR ;
reg [7:0] S117_BADJ ;
reg [7:0] S117_SEG0 ;
reg [7:0] S117_SEG1 ;
reg [7:0] S117_SEG2 ;
reg [7:0] S117_SEG3 ;
reg [7:0] S117_DIGEN;
reg [7:0] S117_DUMMY;
reg [7:0] S117_BLNK0;
reg [7:0] S117_BLNK1; 
reg [7:0] S117_DP ; 


 
 /* Wire Vars */
 
 wire tx_load_w ; 
 wire [7:0] tx_data_w ; 
 wire datr_clr_w ; 
 wire datr_w ; 
 wire [7:0] rx_data_w ; 
 
 
 wire [7:0] reg_file_in_w ;
 wire [7:0] reg_file_out_w ; 
 wire wrd_w ; 
 wire [3:0] reg_addr_w ;


/* REG */

reg [7:0] decoder_r ;

reg [7:0] seg_driver_r ; 
reg [7:0] dig_driver_r ;  

reg datr_clr_r ; 
reg tx_load_r ; 
reg wrd_r ; 

reg cs_r1 ; 
reg cs_r2 ; 
reg cs_r3 ; 

reg [1:0] state ; 
reg [7:0] ctrl_word ; 
reg [3:0] seg_r ; 

/* Module Declaration */


SPI s117_spi(
 .clk( mclk) ,
 .MOSI(MOSI) ,
 .SCK(SCK) ,
 .CS(CS) ,
 .MISO(MISO),
 .datr_clr(datr_clr_w ) ,
 .tx_load_ctrl( tx_load_w ) ,
 .tx_load_data(tx_data_w) ,
 .DATR(datr_w ),
 .rx_read_data( rx_data_w )
 ) ;

 
 
 /* STATE Machine LOGIC */ 
always@( posedge mclk ) begin 

	cs_r1 <= CS ; 
	cs_r2 <= cs_r1 ; 
	cs_r3 <= cs_r2 ; 


	if ( cs_r2 == 1'b0 && cs_r3 == 1'b1 ) begin 
		state <= STATE_IDLE ; 
	end 
	else begin 
		case( state )

			STATE_IDLE : begin 	/* Word Received */ 
								if ( datr_w == 1'b1 ) begin 
									/* Clear DTR FLAG */ 
									datr_clr_r <= 1'b1 ; 
									/* READ CONTROL WORD */
									ctrl_word <= rx_data_w ;
									/* Go to the Next State */
									state <= STATE_READ ; 
								end 
								else begin 
									state <= STATE_IDLE ; 
									datr_clr_r <= 1'b0 ; 
									wrd_r <= 1'b0 ; 
									tx_load_r <= 1'b0 ; 
								end 
							
							end 
					
			STATE_READ : begin			
									wrd_r <= 1'b0 ; 
									/* De-assert DATAREADY CLEAR */ 
									datr_clr_r <= 1'b0 ; 
									/* Load Register */ 
									tx_load_r <= 1'b1 ; 
									state <= STATE_WAIT ;				
								end 
					
			STATE_WAIT : begin 
									/* De-assert Load */  
									tx_load_r <= 1'b0 ;
									if ( datr_w == 1'b0 ) begin 
										state <= STATE_WAIT ; 
									end 
									else begin 
										datr_clr_r <= 1'b1 ; 
										/* Write Command , wrd = 1'b1 */  
										if ( ctrl_word[7:4] == 4'b1000 ) begin 
											wrd_r <= 1'b1 ; 
										end 
										state <= STATE_FINISH ;
						 
									end 

								end 

			STATE_FINISH : begin 
									wrd_r <= 1'b0 ; 
									datr_clr_r <= 1'b0 ;
									tx_load_r <= 1'b0 ; 
									state <= STATE_IDLE ; 
								end

			default : state <= STATE_IDLE ; 					
					
					
		endcase 							
							
					 
	end 


end

/* Registers Logic */ 

always@(posedge mclk ) begin

	// Write Reg 
	if ( wrd_w == 1'b1 ) begin 

		case ( reg_addr_w ) 

			S117_CNTR_ADDR :  S117_CNTR <= rx_data_w ;  

			S117_DIGEN_ADDR : S117_DIGEN <= rx_data_w ;  

			S117_BADJ_ADDR : S117_BADJ <= rx_data_w ; 
 
			S117_SEG0_ADDR : S117_SEG0 <= rx_data_w ;  

			S117_SEG1_ADDR : S117_SEG1 <= rx_data_w ; 
 
			S117_SEG2_ADDR : S117_SEG2 <= rx_data_w ;  

			S117_SEG3_ADDR : S117_SEG3 <= rx_data_w ;  

			S117_BLNK0_ADDR : S117_BLNK0 <= rx_data_w ;

			S117_BLNK1_ADDR : S117_BLNK1 <= rx_data_w ;

			S117_DP_ADDR : S117_DP <= rx_data_w ; 

			default : S117_DUMMY <= rx_data_w ; 

		endcase

	end

end


/* Time Multiplex Clock Generate , Period = 4 ms */ 

reg [17:0] tmux_counter ; 
reg tmux_count_out ;
reg tmux_r ;  
reg tmux_posedge  ; 


always@( posedge mclk ) begin 

	/* Generate Posedge Detection */
	tmux_r <= tmux_count_out ; 

	if( tmux_r == 1'b0 && tmux_count_out == 1'b1 ) begin 
		tmux_posedge <= 1'b1 ; 
	end 
	else begin 
		tmux_posedge <= 1'b0 ; 
	end 

/* Clear on Compare Match , and Increment logic */ 

	if ( S117_CNTR[S117_CNTR_PWRDN] == 1'b1 ) begin 
		tmux_counter <= 0 ; 
		tmux_count_out <= 0 ; 
		tmux_r <= 0 ; 
		tmux_posedge <= 0 ;
	end 
	else if ( tmux_counter == TMUX_OVF ) begin 
		tmux_count_out <= ~tmux_count_out ; 
		tmux_counter <= 0 ; 
	end 
	else begin 
		tmux_counter <= tmux_counter + 1'b1 ; 
	end 

end 



/* Segment Decoder Logic */ 


always@( seg_r , S117_CNTR[S117_CNTR_POL] ) begin 

	/* Negative Polarity */ 
	if( S117_CNTR[S117_CNTR_POL] == 1'b1  ) begin

		decoder_r = (( seg_r == 4'b0000 ) ? ( 8'b11000000 ) :
						( seg_r == 4'b0001 ) ? ( 8'b11111001 ) :
						( seg_r == 4'b0010 ) ? ( 8'b10100100 ) :
						( seg_r == 4'b0011 ) ? ( 8'b10110000 ) :
						( seg_r == 4'b0100 ) ? ( 8'b10011001 ) :
						( seg_r == 4'b0101 ) ? ( 8'b10010010 ) :
						( seg_r == 4'b0110 ) ? ( 8'b10000010 ) :
						( seg_r == 4'b0111 ) ? ( 8'b11111000 ) :
						( seg_r == 4'b1000 ) ? ( 8'b10000000 ) :
						( seg_r == 4'b1001 ) ? ( 8'b10010000 ) : ( 8'b11111111 ) ) ;

	end 
	else begin 


		decoder_r = (( seg_r == 4'b0000 ) ? ( 8'b00111111 ) :
						( seg_r == 4'b0001 ) ? ( 8'b00000110 ) :
						( seg_r == 4'b0010 ) ? ( 8'b01011011 ) :
						( seg_r == 4'b0011 ) ? ( 8'b01001111 ) :
						( seg_r == 4'b0100 ) ? ( 8'b01100110 ) :
						( seg_r == 4'b0101 ) ? ( 8'b01101101 ) :
						( seg_r == 4'b0110 ) ? ( 8'b01111101 ) :
						( seg_r == 4'b0111 ) ? ( 8'b00000111 ) :
						( seg_r == 4'b1000 ) ? ( 8'b01111111 ) :
						( seg_r == 4'b1001 ) ? ( 8'b01101111 ) : ( 8'b00000000 ) ) ;
				


	end  

end 

/* Generate PWM Signal Based off the Value stord in BADJ register */ 

reg [7:0] pwm_counter ;
reg [7:0]pwm_out ; 

always@( posedge mclk ) begin 

	if ( pwm_counter == 8'b11111111 && S117_BADJ != 8'B00000000 ) begin 
		pwm_out <= 8'b11111111 ; 
	end 
	else if ( pwm_counter == 8'b11111111 && S117_BADJ == 8'B00000000 ) begin 
		pwm_out <= 8'b00000000 ; 
	end 
	else if ( pwm_counter < S117_BADJ ) begin 
		pwm_out <= 8'b11111111  ; 
	end 
	else if ( pwm_counter >= S117_BADJ ) begin 
		pwm_out <= 8'b00000000 ; 
	end 

	if ( S117_CNTR[S117_CNTR_PWRDN] == 1'b1 ) begin 
		pwm_counter <= 0 ; 
		pwm_out <= 0 ; 
	end 
	else begin 
		pwm_counter <= pwm_counter + 1'b1 ; 
	end 

end 





reg [2:0] digit_counter ; 
/* Time Multiplexing of Digits , Logic */

always@( posedge mclk ) begin 

	if (  S117_CNTR[S117_CNTR_PWRDN] == 1'b1 ) begin 
		dig_driver_r <= 0 ; 
	end 
	else begin 	

		if ( tmux_posedge == 1'b1 ) begin 

			digit_counter <= digit_counter + 1'b1 ; 

			/* Clock Enable Signal , and Segment Register , if the digit is enabled   */
			if ( S117_DIGEN[digit_counter] == 1'b1  ) begin 

				dig_driver_r <= ( S117_CNTR[S117_CNTR_POL] == 1'b0 ?  ( 1'b1 << digit_counter ) : ~( 1'b1 << digit_counter ) ) ;
	
				/* Clock Data Signal */
				if ( digit_counter == 3'b000 )
					seg_r <= S117_SEG0[3:0] ; 
				else if ( digit_counter == 3'b001 )
					seg_r <= S117_SEG0[7:4] ; 
				else if ( digit_counter == 3'b010 )
					seg_r <= S117_SEG1[3:0] ; 
				else if ( digit_counter == 3'b011 ) 
					seg_r <= S117_SEG1[7:4] ; 
				else if ( digit_counter == 3'b100 )
					seg_r <= S117_SEG2[3:0] ; 
				else if ( digit_counter == 3'b101 )
					seg_r <= S117_SEG2[7:4] ; 
				else if ( digit_counter == 3'b110 )
					seg_r <= S117_SEG3[3:0] ; 
				else if ( digit_counter == 3'b111 )
					seg_r <= S117_SEG3[7:4] ; 

			end 
			else begin 
				seg_r <= 0 ; 
				dig_driver_r <= 0 ; 

			end 

		end

	end 

end

/* Logic for Blanking */ 
reg [7:0] blink_compl;
reg [7:0] blink_comph;

always@( S117_BLNK0 , S117_BLNK1 ) begin 

	if ( S117_BLNK0 > S117_BLNK1 ) begin 
		blink_compl = S117_BLNK1 ; 
		blink_comph = S117_BLNK0 ; 
	end 
	else if ( S117_BLNK1 > S117_BLNK0 ) begin 
		blink_comph = S117_BLNK1 ; 
		blink_compl = S117_BLNK0 ;
	end 
	else begin 
		blink_comph = S117_BLNK1 ; 
		blink_compl = S117_BLNK0 ;
	end  
end 

reg [3:0] interval_counter ; 
reg [7:0] blink_counter ; 
reg [7:0] blink_out ;
always@( posedge mclk ) begin 

	if ( S117_CNTR[S117_CNTR_PWRDN] == 1'b1 ) begin 
		interval_counter <= 0 ; 
		blink_counter <= 0 ;  
	end 
	else if ( tmux_posedge == 1'b1 && S117_CNTR[S117_CNTR_PWRDN] == 1'b0  ) begin 
		if ( interval_counter ==  INTERVAL_OVF )begin 
			interval_counter <= 4'b0 ; 
			blink_counter <= blink_counter + 1'b1 ; 

			if ( blink_compl == 0 ) begin 
				blink_out <= 8'b11111111  ; 
			end 
			else if ( blink_counter < blink_compl && blink_counter < blink_comph ) begin 
				blink_out <= 8'b00000000 ; 
			end 
			else if ( blink_counter >=  blink_compl  && blink_counter < blink_comph ) begin 
				blink_out <= 8'b11111111 ; 
			end 
			else if ( blink_counter >= blink_comph ) begin 
				blink_counter <= 0 ; 
			end 
		end
		else 
			interval_counter <= interval_counter + 1'b1 ; 	
	end 
end 


/* assign SEG driver */

always@( posedge mclk ) begin 

	if ( S117_CNTR[S117_CNTR_PWRDN] == 1'b0  ) begin 

		if ( S117_CNTR[S117_CNTR_TEST] == 1'B1 ) 
			seg_driver_r <= S117_CNTR[S117_CNTR_POL] == 1'b0 ? 8'b11111111 : 8'b00000000 ; 
		else 
			seg_driver_r <= ( S117_CNTR[S117_CNTR_CLKMD] ? ( blink_out ) : 8'B11111111 ) & pwm_out & ( decoder_r    | (  S117_DP[digit_counter - 1'b1 ] << 7 ) );

	end 
	else begin  
		seg_driver_r <= 0 ;
	end 
end 





assign reg_addr_w = ctrl_word[3:0] ; 
assign wrd_w = wrd_r ; 
assign datr_clr_w = datr_clr_r ; 
assign tx_load_w = tx_load_r ; 


 
 assign tx_data_w  = (( reg_addr_w == S117_CNTR_ADDR  ) ? (S117_CNTR)   :
						   ( reg_addr_w == S117_DIGEN_ADDR ) ? (S117_DIGEN)  :
						   ( reg_addr_w == S117_BADJ_ADDR  ) ? (S117_BADJ)   :
						   ( reg_addr_w == S117_SEG0_ADDR  ) ? (S117_SEG0)   :
						   ( reg_addr_w == S117_SEG1_ADDR  ) ? (S117_SEG1)   :
						   ( reg_addr_w == S117_SEG2_ADDR  ) ? (S117_SEG2)   :
						   ( reg_addr_w == S117_SEG3_ADDR  ) ? (S117_SEG3)   :
						   ( reg_addr_w == S117_BLNK0_ADDR ) ? (S117_BLNK0)  :
						   ( reg_addr_w == S117_BLNK1_ADDR ) ? (S117_BLNK1)  :
						   ( reg_addr_w == S117_DP_ADDR )    ? (S117_DP)	  : S117_DUMMY ) ; 
 
 
assign  SEG = seg_driver_r ;
assign  DEG = dig_driver_r ; 
 
 
 endmodule 
