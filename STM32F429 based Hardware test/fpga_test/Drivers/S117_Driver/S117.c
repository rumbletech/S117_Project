/*
 * S117.c
 *
 *  Created on: Sep 4, 2020
 *      Author: Garmoosh
 */

#include "S117.h"

SPI_HandleTypeDef * SPI_handle = 0 ;



static void S117_Write ( uint8_t addr , uint8_t ubyte )
{
	uint8_t tx_val[2] ;
	uint8_t rx_val[2] ;

	if ( !SPI_handle )
	{
		return ;
	}

	tx_val[0] = WRITE_CMD_MSK|addr ;
	tx_val[1] = ubyte ;

	HAL_GPIO_WritePin(S117_CS_GPIO_PORT , S117_CS_GPIO_PIN_NUM , GPIO_PIN_RESET);
    HAL_SPI_TransmitReceive(SPI_handle , tx_val , rx_val , 2 , SPI_TIMEOUT_VAL  ) ;
    HAL_GPIO_WritePin(S117_CS_GPIO_PORT , S117_CS_GPIO_PIN_NUM  , GPIO_PIN_SET);




}

static uint8_t S117_Read ( uint8_t addr  )
{
	uint8_t tx_val[2] ;
	uint8_t rx_val[2] ;

	if ( !SPI_handle )
	{
		return 0 ;
	}

	tx_val[0] = READ_CMD_MSK|addr ;
	tx_val[1] = DUMMY_BYTE_VAL ;

	HAL_GPIO_WritePin(S117_CS_GPIO_PORT , S117_CS_GPIO_PIN_NUM , GPIO_PIN_RESET);
    HAL_SPI_TransmitReceive(SPI_handle , tx_val , rx_val , 2 , SPI_TIMEOUT_VAL  ) ;
    HAL_GPIO_WritePin(S117_CS_GPIO_PORT , S117_CS_GPIO_PIN_NUM  , GPIO_PIN_SET);

    return rx_val[1];


}


void S117_Init ( SPI_HandleTypeDef* hspiptr , S117_Config_S* config_s )
{
	if ( !hspiptr ||
		 (( config_s != 0 ) &&
		 ( config_s->Polarity > 1 ||
		 config_s->Power_State > 1 ||
		 config_s->Digits[0] > 15 ||
		 config_s->Digits[1] > 15 ||
		 config_s->Digits[2] > 15 ||
		 config_s->Digits[3] > 15 ||
		 config_s->Digits[4] > 15 ||
		 config_s->Digits[5] > 15 ||
		 config_s->Digits[6] > 15 ||
		 config_s->Digits[7] > 15  ) )) {
		return ;
	}
	/* Initialize CS */

	  GPIO_InitTypeDef GPIO_InitStruct = {0};
	  GPIO_InitStruct.Pin = S117_CS_GPIO_PIN_NUM ;
	  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	  GPIO_InitStruct.Pull = GPIO_PULLUP;
	  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
	  GPIO_InitStruct.Alternate = 0;

	  HAL_GPIO_Init( S117_CS_GPIO_PORT , &GPIO_InitStruct );
	  HAL_GPIO_WritePin(S117_CS_GPIO_PORT , S117_CS_GPIO_PIN_NUM , GPIO_PIN_SET);

	/* Get SPI Handle */
	SPI_handle = hspiptr ;

	/* Initialize Registers */
if ( !config_s ){
	S117_Write( S117_CNTR_ADDR  , 0x00 );
	S117_Write( S117_DIGEN_ADDR , 0x00 );
	S117_Write( S117_BADJ_ADDR  , 0x00 );
	S117_Write( S117_SEG0_ADDR  , 0x00 );
	S117_Write( S117_SEG1_ADDR  , 0x00 );
	S117_Write( S117_SEG2_ADDR  , 0x00 );
	S117_Write( S117_SEG3_ADDR  , 0x00 );
	S117_Write( S117_BLNK0_ADDR , 0x00 );
	S117_Write( S117_BLNK1_ADDR , 0x00 );
	S117_Write( S117_DP_ADDR    , 0x00 );
}
else {

	S117_Write( S117_CNTR_ADDR , ( config_s->Polarity << S117_CNTR_POL_Pos ) | ( config_s->Power_State << S117_CNTR_PWRDN_Pos ) );
	S117_Write( S117_DIGEN_ADDR , config_s->Digits_En );
	S117_Write( S117_BADJ_ADDR  , config_s->PWM );
	S117_Write( S117_SEG0_ADDR  , config_s->Digits[0] | (config_s->Digits[1] << 4 ) );
	S117_Write( S117_SEG1_ADDR  , config_s->Digits[2] | (config_s->Digits[3] << 4 ) );
	S117_Write( S117_SEG2_ADDR  , config_s->Digits[4] | (config_s->Digits[5] << 4 ) );
	S117_Write( S117_SEG3_ADDR  , config_s->Digits[6] | (config_s->Digits[7] << 4 ) );
	S117_Write( S117_BLNK0_ADDR , config_s->Total_P );
	S117_Write( S117_BLNK1_ADDR , config_s->Blank_P );
	S117_Write( S117_DP_ADDR    , config_s->DP );
}

}




