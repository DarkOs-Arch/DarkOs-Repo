#!/bin/bash
#https://wiki.archlinux.org/index.php/DeveloperWiki:Building_in_a_Clean_Chroot

destination1="/home/ybenel/DarkOs/DarkOs-Repo/x86_64/"

destiny=$destination1

# 2. makepkg"
# 1. chroot"

CHOICE=1

search=darkos

tput setaf 2
echo "#############################################################################################"
echo "#########        Let us build the package "$(basename `pwd`)
echo "#############################################################################################"
tput sgr0

case $CHOICE in

    2 )
    makepkg --sign
    ;;

    1 )
    CHROOT=$HOME/repo_files/chroot
    arch-nspawn $CHROOT/root pacman -Syu
    makechrootpkg -c -r $CHROOT

    echo "Signing the package"
    echo "#############################################################################################"
    gpg --detach-sign $search*pkg.tar.zst

    ;;
esac

echo "Moving created files to " $destiny
echo "#############################################################################################"
mv $search*pkg.tar.zst $destiny
mv $search*pkg.tar.zst.sig $destiny
echo "Cleaning up"
echo "#############################################################################################"
echo "deleting unnecessary folders"
echo "#############################################################################################"

rm -rf pkg src

echo "deleting unnecessary files"
echo "#############################################################################################"

find .   -not -name Makefile\
   -not -name readme.install\
   -not -name 'PKGBUILD'\
   -not -name 'MKPKG'\
   -not -name 'LICENCE.md'\
   -not -name 'install'\
   -not -name '*.prf'\
   -not -name '*.hook'\
   -not -name '*.conf'\
   -not -name 'LICENSE'\
   -not -name 'build-v*'\
   -not -name 'modprobe.d*'\
   -not -name '*.install'\
   -not -name '*.patch'\
   -not -name '*.png'\
   -not -name '*.jpg'\
   -not -name '*.cfg'\
   -not -name '*.desktop'\
   -delete

tput setaf 8
echo "#############################################################################################"
echo "###################                       build done                   ######################"
echo "#############################################################################################"
tput sgr0
