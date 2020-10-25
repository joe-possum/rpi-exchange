#! /bin/bash

sudo apt install autoconf dh-autoreconf libasound2-dev libbluetooth-dev libdbus-1-dev libglib2.0-dev libsbc-dev git
mkdir src && cd src
git clone https://github.com/mstorsjo/fdk-aac.git
git clone https://github.com/Arkq/bluez-alsa.git

cd ~/src/fdk-aac && autoreconf --install && mkdir build && cd build && ../configure && make && sudo make install
cd ~/src/bluez-alsa && autoreconf --install && mkdir build && cd build && ../configure --enable-aac --enable-ofono --enable-debug && make && sudo make install
