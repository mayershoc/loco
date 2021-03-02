#! /bin/sh
# Downloads the synthetic training data
# Usage: bash utils/get_synth.sh
DIR='dataset/'
URL='https://syncandshare.lrz.de/dl/fi2X1cXzVenDkm3YKHxznrgq/'
F='synth.zip'

echo 'Downloading LOCO synth from ' $URL$F '...'
wget $URL$F -O $F --show-progress && unzip -q $F -d $DIR && rm $F & 
wait 
