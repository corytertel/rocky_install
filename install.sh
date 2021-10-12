#!/bin/sh
# Rocky Linux Post-Installation Script

sudo su

# Update system
dnf update

# Install essentials
# dnf install vim 
# dnf install wget
# dnf install curl
# dnf install firefox
dnf install git
# dnf install NetworkManager
# dnf install networkmanagerapplet # error
dnf install dialog
# dnf install wpa_supplicant
# dnf install mtools
# dnf install dosfstools
# dnf install parted
# dnf install gparted # error
# base development tools 
dnf install autoconf
dnf install automake
# dnf install binutils
dnf install bison
# dnf install fakeroot # error
# dnf install file
# dnf install findutils
dnf install flex
# dnf install gawk
dnf install gcc
# dnf install gettext
# dnf install gnugrep # error
# dnf install groff # error
# dnf install gzip
dnf install libtool
# dnf install gnum4 # error
dnf install cmake
# dnf install gnumake # error
# dnf install pacman # error
# dnf install gnupatch # error
# dnf install pkgconf
# dnf install sedutil # error
# dnf install sudo
# dnf install texinfo # error
# dnf install which
# dnf install fd # error
# dnf install coreutils
# end base devel tools
# dnf install linuxHeaders # error
# dnf install avahi
# dnf install bluez
# dnf install cups
# dnf install pulseaudio
dnf install pavucontrol
# dnf install pamixer # error
# dnf install alsaUtils
# dnf install os-prober
# dnf install ntfs3g # error
# end install essentials

# Xmonad
dnf install xmonad
dnf install ghc-xmonad-devel
dnf install ghc-xmonad-contrib-devel
dnf install xmobar
dnf install cabal-install
cabal update
cabal install yeganesh
xorg.xkill
# commands to install xmonad config
# i.e. copy xmonad files from rocky repo into base system

# PROGRAMS
# For every program with a config, the config is copied
# to the system after the install

# kitty

# Spacemacs
dnf install emacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
cp spacemacs/dot_spacemacs ~/.spacemacs

# for window managers
dunst

exit
