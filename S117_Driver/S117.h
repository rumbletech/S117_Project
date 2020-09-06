/*
 * S117.h
 *
 *  Created on: Sep 4, 2020
 *      Author: Garmoosh
 */



/* This Header File Contains Register Addresses and Prototypes for functions that handle interfacing
 * with the HDL Design , on the FPGA
 */



#ifndef S117_DRIVER_S117_H_
#define S117_DRIVER_S117_H_

/* Include STM32 Hal Drivers */
#include "stm32f4xx_hal.h"
#include <stdint.h>
#include <stdlib.h>

/* SPI Parameters */

#define S117_SPI_INSTANCE SPI4
#define S117_SPI_BAUD_DIVIDER SPI_BAUDRATEPRESCALER_256
#define S117_CS_GPIO_PORT    GPIOG
#define S117_CS_GPIO_PIN_NUM GPIO_PIN_2
#define SPI_TIMEOUT_VAL 0XFF
#define DUMMY_BYTE_VAL 0XFF



/* Register Addresses */

#define S117_CNTR_ADDR  0x01
#define S117_DIGEN_ADDR 0x02
#define S117_BADJ_ADDR  0x03
#define S117_SEG0_ADDR  0x04
#define S117_SEG1_ADDR  0x05
#define S117_SEG2_ADDR  0x06
#define S117_SEG3_ADDR  0x07
#define S117_BLNK0_ADDR 0x08
#define S117_BLNK1_ADDR 0x09
#define S117_DP_ADDR    0x0A

/* Write and Read Cmds */

#define WRITE_CMD_MSK  (0X80)
#define READ_CMD_MSK   (0X00)

/* Bit Definitions for Register CNTR */


#define S117_CNTR_PWRDN_Pos  0x07
#define S117_CNTR_PWRDN_Msk ( 1 << S117_CNTR_PWRDN_Pos )
#define S117_CNTR_TEST_Pos   0x06
#define S117_CNTR_TEST_Msk ( 1 << S117_CNTR_TEST_Pos )
#define S117_CNTR_CLKMD_Pos  0x05
#define S117_CNTR_CLKMD_Msk ( 1 << S117_CNTR_CLKMD_Pos )
#define S117_CNTR_POL_Pos    0x04
#define S117_CNTR_POL_Msk ( 1 << S117_CNTR_POL_Pos )
#define S117_CNTR_NC3_Pos    0x03
#define S117_CNTR_NC3_Msk ( 1 << S117_CNTR_NC3_Pos )
#define S117_CNTR_NC2_Pos    0x02
#define S117_CNTR_NC2_Msk ( 1 << S117_CNTR_NC2_Pos )
#define S117_CNTR_NC1_Pos    0x01
#define S117_CNTR_NC1_Msk ( 1 << S117_CNTR_NC1_Pos )
#define S117_CNTR_NC0_Pos    0x00
#define S117_CNTR_NC0_Msk ( 1 << S117_CNTR_NC0_Pos )

/* Bit Definitions for Register DIGEN */

#define S117_DIGEN_DIG8EN_Pos  0x07
#define S117_DIGEN_DIG8EN_Msk ( 1 << S117_DIGEN_DIG8EN_Pos )
#define S117_DIGEN_DIG7EN_Pos  0x06
#define S117_DIGEN_DIG7EN_Msk ( 1 << S117_DIGEN_DIG7EN_Pos )
#define S117_DIGEN_DIG6EN_Pos  0x05
#define S117_DIGEN_DIG6EN_Msk ( 1 << S117_DIGEN_DIG6EN_Pos )
#define S117_DIGEN_DIG5EN_Pos  0x04
#define S117_DIGEN_DIG5EN_Msk ( 1 << S117_DIGEN_DIG5EN_Pos )
#define S117_DIGEN_DIG4EN_Pos  0x03
#define S117_DIGEN_DIG4EN_Msk ( 1 << S117_DIGEN_DIG4EN_Pos )
#define S117_DIGEN_DIG3EN_Pos  0x02
#define S117_DIGEN_DIG3EN_Msk ( 1 << S117_DIGEN_DIG3EN_Pos )
#define S117_DIGEN_DIG2EN_Pos  0x01
#define S117_DIGEN_DIG2EN_Msk ( 1 << S117_DIGEN_DIG2EN_Pos )
#define S117_DIGEN_DIG1EN_Pos  0x00
#define S117_DIGEN_DIG1EN_Msk ( 1 << S117_DIGEN_DIG1EN_Pos )


