################################################################################
# Automatically-generated file. Do not edit!
################################################################################

#Progress monitor hint: 8
first : all
-include ../makefile.init

# This file contains definitions of environment variables used in the makefiles and .args files if exist.
-include makefile.local

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include Project_Settings/Linker_Files/subdir.mk
-include Project_Settings/Startup_Code/subdir.mk
-include src/subdir.mk
-include src/ross_files/ros_lib/subdir.mk
-include src/ross_files/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
S32K148_ross_test.elf \

EXECUTABLES_QUOTED += \
"S32K148_ross_test.elf" \

EXECUTABLES_OS_FORMAT += \
S32K148_ross_test.elf \

SECONDARY_SIZE += \
S32K148_ross_test.siz \

SECONDARY_SIZE_QUOTED += \
"S32K148_ross_test.siz" \

SECONDARY_SIZE_OS_FORMAT += \
S32K148_ross_test.siz \


# All Target
all: warning-messages explicit-dependencies S32K148_ross_test.elf secondary-outputs

# Tool invocations
S32K148_ross_test.elf: $(OBJS) C:/Users/nxa11643/S32K1xx_TEC/S32K148_ross_test/Project_Settings/Linker_Files/S32K1xx_flash.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Executing target #9 $@'
	@echo 'Invoking: Standard S32DS C++ Linker'
	arm-none-eabi-g++ -o "S32K148_ross_test.elf" "@S32K148_ross_test.args"  $(USER_OBJS_QUOTED) $(LIBS_QUOTED)
	@echo 'Finished building target: $@'
	@echo ' '

S32K148_ross_test.siz: $(EXECUTABLES)
	@echo 'Executing target #10 $@'
	@echo 'Invoking: Standard S32DS Print Size'
	arm-none-eabi-size --format=berkeley $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) ./*/*/*/*.d ./*/*.d  $(CC_DEPS_QUOTED) $(CXX_DEPS_QUOTED) $(C_UPPER_DEPS_QUOTED) $(SECONDARY_SIZE_QUOTED) $(C++_DEPS_QUOTED) ./*/*/*.d  ./*/*/*.o ./*/*/*/*.o ./*/*.o  $(EXECUTABLES_QUOTED)
	-@echo ' '

secondary-outputs: $(SECONDARY_SIZE)

.PHONY: all clean dependents explicit-dependencies warning-messages
.SECONDARY:

-include ../makefile.targets

explicit-dependencies: 

warning-messages: 

