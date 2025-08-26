# export HF_HOME=""

accelerate launch --num_processes 8 --main_process_port 8000 -m lmms_eval \
    --model qwen2_vl_w_qframe \
    --model_args pretrained=Qwen/Qwen2-VL-7B-Instruct,max_frames_num=128,sample_frame=8,high_frames=4,mid_frames=8,low_frames=32 \
    --task videomme \
    --batch_size 1 \
    --log_samples \
    --log_samples_suffix qwen2_vl_w_qframe_7b_videomme \
    --output_path ./logs/