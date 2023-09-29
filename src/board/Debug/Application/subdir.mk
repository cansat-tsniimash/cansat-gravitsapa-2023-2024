################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/app_main.c \
../Application/bme280.c \
../Application/lsm6ds3_reg.c 

OBJS += \
./Application/app_main.o \
./Application/bme280.o \
./Application/lsm6ds3_reg.o 

C_DEPS += \
./Application/app_main.d \
./Application/bme280.d \
./Application/lsm6ds3_reg.d 


# Each subdirectory must supply rules for building sources it contributes
Application/%.o Application/%.su Application/%.cyclo: ../Application/%.c Application/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Application

clean-Application:
	-$(RM) ./Application/app_main.cyclo ./Application/app_main.d ./Application/app_main.o ./Application/app_main.su ./Application/bme280.cyclo ./Application/bme280.d ./Application/bme280.o ./Application/bme280.su ./Application/lsm6ds3_reg.cyclo ./Application/lsm6ds3_reg.d ./Application/lsm6ds3_reg.o ./Application/lsm6ds3_reg.su

.PHONY: clean-Application

