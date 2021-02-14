#! /bin/sh

# Download the dataset into repository and unzip it
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
wget https://go.mytum.de/239870 -O $DIR/../dataset.zip
unzip $DIR/../dataset.zip
rm $DIR/../dataset.zip