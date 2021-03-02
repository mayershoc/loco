#! /bin/sh
# Downloads all components of the loco dataset.
# Usage: bash utils/get_loco.sh

bash utils/get_trainval.sh
bash utils/get_synth.sh
bash utils/get_unlabelled.sh
bash utils/get_test.sh
