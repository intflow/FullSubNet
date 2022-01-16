#/bin/bash

# create a conda environment
#conda create --name FullSubNet python=3
#conda activate FullSubNet

# install conda packages
# ensure python=3.x, pytorch=1.10.x, torchaudio=0.10
#conda install pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch
#conda install tensorboard joblib matplotlib

# install pip packages
pip3 install torch==1.10.1+cu113 torchvision==0.11.2+cu113 torchaudio==0.10.1+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html
pip install joblib matplotlib
pip install Cython
pip install librosa pesq pypesq pystoi tqdm toml mir_eval torch_complex rich

# (Optional) if there are "mp3" format audio files in your dataset, you need to install ffmpeg.
conda install -c conda-forge ffmpeg