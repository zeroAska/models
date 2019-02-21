export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

# From tensorflow/models/research/
python deeplab/eval.py \
    --logtostderr \
    --training_number_of_steps=90000 \
    --train_split="val" \
    --model_variant="xception_65" \
    --atrous_rates=12 \
    --atrous_rates=24 \
    --atrous_rates=36 \
    --output_stride=8 \
    --decoder_output_stride=4 \
    --train_crop_size=513 \
    --train_crop_size=1025 \
    --train_batch_size=8 \
    --dataset="nclt" \
    --checkpoint_dir=deeplab/datasets/nclt/exp/train_on_train_set/train/ \
    --eval_logdir=deeplab/datasets/nclt/exp/train_on_train_set/eval/ \
    --dataset_dir=deeplab/datasets/nclt/tfrecord/

