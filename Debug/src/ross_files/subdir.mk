################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../src/ross_files/s32k148_time.c" \
"../src/ross_files/s32k148_uart.c" \

C_SRCS += \
../src/ross_files/s32k148_time.c \
../src/ross_files/s32k148_uart.c \

C_DEPS_QUOTED += \
"./src/ross_files/s32k148_time.d" \
"./src/ross_files/s32k148_uart.d" \

OBJS_QUOTED += \
"./src/ross_files/s32k148_time.o" \
"./src/ross_files/s32k148_uart.o" \

C_DEPS += \
./src/ross_files/s32k148_time.d \
./src/ross_files/s32k148_uart.d \

OBJS_OS_FORMAT += \
./src/ross_files/s32k148_time.o \
./src/ross_files/s32k148_uart.o \

OBJS += \
./src/ross_files/s32k148_time.o \
./src/ross_files/s32k148_uart.o \


# Each subdirectory must supply rules for building sources it contributes
src/ross_files/s32k148_time.o: ../src/ross_files/s32k148_time.c
	@echo 'Building file: $<'
	@echo 'Executing target #7 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@src/ross_files/s32k148_time.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "src/ross_files/s32k148_time.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/ross_files/s32k148_uart.o: ../src/ross_files/s32k148_uart.c
	@echo 'Building file: $<'
	@echo 'Executing target #8 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@src/ross_files/s32k148_uart.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "src/ross_files/s32k148_uart.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '


