#!/bin/bash

rm DarkOs-Repo*


echo "repo-add"
repo-add -s -n -R DarkOs-Repo.db.tar.gz *.pkg.tar.xz
#sleep 8

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
