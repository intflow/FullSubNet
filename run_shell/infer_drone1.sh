source /opt/conda/bin/activate
conda activate base


#REF_PATH=/data/DNS-Challenge/datasets/test_set/synthetic/no_reverb/clean
PROC_PATH=/data/Drone_Audio_dataset_intflow/noisy_real
BASE_PATH=$PWD

cd recipes/etri_drone1
python inference.py \
  -C fullsubnet/inference.toml \
  -M /data/Drone_Audio_dataset_intflow/exp/Fullsubnet/train/checkpoints/best_model.tar \
  -O $PROC_PATH

##cd $BASE_PATH
##python tools/calculate_metrics.py \
##  -R $REF_PATH \
##  -E $PROC_PATH"/enhanced_0066" \
##  -M SI_SDR,STOI,WB_PESQ,NB_PESQ \
##  -S DNS_1