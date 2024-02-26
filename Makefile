
# SERIAL_PORT ?= /dev/cu.usbserial-A9O56T4Y  # FTDI
SERIAL_PORT ?= /dev/cu.usbserial-0001      # CP2102

SERIAL_BAUD ?= 115200 # or 57200

MCU ?= atmega328p

HEX_FILE ?= FPVCombatTarget-HW25-V1.1.3.hex

flash:
	avrdude -v -p${MCU} -carduino -P $(SERIAL_PORT) -b$(SERIAL_BAUD) -D -Uflash:w:$(HEX_FILE):i
