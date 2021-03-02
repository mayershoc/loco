#! /bin/sh
# Downloads the labelled training (i.e. subset 2, 3 and 5) and validation data (i.e. subset 1 and 4)
# Usage: bash utils/get_unlabelled.sh
DIR='dataset/'
URL='https://webdisk.ads.mwn.de/Handlers/AnonymousDownload.ashx?folder=73e976ba&path=LOCO%5Cv1%5C'
F='dataset.zip'

echo 'Downloading LOCO Train and Val from' $URL$F '...'
wget $URL$F -O $F --show-progress && unzip -q $F -d $DIR && rm $F 

mkdir $DIR/train $DIR/val
mv $DIR/dataset/subset-2 $DIR/dataset/subset-3 $DIR/dataset/subset-5 $DIR/train
mv $DIR/dataset/subset-1 $DIR/dataset/subset-4 $DIR/val 
rm $DIR/dataset -r
wait 
