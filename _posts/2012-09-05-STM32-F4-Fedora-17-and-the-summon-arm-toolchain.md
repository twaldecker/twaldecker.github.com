---
layout: default
Using the summon-arm-toolchain on Fedora 17 and the STM32F4 Cortex-M4
---

Prerequisites:
This is just a list of packages I had to install on my system.

    sudo yum install libusb1 libusb1-devel automake libftdi libftdi-devel zlib-devel flex bison ncurses-devel libmpc-devel autoconf texinfo patch


Follow the guide at https://github.com/esden/summon-arm-toolchain.git

    git clone https://github.com/esden/summon-arm-toolchain.git
    cd summon-arm-toolchain
    ./summon-arm-toolchain
    # it failed downloading newlib-1.19 so I did the following as workaround:
    cd sources
    wget ftp://sources.redhat.com/pub/newlib/newlib-1.19.0.tar.gz
    cd ../stamps
    touch newlib-1.19.0.fetch
    cd ..
    ./summon-arm-toolchain
    # needs long time, fix missing requirements (mostly -devel packages)

    #now clone stlink
    cd ..
    git clone https://github.com/texane/stlink.git
    cd stlink
    ./autogen.sh
    ./configure
    make

    #environment setup
    export PATH=$PATH:~/sat/bin
    export PATH=$PATH:~/dev/stlink

    #now get sample programs from ST
    cd ~/dev/st-blinky
    wget http://www.st.com/internet/com/SOFTWARE_RESOURCES/SW_COMPONENT/FIRMWARE/stm32f4discovery_fw.zip
    unzip stm32f4discovery_fw.zip
    cd STM32F4-Discovery_FW_V1.1.0/Project/Peripheral_Examples/IO_Toggle
    
    #get Makefiles from jonathan thomson
    wget http://jthomson.towhee.org/stm32f4discovery_files/STM32F4DISCOVERY_Makefiles.zip
    unzip STM32F4DISCOVERY_Makefiles.zip
    cp STM32F4DISCOVERY_Makefiles/Makefile.IO_Toggle STM32F4-Discovery_FW_V1.1.0/Project/Peripheral_Examples/IO_Toggle
    cd $_
    mv Makefile.IO_Toggle Makefile
    make
    
    #flash the program to the STM32
    sudo ./st-flash write IO_Toggle.bin 0x8000000
