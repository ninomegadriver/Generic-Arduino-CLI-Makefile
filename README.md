# Generic-Arduino-CLI-Makefile
A generic [Makefile](https://raw.githubusercontent.com/ninomegadriver/Generic-Arduino-CLI-Makefile/main/Makefile) for building Arduino sketches using the command line tool [arduino-cli](https://github.com/arduino/arduino-cli).
  
  - Download the [Makefile](https://raw.githubusercontent.com/ninomegadriver/Generic-Arduino-CLI-Makefile/main/Makefile) and place it in your sketch directory.
  - Edit and configure it according to your build environment.
  

| command      | effect |
|--------------|--------|
| make         | "default", compile and upload the sketch |
| make upload  | same effect as above, compile and upload the sketch |
| make compile | just compile the sketch without uploading it|
| make nocache | discard cache, do a clean compile and upload it |
| make list    | list all installed board's FQBN |
| make upgrade | update and upgrade the cores and libraries |
  
-------------------
  Nino MegaDriver  
  nino@nino.com.br  
  megadriver.com.br  
  
