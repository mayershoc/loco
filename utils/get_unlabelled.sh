#! /bin/sh
# Downloads the unlabelled training data (i.e. subset 2, 3 and 5)
# Usage: bash utils/get_unlabelled.sh
DIR='dataset/unlabelled/'
URL='https://webdisk.ads.mwn.de/Handlers/AnonymousDownload.ashx?folder=73e976ba&path=LOCO%5Cv1%5Cnot-annotated%5C'
F1='subset-2-jpg.zip'
F2='subset-3-jpg.zip'
F3='subset-5-jpg.zip'
for F in $F1 $F2 $F3; do
    echo 'Downloading' $F '...'
    wget $URL$F -O $F --show-progress && unzip -q $F -d $DIR && rm $F & 
done
wait 
