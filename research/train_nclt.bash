export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

# From tensorflow/models/research/
python deeplab/train.py \
    --logtostderr \
    --training_number_of_steps=90000 \
    --train_split="train" \
    --model_variant="xception_65" \
    --fine_tune_batch_norm=False \
    --atrous_rates=12 \
    --atrous_rates=24 \
    --atrous_rates=36 \
    --output_stride=8 \
    --decoder_output_stride=4 \
    --train_crop_size=512 \
    --train_crop_size=512 \
    --train_batch_size=1 \
    --dataset="nclt" \
    --tf_initial_checkpoint=deeplab/datasets/nclt/deeplabv3_cityscapes_train/model.ckpt \
    --train_logdir=deeplab/datasets/nclt/exp/train_on_train_set/train \
    --dataset_dir=deeplab/datasets/nclt/tfrecord/
