# A Discovery repo on using ONNX for model deployment. 

# Notebook on inference

The environment for inference is shown below and is in the [setup-infer](./setup-infer.sh) file.

```bash
conda create -n onnx-infer python=3.7 -y
conda activate onnx-infer
pip install onnxruntime
conda install pillow numpy matplotlib ipykernel -y

python -m ipykernel install --user --name onnx-infer --display-name "onnx-infer"
conda deactivate
```

* [onnx-inferences](./onnx-inferences.ipynb) : Shows that using ONNX env can run multiple differen model with ease. 

**Data**

* [iris_data.csv](./iris_data.csv) : data from iris dataset exported to be used for inference
* [cat_224x224](./cat_224x224.jpg) : input image for superresolution model
* [cat_superres](./cat_superres.jpg) : output image for superresolution model
* [people](./people.jpg) : input image for faster-rcnn


**Exported Model**

* `rf_iris.onnx` : ONNX model for Scikit-learn's RandomForest
* `super_resolution.onnx` : ONNX model for superresolution model
* `faster-rcnn.onnx` : ONNX model for faster-rcnn. Too large to upload so ignored. 


## Notebooks used for exporting model 

To setup the environment, please refer to [setup-export](./setup-export.sh)

* [sklearn_onnx](./sklearn-onnx.ipynb) : Exported a randomforest model to onnx
* [pytorch_superres](./pytorch_superres.ipynb) : A model that upsample images created using pytorch to onnx
* [faster-rcnnn](./faster-rcnn.ipynb) : Exported torchvision's faster-rcnn model to onnx
* [mxnet_export](./mxnet_export.ipynb) : Failed attempt to export a mxnet classification model due to environment issues. 




