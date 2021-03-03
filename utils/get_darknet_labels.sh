#! /bin/sh
# Downloads the darknet formatted annotations
# Usage: bash utils/get_darknet_labels.sh
DIR='annotations/darknet/'
CLASSES=6
if [ $CLASSES = 6 ]
then
    URL='https://syncandshare.lrz.de/dl/fiQorKfVC8GYBsfSaVWxiRPa/'
    F='loco-v3-darknet-6c.zip'
else
    URL='https://syncandshare.lrz.de/dl/fiDi8fteY6cZeyziR3brf9r2/'
    F='loco-v3-darknet-85c.zip'
fi

mkdir $DIR
echo 'Downloading darknet formatted LOCO labels' $URL$F '...'
wget $URL$F -O $F --show-progress && unzip -q $F -d $DIR && rm $F & 

wait 
