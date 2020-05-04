#!/bin/bash
conda create -n onnx python=3.7 -y
conda activate onnx
conda install -c pytorch pytorch torchvision cudatoolkit=10.1 -y
conda install scikit-learn ipykernel pandas matplotlib -y 
conda install -c conda-forge nb_black
pip install onnx onnxruntime
pip install skl2onnx
pip install mxnet gluoncv

python -m ipykernel install --user --name onnx --display-name "onnx"
conda deactivate