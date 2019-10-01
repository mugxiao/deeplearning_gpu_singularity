# test tensorflow
# -W ignore: ignore futurewarning
singularity exec --nv deeplearning_gpu.simg python -W ignore -c "import tensorflow as tf; print('TensorFlow version: ' + tf.__version__)"

# test keras
singularity exec --nv deeplearning_gpu.simg python -W ignore -c "import tensorflow.keras as keras;print('Keras version: ' + keras.__version__)"

# test pytorch
singularity exec --nv deeplearning_gpu.simg python -c "import torch;print('pytorch version: ' + torch.__version__)"


# test NiftyNet
singularity exec --nv deeplearning_gpu.simg net_download -h

# test simpleitk
singularity exec --nv deeplearning_gpu.simg python -c "import SimpleITK as sitk; print('SimpleITK version: ' +  sitk.Version_VersionString())"

# test opencv
singularity exec --nv deeplearning_gpu.simg python -c "import cv2; print('Opencv version: ' + cv2.__version__)"

# test skimage
singularity exec --nv deeplearning_gpu.simg python -c "import skimage; print('skimage version: ' + skimage.__version__)"

