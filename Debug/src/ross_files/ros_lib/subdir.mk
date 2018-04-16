################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ross_files/ros_lib/duration.cpp \
../src/ross_files/ros_lib/time.cpp 

CPP_SRCS_QUOTED += \
"../src/ross_files/ros_lib/duration.cpp" \
"../src/ross_files/ros_lib/time.cpp" 

CPP_DEPS_QUOTED += \
"./src/ross_files/ros_lib/duration.d" \
"./src/ross_files/ros_lib/time.d" 

OBJS_QUOTED += \
"./src/ross_files/ros_lib/duration.o" \
"./src/ross_files/ros_lib/time.o" 

OBJS_OS_FORMAT += \
./src/ross_files/ros_lib/duration.o \
./src/ross_files/ros_lib/time.o 

OBJS += \
./src/ross_files/ros_lib/duration.o \
./src/ross_files/ros_lib/time.o 

CPP_DEPS += \
./src/ross_files/ros_lib/duration.d \
./src/ross_files/ros_lib/time.d 


# Each subdirectory must supply rules for building sources it contributes
src/ross_files/ros_lib/duration.o: ../src/ross_files/ros_lib/duration.cpp
	@echo 'Building file: $<'
	@echo 'Executing target #8 $<'
	@echo 'Invoking: Standard S32DS C++ Compiler'
	arm-none-eabi-g++ "@src/ross_files/ros_lib/duration.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "src/ross_files/ros_lib/duration.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/ross_files/ros_lib/time.o: ../src/ross_files/ros_lib/time.cpp
	@echo 'Building file: $<'
	@echo 'Executing target #9 $<'
	@echo 'Invoking: Standard S32DS C++ Compiler'
	arm-none-eabi-g++ "@src/ross_files/ros_lib/time.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "src/ross_files/ros_lib/time.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '


