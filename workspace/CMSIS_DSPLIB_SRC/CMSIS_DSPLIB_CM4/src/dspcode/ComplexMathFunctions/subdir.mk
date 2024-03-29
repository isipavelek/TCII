################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/dspcode/ComplexMathFunctions/arm_cmplx_conj_f32.c \
../src/dspcode/ComplexMathFunctions/arm_cmplx_conj_q15.c \
../src/dspcode/ComplexMathFunctions/arm_cmplx_conj_q31.c \
../src/dspcode/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c \
../src/dspcode/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c \
../src/dspcode/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c \
../src/dspcode/ComplexMathFunctions/arm_cmplx_mag_f32.c \
../src/dspcode/ComplexMathFunctions/arm_cmplx_mag_q15.c \
../src/dspcode/ComplexMathFunctions/arm_cmplx_mag_q31.c \
../src/dspcode/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c \
../src/dspcode/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c \
../src/dspcode/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c \
../src/dspcode/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c \
../src/dspcode/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c \
../src/dspcode/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c \
../src/dspcode/ComplexMathFunctions/arm_cmplx_mult_real_f32.c \
../src/dspcode/ComplexMathFunctions/arm_cmplx_mult_real_q15.c \
../src/dspcode/ComplexMathFunctions/arm_cmplx_mult_real_q31.c 

C_DEPS += \
./src/dspcode/ComplexMathFunctions/arm_cmplx_conj_f32.d \
./src/dspcode/ComplexMathFunctions/arm_cmplx_conj_q15.d \
./src/dspcode/ComplexMathFunctions/arm_cmplx_conj_q31.d \
./src/dspcode/ComplexMathFunctions/arm_cmplx_dot_prod_f32.d \
./src/dspcode/ComplexMathFunctions/arm_cmplx_dot_prod_q15.d \
./src/dspcode/ComplexMathFunctions/arm_cmplx_dot_prod_q31.d \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_f32.d \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_q15.d \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_q31.d \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_squared_f32.d \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_squared_q15.d \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_squared_q31.d \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.d \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.d \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.d \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_real_f32.d \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_real_q15.d \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_real_q31.d 

OBJS += \
./src/dspcode/ComplexMathFunctions/arm_cmplx_conj_f32.o \
./src/dspcode/ComplexMathFunctions/arm_cmplx_conj_q15.o \
./src/dspcode/ComplexMathFunctions/arm_cmplx_conj_q31.o \
./src/dspcode/ComplexMathFunctions/arm_cmplx_dot_prod_f32.o \
./src/dspcode/ComplexMathFunctions/arm_cmplx_dot_prod_q15.o \
./src/dspcode/ComplexMathFunctions/arm_cmplx_dot_prod_q31.o \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_f32.o \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_q15.o \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_q31.o \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_squared_f32.o \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_squared_q15.o \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_squared_q31.o \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.o \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.o \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.o \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_real_f32.o \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_real_q15.o \
./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_real_q31.o 


# Each subdirectory must supply rules for building sources it contributes
src/dspcode/ComplexMathFunctions/%.o: ../src/dspcode/ComplexMathFunctions/%.c src/dspcode/ComplexMathFunctions/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DNDEBUG -D__CODE_RED -DARM_MATH_CM4 -D__FPU_PRESENT=1 -I../inc -I../inc_cmsis -O2 -g3 -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -fno-strict-aliasing -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-src-2f-dspcode-2f-ComplexMathFunctions

clean-src-2f-dspcode-2f-ComplexMathFunctions:
	-$(RM) ./src/dspcode/ComplexMathFunctions/arm_cmplx_conj_f32.d ./src/dspcode/ComplexMathFunctions/arm_cmplx_conj_f32.o ./src/dspcode/ComplexMathFunctions/arm_cmplx_conj_q15.d ./src/dspcode/ComplexMathFunctions/arm_cmplx_conj_q15.o ./src/dspcode/ComplexMathFunctions/arm_cmplx_conj_q31.d ./src/dspcode/ComplexMathFunctions/arm_cmplx_conj_q31.o ./src/dspcode/ComplexMathFunctions/arm_cmplx_dot_prod_f32.d ./src/dspcode/ComplexMathFunctions/arm_cmplx_dot_prod_f32.o ./src/dspcode/ComplexMathFunctions/arm_cmplx_dot_prod_q15.d ./src/dspcode/ComplexMathFunctions/arm_cmplx_dot_prod_q15.o ./src/dspcode/ComplexMathFunctions/arm_cmplx_dot_prod_q31.d ./src/dspcode/ComplexMathFunctions/arm_cmplx_dot_prod_q31.o ./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_f32.d ./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_f32.o ./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_q15.d ./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_q15.o ./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_q31.d ./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_q31.o ./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_squared_f32.d ./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_squared_f32.o ./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_squared_q15.d ./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_squared_q15.o ./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_squared_q31.d ./src/dspcode/ComplexMathFunctions/arm_cmplx_mag_squared_q31.o ./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.d ./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.o ./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.d ./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.o ./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.d ./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.o ./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_real_f32.d ./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_real_f32.o ./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_real_q15.d ./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_real_q15.o ./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_real_q31.d ./src/dspcode/ComplexMathFunctions/arm_cmplx_mult_real_q31.o

.PHONY: clean-src-2f-dspcode-2f-ComplexMathFunctions

