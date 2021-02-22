#! /bin/sh
# Downloads the darknet formatted annotation files and prepare the dataset accordingly.
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd $DIR/../dataset/
mkdir train
mkdir val

find subset-1 -name *.jpg -exec mv {} val/ \;
find subset-2 -name *.jpg -exec mv {} train/ \;
find subset-3 -name *.jpg -exec mv {} train/ \;
find subset-4 -name *.jpg -exec mv {} val/ \;
find subset-5 -name *.jpg -exec mv {} train/ \;

wget https://syncandshare.lrz.de/dl/fiQorKfVC8GYBsfSaVWxiRPa/loco-v3-darknet-6c.zip
unzip loco-v3-darknet-6c.zip

mv train.6c/* train/
mv val.6c/* val/
mv synth.6c/* synth/

find train/ -name *.jpg > manifest_train.txt
find val/ -name *.jpg > manifest_val.txt
find synth/ -name *.jpg > manifest_synth.txt



# Clean up
rm subset-* train.6c val.6c all.6c synth.6c loco-v3-darknet-6c.zip -rf

