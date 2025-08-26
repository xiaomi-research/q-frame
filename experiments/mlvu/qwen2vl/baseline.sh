# export HF_HOME=""

accelerate launch --num_processes 8 --main_process_port 8000 -m lmms_eval \
    --model qwen2_vl \
    --model_args pretrained=Qwen/Qwen2-VL-7B-Instruct,max_num_frames=8 \
    --task mlvu \
    --batch_size 1 \
    --log_samples \
    --log_samples_suffix qwen2_vl_7b_mlvu \
    --output_path ./logs/