#!/bin/bash

sudo service ssh start

#while true
#do
#sleep 1
#done

export PATH="/meow-deploy/conda/bin:$PATH"
export JUPYTER_PATH="/notebooks"

cd /meow-deploy/notebooks
jupyter notebook --port=8888 --no-browser --ip=0.0.0.0
