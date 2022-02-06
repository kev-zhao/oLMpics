rm -ri t5_pretraining_1
accelerate launch t5_pretrain.py \
    --model_type t5 \
    --config_name t5-small-6L-8H \
    --tokenizer_name t5-small \
    --cache_dir /mnt/home/.cache/datasets/ \
    --dataset_pickle_path processed_en10.pkl \
    --max_seq_length 128 \
    --preprocessing_num_workers 16 \
    --output_dir t5_pretraining_1 \
    --do_train \
    --do_eval \
    --per_device_train_batch_size 64 \
    --per_device_eval_batch_size 64 \
    --learning_rate 0.003 \
    --weight_decay 0.001 \
    --adafactor \
    --num_train_epochs 1 \
    --warmup_steps 30000 \
    --save_steps 15000 \
    --eval_steps 8000 \
    --logging_steps 100
