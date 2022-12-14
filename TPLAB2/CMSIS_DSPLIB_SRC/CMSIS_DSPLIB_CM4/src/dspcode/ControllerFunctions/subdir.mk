################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/dspcode/ControllerFunctions/arm_pid_init_f32.c \
../src/dspcode/ControllerFunctions/arm_pid_init_q15.c \
../src/dspcode/ControllerFunctions/arm_pid_init_q31.c \
../src/dspcode/ControllerFunctions/arm_pid_reset_f32.c \
../src/dspcode/ControllerFunctions/arm_pid_reset_q15.c \
../src/dspcode/ControllerFunctions/arm_pid_reset_q31.c \
../src/dspcode/ControllerFunctions/arm_sin_cos_f32.c \
../src/dspcode/ControllerFunctions/arm_sin_cos_q31.c 

OBJS += \
./src/dspcode/ControllerFunctions/arm_pid_init_f32.o \
./src/dspcode/ControllerFunctions/arm_pid_init_q15.o \
./src/dspcode/ControllerFunctions/arm_pid_init_q31.o \
./src/dspcode/ControllerFunctions/arm_pid_reset_f32.o \
./src/dspcode/ControllerFunctions/arm_pid_reset_q15.o \
./src/dspcode/ControllerFunctions/arm_pid_reset_q31.o \
./src/dspcode/ControllerFunctions/arm_sin_cos_f32.o \
./src/dspcode/ControllerFunctions/arm_sin_cos_q31.o 

C_DEPS += \
./src/dspcode/ControllerFunctions/arm_pid_init_f32.d \
./src/dspcode/ControllerFunctions/arm_pid_init_q15.d \
./src/dspcode/ControllerFunctions/arm_pid_init_q31.d \
./src/dspcode/ControllerFunctions/arm_pid_reset_f32.d \
./src/dspcode/ControllerFunctions/arm_pid_reset_q15.d \
./src/dspcode/ControllerFunctions/arm_pid_reset_q31.d \
./src/dspcode/ControllerFunctions/arm_sin_cos_f32.d \
./src/dspcode/ControllerFunctions/arm_sin_cos_q31.d 


# Each subdirectory must supply rules for building sources it contributes
src/dspcode/ControllerFunctions/%.o: ../src/dspcode/ControllerFunctions/%.c src/dspcode/ControllerFunctions/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DNDEBUG -D__CODE_RED -DARM_MATH_CM4 -D__FPU_PRESENT=1 -I../inc -I../inc_cmsis -O2 -g3 -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -fno-strict-aliasing -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


