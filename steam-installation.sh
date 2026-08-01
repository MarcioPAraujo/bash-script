#!/bin/bash

KEY_DIR="/usr/share/keyrings"

cd $KEY_DIR

sudo wget https://repo.steampowered.com/steam/archive/stable/steam.gpg

# pwd

sudo tee /etc/apt/sources.list.d/steam-stable.list << 'EOF'
deb [arch=amd64,i386 signed-by=/usr/share/keyrings/steam.gpg] https://repo.steampowered.com/steam/ stable steam
deb-src [arch=amd64,i386 signed-by=/usr/share/keyrings/steam.gpg] https://repo.steampowered.com/steam/ stable steam
EOF

sudo dpkg --add-architecture i386

sudo apt-get update

sudo apt-get install \
	libgl1-mesa-dri:amd64 \
	libgl1-mesa-dri:i386 \
	libglx-mesa0:amd64 \
	libglx-mesa0:i386 \
	steam-launcher