/* Bit Definitions for BADJ Registers */


#define S117_BADJ_PWDMD7_Pos  0x07
#define S117_BADJ_PWDMD7_Msk  ( 1 << S117_BADJ_PWDMD7_Pos )
#define S117_BADJ_PWDMD6_Pos  0x06
#define S117_BADJ_PWDMD6_Msk  ( 1 << S117_BADJ_PWDMD6_Pos )
#define S117_BADJ_PWDMD5_Pos  0x05
#define S117_BADJ_PWDMD5_Msk  ( 1 << S117_BADJ_PWDMD5_Pos )
#define S117_BADJ_PWDMD4_Pos  0x04
#define S117_BADJ_PWDMD4_Msk  ( 1 << S117_BADJ_PWDMD4_Pos )
#define S117_BADJ_PWDMD3_Pos  0x03
#define S117_BADJ_PWDMD3_Msk  ( 1 << S117_BADJ_PWDMD3_Pos )
#define S117_BADJ_PWDMD2_Pos  0x02
#define S117_BADJ_PWDMD2_Msk  ( 1 << S117_BADJ_PWDMD2_Pos )
#define S117_BADJ_PWDMD1_Pos  0x01
#define S117_BADJ_PWDMD1_Msk  ( 1 << S117_BADJ_PWDMD1_Pos )
#define S117_BADJ_PWDMD0_Pos  0x00
#define S117_BADJ_PWDMD0_Msk  ( 1 << S117_BADJ_PWDMD0_Pos )


/* Bit Definitions for SEG0 Register */

#define S117_SEG0_DIG2_3_Pos  0x07
#define S117_SEG0_DIG2_3_Msk  ( 1 << S117_SEG0_DIG2_3_Pos )
#define S117_SEG0_DIG2_2_Pos  0x06
#define S117_SEG0_DIG2_2_Msk  ( 1 << S117_SEG0_DIG2_2_Pos )
#define S117_SEG0_DIG2_1_Pos  0x05
#define S117_SEG0_DIG2_1_Msk  ( 1 << S117_SEG0_DIG2_1_Pos )
#define S117_SEG0_DIG2_0_Pos  0x04
#define S117_SEG0_DIG2_0_Msk  ( 1 << S117_SEG0_DIG2_0_Pos )
#define S117_SEG0_DIG1_3_Pos  0x03
#define S117_SEG0_DIG1_3_Msk  ( 1 << S117_SEG0_DIG1_3_Pos )
#define S117_SEG0_DIG1_2_Pos  0x02
#define S117_SEG0_DIG1_2_Msk  ( 1 << S117_SEG0_DIG1_2_Pos )
#define S117_SEG0_DIG1_1_Pos  0x01
#define S117_SEG0_DIG1_1_Msk  ( 1 << S117_SEG0_DIG1_1_Pos )
#define S117_SEG0_DIG1_0_Pos  0x00
#define S117_SEG0_DIG1_0_Msk  ( 1 << S117_SEG0_DIG1_0_Pos )


/* Bit Definitions for SEG0 Register */

#define S117_SEG1_DIG4_3_Pos  0x07
#define S117_SEG1_DIG4_3_Msk  ( 1 << S117_SEG1_DIG4_3_Pos )
#define S117_SEG1_DIG4_2_Pos  0x06
#define S117_SEG1_DIG4_2_Msk  ( 1 << S117_SEG1_DIG4_2_Pos )
#define S117_SEG1_DIG4_1_Pos  0x05
#define S117_SEG1_DIG4_1_Msk  ( 1 << S117_SEG1_DIG4_1_Pos )
#define S117_SEG1_DIG4_0_Pos  0x04
#define S117_SEG1_DIG4_0_Msk  ( 1 << S117_SEG1_DIG4_0_Pos )
#define S117_SEG1_DIG3_3_Pos  0x03
#define S117_SEG1_DIG3_3_Msk  ( 1 << S117_SEG1_DIG3_3_Pos )
#define S117_SEG1_DIG3_2_Pos  0x02
#define S117_SEG1_DIG3_2_Msk  ( 1 << S117_SEG1_DIG3_2_Pos )
#define S117_SEG1_DIG3_1_Pos  0x01
#define S117_SEG1_DIG3_1_Msk  ( 1 << S117_SEG1_DIG3_1_Pos )
#define S117_SEG1_DIG3_0_Pos  0x00
#define S117_SEG1_DIG3_0_Msk  ( 1 << S117_SEG1_DIG3_0_Pos )



