python t5_pretrain.py \
    --model_type t5 \
    --config_name t5-tiny-6L-4H \
    --tokenizer_name t5-small \
    --cache_dir /home/kzhao/.cache/huggingface/ \
    --dataset_pickle_path processed_realnewslike.pkl \
    --max_seq_length 512 \
    --preprocessing_num_workers 4 \
    --output_dir t5_pretraining_1 \
    --do_train \
    --do_eval \
    --per_device_train_batch_size 8 \
    --per_device_eval_batch_size 8 \
    --learning_rate 5e-5 \
    --weight_decay 0.0 \
    --adafactor \
    --num_train_epochs 1 \
    --warmup_steps 10000 \
    --save_steps 500000 \
    --eval_steps 100
