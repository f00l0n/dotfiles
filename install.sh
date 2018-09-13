#!/bin/bash

#install i3wm, qutebrowser, skype and dependencies
sudo dnf install -y qutebrowser i3 vim zsh ranger w3m feh ImageMagick cava libxcb-devel xcb-util-keysyms-devel xcb-util-devel xcb-util-wm-devel xcb-util-xrm-devel yajl-devel libXrandr-devel startup-notification-devel libev-devel xcb-util-cursor-devel libXinerama-devel libxkbcommon-devel libxkbcommon-x11-devel pcre-devel pango-devel git gcc automake i3status i3lock
sudo dnf -y install https://repo.skype.com/latest/skypeforlinux-64-alpha.rpm

#installing compton and rofi
sudo dnf copr enable yaroslav/i3desktop
sudo dnf install -y compton rofi

#install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#install i3-gaps
git clone https://www.github.com/Airblader/i3 i3-gaps && cd i3-gaps
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