/* Bit Definitions for SEG2 Register */

#define S117_SEG2_DIG6_3_Pos  0x07
#define S117_SEG2_DIG6_3_Msk  ( 1 << S117_SEG2_DIG6_3_Pos )
#define S117_SEG2_DIG6_2_Pos  0x06
#define S117_SEG2_DIG6_2_Msk  ( 1 << S117_SEG2_DIG6_2_Pos )
#define S117_SEG2_DIG6_1_Pos  0x05
#define S117_SEG2_DIG6_1_Msk  ( 1 << S117_SEG2_DIG6_1_Pos )
#define S117_SEG2_DIG6_0_Pos  0x04
#define S117_SEG2_DIG6_0_Msk  ( 1 << S117_SEG2_DIG6_0_Pos )
#define S117_SEG2_DIG5_3_Pos  0x03
#define S117_SEG2_DIG5_3_Msk  ( 1 << S117_SEG2_DIG5_3_Pos )
#define S117_SEG2_DIG5_2_Pos  0x02
#define S117_SEG2_DIG5_2_Msk  ( 1 << S117_SEG2_DIG5_2_Pos )
#define S117_SEG2_DIG5_1_Pos  0x01
#define S117_SEG2_DIG5_1_Msk  ( 1 << S117_SEG2_DIG5_1_Pos )
#define S117_SEG2_DIG5_0_Pos  0x00
#define S117_SEG2_DIG5_0_Msk  ( 1 << S117_SEG2_DIG5_0_Pos )



/* Bit Definitions for SEG3 Register */

#define S117_SEG3_DIG8_3_Pos  0x07
#define S117_SEG3_DIG8_3_Msk  ( 1 << S117_SEG3_DIG8_3_Pos )
#define S117_SEG3_DIG8_2_Pos  0x06
#define S117_SEG3_DIG8_2_Msk  ( 1 << S117_SEG3_DIG8_2_Pos )
#define S117_SEG3_DIG8_1_Pos  0x05
#define S117_SEG3_DIG8_1_Msk  ( 1 << S117_SEG3_DIG8_1_Pos )
#define S117_SEG3_DIG8_0_Pos  0x04
#define S117_SEG3_DIG8_0_Msk  ( 1 << S117_SEG3_DIG8_0_Pos )
#define S117_SEG3_DIG7_3_Pos  0x03
#define S117_SEG3_DIG7_3_Msk  ( 1 << S117_SEG3_DIG7_3_Pos )
#define S117_SEG3_DIG7_2_Pos  0x02
#define S117_SEG3_DIG7_2_Msk  ( 1 << S117_SEG3_DIG7_2_Pos )
#define S117_SEG3_DIG7_1_Pos  0x01
#define S117_SEG3_DIG7_1_Msk  ( 1 << S117_SEG3_DIG7_1_Pos )
#define S117_SEG3_DIG7_0_Pos  0x00
#define S117_SEG3_DIG7_0_Msk  ( 1 << S117_SEG3_DIG7_0_Pos )



/* Bit Definitions for BLNK0 Register */



#define S117_BLNK0_BP7_Pos  0x07
#define S117_BLNK0_BP7_Msk  ( 1 << S117_BLNK0_BP7_Pos )
#define S117_BLNK0_BP6_Pos  0x06
#define S117_BLNK0_BP6_Msk  ( 1 << S117_BLNK0_BP6_Pos )
#define S117_BLNK0_BP5_Pos  0x05
#define S117_BLNK0_BP5_Msk  ( 1 << S117_BLNK0_BP5_Pos )
#define S117_BLNK0_BP4_Pos  0x04
#define S117_BLNK0_BP4_Msk  ( 1 << S117_BLNK0_BP4_Pos )
#define S117_BLNK0_BP3_Pos  0x03
#define S117_BLNK0_BP3_Msk  ( 1 << S117_BLNK0_BP3_Pos )
#define S117_BLNK0_BP2_Pos  0x02
#define S117_BLNK0_BP2_Msk  ( 1 << S117_BLNK0_BP2_Pos )
#define S117_BLNK0_BP1_Pos  0x01
#define S117_BLNK0_BP1_Msk  ( 1 << S117_BLNK0_BP1_Pos )
#define S117_BLNK0_BP0_Pos  0x00
#define S117_BLNK0_BP0_Msk  ( 1 << S117_BLNK0_BP0_Pos )


