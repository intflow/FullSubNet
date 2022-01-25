source /opt/conda/bin/activate
conda activate base


PRELOAD_MODEL_PATH=/data/DNS-Challenge/exp/Fullband/train/checkpoints/best_model.tar

# enter a directory named after the dataset, such as dns_interspeech_2020
cd recipes/etri_drone1

# Use a default config and two GPUs to train the FullSubNet model
CUDA_VISIBLE_DEVICES=0,1
torchrun --standalone --nnodes=1 --nproc_per_node=2 train.py -P $PRELOAD_MODEL_PATH -C fullsubnet/train.toml
