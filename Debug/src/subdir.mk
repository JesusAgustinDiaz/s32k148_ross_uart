################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/main.cpp \

CPP_SRCS_QUOTED += \
"../src/main.cpp" \

CPP_DEPS_QUOTED += \
"./src/main.d" \

OBJS_QUOTED += \
"./src/main.o" \

OBJS_OS_FORMAT += \
./src/main.o \

OBJS += \
./src/main.o \

CPP_DEPS += \
./src/main.d \


# Each subdirectory must supply rules for building sources it contributes
src/main.o: ../src/main.cpp
	@echo 'Building file: $<'
	@echo 'Executing target #5 $<'
	@echo 'Invoking: Standard S32DS C++ Compiler'
	arm-none-eabi-g++ "@src/main.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "src/main.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '


