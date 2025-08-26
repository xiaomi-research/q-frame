# export HF_HOME=""

# modify the api_key condifuration of GPT-4o
export API_TYPE=""
export MODEL=""
export AZURE_ENDPOINT=""
export AZURE_API_KEY=""
export AZURE_API_VERSION=""
export AZURE_DEPLOYMENT=""

accelerate launch --num_processes 8 --main_process_port 8000 -m lmms_eval \
    --model gpt4o_w_qframe \
    --model_args model_version=$MODEL,max_frames_num=128,sample_frame=8,high_frames=4,mid_frames=8,low_frames=32 \
    --tasks longvideobench_val_v \
    --batch_size 1 \
    --log_samples \
    --log_samples_suffix gpt4o_w_qframe_longvideobench_val_v \
    --output_path ./logs/