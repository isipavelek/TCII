/*
===============================================================================
 Name        : filter.c
 Authors     : Israel Pavelek, Cesar Fuoco
 Version     : 1.1
 Copyright   : $(copyright)
 Description : main definition
===============================================================================
*/

#include "filter.h"
#include <stdint.h>
#include "arm_math.h"

extern uint8_t estado;

arm_fir_instance_q31 SLP;
arm_biquad_casd_df1_inst_q31  SBIQUAD1;

q31_t lowpass_state[LOWPASS_TAP_NUM+SAMPLES_PER_BLOCK-1];
q31_t biquad1_state[BIQUAD1_TAP_NUM+SAMPLES_PER_BLOCK-1];

//Ping Pong Buffers
q31_t InputA[SAMPLES_PER_BLOCK];
q31_t InputB[SAMPLES_PER_BLOCK];
q31_t OutputA[SAMPLES_PER_BLOCK];
q31_t OutputB[SAMPLES_PER_BLOCK];

int lowpass_taps[LOWPASS_TAP_NUM] = {
//		27007681,-47033934,-32742422,-26225556,-19252544,-8941305,4448580,18621127,30205138,35692383,32386443,19468332,-1659469,-27065861,-50977424,-66605742,-67722637,-49665605,-10922460,46367109,116213266,190241875,258096318,309982673,338102184,338102184,309982673,258096318,190241875,116213266,46367109,-10922460,-49665605,-67722637,-66605742,-50977424,-27065861,-1659469,19468332,32386443,35692383,30205138,18621127,4448580,-8941305,-19252544,-26225556,-32742422,-47033934,27007681
};

int biquad1_taps[BIQUAD1_TAP_NUM] = {
		//439862891,879725782,439862891,-1141453895,753421832//Lyons LP

};


void filter_init(void){

	arm_fir_init_q31(&SLP,LOWPASS_TAP_NUM,lowpass_taps,lowpass_state,SAMPLES_PER_BLOCK);
	arm_biquad_cascade_df1_init_q31	(&SBIQUAD1,1,biquad1_taps,biquad1_state,0);

}

void filter_talk_through (void){

	for(uint16_t i=0;i<SAMPLES_PER_BLOCK;i++) {
		if(estado)OutputA[i]=InputA[i];
		else OutputB[i]=InputB[i];
	}

}
void filter_lp (void){

}

void filter_biquad (void){


}