void S117_EnableDigits( uint8_t Digit_Mask )
{

	if ( !SPI_handle )
	{
		return ;
	}
	S117_Write( S117_DIGEN_ADDR , Digit_Mask );

}


void S117_DP_Set ( uint8_t DP_Mask )
{
	if ( !SPI_handle )
	{
		return ;
	}
	S117_Write( S117_DP_ADDR , DP_Mask );


}


void S117_AdjustBrightness ( uint8_t PWM_val )
{

	if ( !SPI_handle )
	{
		return ;
	}
	S117_Write( S117_BADJ_ADDR , PWM_val );

}

void S117_BlankConfig( uint8_t total_p , uint8_t off_p )
{

	if ( !SPI_handle )
	{
		return ;
	}
	S117_Write( S117_BLNK0_ADDR , total_p );
	S117_Write( S117_BLNK1_ADDR , off_p );


}


void S117_StartBlank ( void )
{
	uint8_t temp ;

	if ( !SPI_handle )
	{
		return ;
	}

	temp = S117_Read( S117_CNTR_ADDR ) ;
	temp |= ( 1 << S117_CNTR_CLKMD_Pos );
	S117_Write ( S117_CNTR_ADDR , temp );


}

void S117_StopBlank ( void )
{
	uint8_t temp ;

	if ( !SPI_handle )
	{
		return ;
	}

	temp = S117_Read( S117_CNTR_ADDR ) ;
	temp &= ~( 1 << S117_CNTR_CLKMD_Pos );
	S117_Write ( S117_CNTR_ADDR , temp );


}

void S117_PowerDown ( void )
{

	uint8_t temp ;

	if ( !SPI_handle )
	{
		return ;
	}

	temp = S117_Read( S117_CNTR_ADDR ) ;
	temp |= ( 1 << S117_CNTR_PWRDN_Pos );
	S117_Write ( S117_CNTR_ADDR , temp );

}


void S117_PowerUp ( void )
{

	uint8_t temp ;

	if ( !SPI_handle )
	{
		return ;
	}

	temp = S117_Read( S117_CNTR_ADDR ) ;
	temp &= ~( 1 << S117_CNTR_PWRDN_Pos );
	S117_Write ( S117_CNTR_ADDR , temp );

}



void S117_StartTest ( void )
{
	uint8_t temp ;

	if ( !SPI_handle )
	{
		return ;
	}

	temp = S117_Read( S117_CNTR_ADDR ) ;
	temp |= ( 1 << S117_CNTR_TEST_Pos );
	S117_Write ( S117_CNTR_ADDR , temp );




}


void S117_StopTest ( void )
{
	uint8_t temp ;

	if ( !SPI_handle )
	{
		return ;
	}

	temp = S117_Read( S117_CNTR_ADDR ) ;
	temp &= ~( 1 << S117_CNTR_TEST_Pos );
	S117_Write ( S117_CNTR_ADDR , temp );




}






void S117_Write_Num ( uint32_t num )
{
	uint8_t temp ;
    uint8_t bcd[4];

	if ( !SPI_handle || num > ( 99999999UL ) )
	{
		return ;
	}


    for ( int i = 0 , k = 0  ; i < 8 ; i++ , num/= 10 )
		 {
			 if ( k%2 == 0 ) {
			 temp = num % 10 ;
			 }
			 else {
				  temp = temp | ( (num%10) <<  4 );
				  bcd[k/2] = temp ;
			 }
			 k++ ;
		 }

   for ( int i = 0 ; i < 4 ; i++ ) {
		 S117_Write(  S117_SEG0_ADDR + i , bcd[i] ) ;

		 }


}
