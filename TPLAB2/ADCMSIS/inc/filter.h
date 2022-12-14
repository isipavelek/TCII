/*
===============================================================================
 Name        : filter.h
 Author      : Israel Pavelek, Cesar Fuoco
 Version     : 1.0
 Copyright   : $(copyright)
 Description : main definition
===============================================================================
*/

#ifndef LOWPASS_H_
#define LOWPASS_H_


#define LOWPASS_TAP_NUM 49
#define BIQUAD1_TAP_NUM 5

#define SAMPLES_PER_BLOCK 128

extern int lowpass_taps[];
extern int biquad1_taps[];

#endif /* LOWPASS_H_ */
