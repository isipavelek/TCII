################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/dspcode/TransformFunctions/subdir.mk
-include src/dspcode/SupportFunctions/subdir.mk
-include src/dspcode/StatisticsFunctions/subdir.mk
-include src/dspcode/MatrixFunctions/subdir.mk
-include src/dspcode/FilteringFunctions/subdir.mk
-include src/dspcode/FastMathFunctions/subdir.mk
-include src/dspcode/ControllerFunctions/subdir.mk
-include src/dspcode/ComplexMathFunctions/subdir.mk
-include src/dspcode/CommonTables/subdir.mk
-include src/dspcode/BasicMathFunctions/subdir.mk
-include src/Common/Source/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := CMSIS_DSPLIB_CM4
BUILD_ARTIFACT_EXTENSION := a
BUILD_ARTIFACT_PREFIX := lib
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all:
	+@$(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: libCMSIS_DSPLIB_CM4.a

# Tool invocations
libCMSIS_DSPLIB_CM4.a: $(OBJS) $(USER_OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Archiver'
	arm-none-eabi-ar -r  "libCMSIS_DSPLIB_CM4.a" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(ARCHIVES)$(C_DEPS) libCMSIS_DSPLIB_CM4.a
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size libCMSIS_DSPLIB_CM4.a ;  cp -v libCMSIS_DSPLIB_CM4.a "C:\Users\ipave\Documents\LPCXpresso_8.2.2_650\workspaceCMSIS/CMSIS_DSPLIB_CM4/lib/";
	-@echo ' '

.PHONY: all clean dependents post-build

-include ../makefile.targets
