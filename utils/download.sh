#! /bin/sh

# Download the dataset into repository and unzip it
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR/../
wget https://go.mytum.de/239870 -O dataset.zip
unzip dataset.zip
rm dataset.zip

cd dataset
wget https://syncandshare.lrz.de/dl/fi2X1cXzVenDkm3YKHxznrgq/synth.zip -O synth.zip
unzip synth.zip
rm synth.zip
