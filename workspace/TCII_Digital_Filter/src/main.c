/*
===============================================================================
 Name        : main.c
 Author      : Israel Pavelek, Cesar Fuoco
 Version     : 1.1
 Copyright   : $(copyright)
 Description : main definition
===============================================================================
*/

#include <filter.h>
#include "adc.h"
#include "dac.h"
#include "arm_math.h"

typedef enum{
	TALKTHROUGH,
	FIRLP,
	BIQUAD1,

}filter_type_t;

extern uint8_t procesar;

filter_type_t filter_type = BIQUAD1;  //Función que ejecuta


int main(void) {

    SystemCoreClockUpdate();
    Board_Init();
    Board_LED_Set(0, true);

    //Inicializa el/los filtros

    filter_init();

	//Inicializa ADC y DAC
    adcInit();
	dacInit();

	for(;;){
		if(procesar){
			procesar=false;
			switch (filter_type){
				case TALKTHROUGH:
								filter_talk_through();
								break;
				case FIRLP:		// arm_biquad_cascade_df1_q31

								break;
				case BIQUAD1:	// arm_fir_q31

								break;
			}
		}
	}
}