/* Bit Definitions for BLNK1 Register */



#define S117_BLNK1_BP7_Pos  0x07
#define S117_BLNK1_BP7_Msk  ( 1 << S117_BLNK1_BP7_Pos )
#define S117_BLNK1_BP6_Pos  0x06
#define S117_BLNK1_BP6_Msk  ( 1 << S117_BLNK1_BP6_Pos )
#define S117_BLNK1_BP5_Pos  0x05
#define S117_BLNK1_BP5_Msk  ( 1 << S117_BLNK1_BP5_Pos )
#define S117_BLNK1_BP4_Pos  0x04
#define S117_BLNK1_BP4_Msk  ( 1 << S117_BLNK1_BP4_Pos )
#define S117_BLNK1_BP3_Pos  0x03
#define S117_BLNK1_BP3_Msk  ( 1 << S117_BLNK1_BP3_Pos )
#define S117_BLNK1_BP2_Pos  0x02
#define S117_BLNK1_BP2_Msk  ( 1 << S117_BLNK1_BP2_Pos )
#define S117_BLNK1_BP1_Pos  0x01
#define S117_BLNK1_BP1_Msk  ( 1 << S117_BLNK1_BP1_Pos )
#define S117_BLNK1_BP0_Pos  0x00
#define S117_BLNK1_BP0_Msk  ( 1 << S117_BLNK1_BP0_Pos )

/* Bit Definitions for DP Register */


#define S117_DP_DP7_Pos  0x07
#define S117_DP_DP7_Msk  ( 1 << S117_DP_DP7_Pos )
#define S117_DP_DP6_Pos  0x06
#define S117_DP_DP6_Msk  ( 1 << S117_DP_DP6_Pos )
#define S117_DP_DP5_Pos  0x05
#define S117_DP_DP5_Msk  ( 1 << S117_DP_DP5_Pos )
#define S117_DP_DP4_Pos  0x04
#define S117_DP_DP4_Msk  ( 1 << S117_DP_DP4_Pos )
#define S117_DP_DP3_Pos  0x03
#define S117_DP_DP3_Msk  ( 1 << S117_DP_DP3_Pos )
#define S117_DP_DP2_Pos  0x02
#define S117_DP_DP2_Msk  ( 1 << S117_DP_DP2_Pos )
#define S117_DP_DP1_Pos  0x01
#define S117_DP_DP1_Msk  ( 1 << S117_DP_DP1_Pos )
#define S117_DP_DP0_Pos  0x00
#define S117_DP_DP0_Msk  ( 1 << S117_DP_DP0_Pos )


/* Some Defines */

/* Used for Digit Enable Function ,
 *  you can OR multiple of these defines to enable the corresponding digits
 *  you can OR multiple of these defines to enable the decimal points of corresponding digits */

#define DIGIT_0 ( 1 << 0 )
#define DIGIT_1 ( 1 << 1 )
#define DIGIT_2 ( 1 << 2 )
#define DIGIT_3 ( 1 << 3 )
#define DIGIT_4 ( 1 << 4 )
#define DIGIT_5 ( 1 << 5 )
#define DIGIT_6 ( 1 << 6 )
#define DIGIT_7 ( 1 << 7 )


#define POWER_ON 0
#define POWER_OFF 1
#define POSITIVE_POLARITY 0
#define NEGATIVE_POLARITY 1


typedef struct {

	uint8_t Power_State ;
	uint8_t Polarity ;
	uint8_t Digits_En ;
	uint8_t PWM ;
	uint8_t Total_P ;
	uint8_t Blank_P ;
	uint8_t Digits[8];
	uint8_t DP ;


} S117_Config_S  , *S117_Config_SP ;

/* Protos */

void S117_Init ( SPI_HandleTypeDef* hspiptr , S117_Config_S* config_s );
void S117_EnableDigits( uint8_t Digit_Mask );
void S117_DP_Set ( uint8_t DP_Mask );
void S117_AdjustBrightness ( uint8_t PWM_val );
void S117_BlankConfig( uint8_t total_p , uint8_t off_p );
void S117_StartBlank ( void );
void S117_StopBlank ( void );
void S117_PowerDown ( void );
void S117_PowerUp ( void );
void S117_StartTest ( void );
void S117_StopTest ( void );
void S117_Write_Num ( uint32_t num );



#endif /* S117_DRIVER_S117_H_ */
