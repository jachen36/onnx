#!/bin/bash
conda create -n onnx-infer python=3.7 -y
conda activate onnx-infer
pip install onnxruntime
conda install pillow numpy matplotlib ipykernel -y

python -m ipykernel install --user --name onnx-infer --display-name "onnx-infer"
conda deactivate
