#!/bin/bash
tput setaf 2
echo "# Building Packages Through Chroot Environment"
echo "#############################################"
tput setaf 1
echo "# Where Out Chroot Is Gonna be  "
export CHROOT=$HOME/repos_files/chroot
echo "#############################################"
tput sgr0
echo "# Let's Update and upgrade everything"
echo "#############################################"
arch-nspawn $CHROOT/root pacman -Syu
tput setaf 3
echo "#############################################"
tput sgr1
echo "# Let's start packaging"
echo "#############################################"
makechrootpkg -c -r $CHROOT
tput setaf 5
echo "#############################################"
tput setaf 4
echo "#############################################" 
echo "# Let's sign our packages"
gpg --detach-sign darkos*.pkg.tar.xz
tput setaf 8
echo "#############################################" 
echo "# Done :D "
tput setaf 9 
echo "#############################################"
echo "# Cleaning Up The Miss The building Process left for us"
tpuf setaf 1 
echo "#############################################"
echo "# WE ARE DONE :D"
