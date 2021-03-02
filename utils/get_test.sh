#! /bin/sh
# Downloads the unlabelled test data (i.e. subset 1 and 4)
# Usage: bash utils/get_test.sh
DIR='dataset/test/'
URL='https://webdisk.ads.mwn.de/Handlers/AnonymousDownload.ashx?folder=73e976ba&path=LOCO%5Cv1%5Cnot-annotated%5C'
F1='subset-1-jpg.zip'
F2='subset-4-jpg.zip'
for F in $F1 $F2 $F3; do
    echo 'Downloading' $F '...'
    wget $URL$F -O $F --show-progress && unzip -q $F -d $DIR && rm $F & 
done
wait 
