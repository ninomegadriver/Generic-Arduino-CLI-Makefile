# Generic Makefile to build an Arduino Sketch under the same directory
# Antonio F. Torinsieiello
# nino@nino.com.br

# Path to your "arduino-cli"
# You can either use it from your Arduino IDE's installation
# Or you can download one from here:
# https://github.com/arduino/arduino-cli/releases
CLI?=/home/nino/bin/arduino-cli

# Setup your serial port
PORT?=/dev/ttyACM0

# Setup your board FQBN
# If you don't know what's your FBQN, try "make list" to list all installed boards
BOARD?=esp32:esp32:esp32
	
# Setup your sketch name
# The command bellow will default to the ".ino" file in the same
# directory of this Makefile
SKETCH=`find ./ -name "*.ino"`

# Print a screen width wide separator
hr=bash -c 'COLS=`tput cols`;x=1;dots=""; while [ $$x -le $$COLS ]; do dots="$$dots""-"; x=$$(( $$x + 1 )); done; dots=$${dots:0:$$COLS}; echo $$dots;'

all: upload

compile:
	@${hr}
	@echo Building...
	@${hr}
	@${CLI} -v compile --fqbn $(BOARD) $(SKETCH)

nocache:
	@${hr}
	@echo Clean and build (no cache)
	@${hr}
	@${CLI} -v compile --clean --upload -p $(PORT) --fqbn $(BOARD) $(SKETCH)

upload:
	@${hr}
	@echo Building and uploading aftwards
	@${hr}
	@${CLI} -v compile --upload -p $(PORT) --fqbn $(BOARD) $(SKETCH)

update:
	@${hr}
	@echo Updating arduino platform...
	@${hr}
	@${CLI} update
	@${CLI} upgrade

list:
	@${hr}
	@echo Listing all installed board\'s FBQN
	@${hr}
	@${CLI} board listall
