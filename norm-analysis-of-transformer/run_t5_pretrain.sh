python t5_pretrain.py \
    --model_type t5 \
    --config_name t5-tiny-6L-4H \
    --tokenizer_name t5-small \
    --cache_dir /mnt/home/kzhao/.cache/huggingface/ \
    --dataset_name c4 \
    --dataset_config_name realnewslike \
    --max_seq_length 512 \
    --preprocessing_num_workers 4 \
    --output_dir t5_pretraining_1 \
    --do_train \
    --do_eval \
    --per_device_train_batch_size 128 \
    --per_device_eval_batch_size 128 \
    --learning_rate 1e-4 \
    --weight_decay 0.0 \
    --adafactor \
    --num_train_epochs 1 \
    --warmup_steps 20000 \
    --save_steps 500 \
    --eval_steps 500
