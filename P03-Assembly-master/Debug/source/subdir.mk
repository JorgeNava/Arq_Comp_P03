################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../source/codigoDoWhile.s \
../source/codigoFor.s \
../source/codigoIFs.s \
../source/codigoWhile.s 

C_SRCS += \
../source/Practica3.c \
../source/mtb.c \
../source/semihost_hardfault.c 

OBJS += \
./source/Practica3.o \
./source/codigoDoWhile.o \
./source/codigoFor.o \
./source/codigoIFs.o \
./source/codigoWhile.o \
./source/mtb.o \
./source/semihost_hardfault.o 

C_DEPS += \
./source/Practica3.d \
./source/mtb.d \
./source/semihost_hardfault.d 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_MKL27Z64VLH4 -DCPU_MKL27Z64VLH4_cm0plus -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -DSERIAL_PORT_TYPE_UART=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica3\board" -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica3\source" -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica3\drivers" -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica3\component\serial_manager" -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica3\component\uart" -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica3\utilities" -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica3\component\lists" -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica3\CMSIS" -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica3\device" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/%.o: ../source/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU Assembler'
	arm-none-eabi-gcc -c -x assembler-with-cpp -D__REDLIB__ -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica3\board" -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica3\source" -g3 -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -specs=redlib.specs -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


