#!/bin/bash

rm DarkOs-Repo*


echo "repo-add"
repo-add -s -n -R DarkOs-Repo.db.tar.gz *.pkg.tar.xz
repo-add -s -n -R DarkOs-Repo.db.tar.gz *.pkg.tar.zst
#sleep 8

mv DarkOs-Repo.db.tar.gz DarkOs-Repo.db
mv DarkOs-Repo.db.tar.gz.sig DarkOs-Repo.db.sig
mv DarkOs-Repo.files.tar.gz DarkOs-Repo.files
mv DarkOs-Repo.files.tar.gz.sig DarkOs-Repo.files.sig
echo "####################################"
echo "Repo Updated!!"
echo "####################################"
