source /opt/conda/bin/activate
conda activate base


REF_PATH=/data/DNS-Challenge/datasets/test_set/synthetic/no_reverb/clean
PROC_PATH=/data/DNS-Challenge/exp/Fullband/enhancement/baseline-synthetic_no_reverb_noisy
BASE_PATH=$PWD

cd recipes/dns_interspeech_2020
python inference.py \
  -C fullsubnet/inference.toml \
  -M /data/DNS-Challenge/exp/Fullband/train/checkpoints/fullsubnet_best_model_58epochs.tar \
  -O $PROC_PATH

cd $BASE_PATH
python tools/calculate_metrics.py \
  -R $REF_PATH \
  -E $PROC_PATH"/enhanced_0058" \
  -M SI_SDR,STOI,WB_PESQ,NB_PESQ \
  -S DNS_1