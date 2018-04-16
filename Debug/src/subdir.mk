################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/main.cpp 

C_SRCS_QUOTED += \
"../src/clocks_and_modes.c" 

CPP_SRCS_QUOTED += \
"../src/main.cpp" 

C_SRCS += \
../src/clocks_and_modes.c 

CPP_DEPS_QUOTED += \
"./src/main.d" 

C_DEPS_QUOTED += \
"./src/clocks_and_modes.d" 

OBJS_QUOTED += \
"./src/clocks_and_modes.o" \
"./src/main.o" 

C_DEPS += \
./src/clocks_and_modes.d 

OBJS_OS_FORMAT += \
./src/clocks_and_modes.o \
./src/main.o 

OBJS += \
./src/clocks_and_modes.o \
./src/main.o 

CPP_DEPS += \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/clocks_and_modes.o: ../src/clocks_and_modes.c
	@echo 'Building file: $<'
	@echo 'Executing target #4 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@src/clocks_and_modes.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "src/clocks_and_modes.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/main.o: ../src/main.cpp
	@echo 'Building file: $<'
	@echo 'Executing target #5 $<'
	@echo 'Invoking: Standard S32DS C++ Compiler'
	arm-none-eabi-g++ "@src/main.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "src/main.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '


