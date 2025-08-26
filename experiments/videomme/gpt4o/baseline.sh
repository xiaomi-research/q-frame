# export HF_HOME=""

# modify the api_key condifuration of GPT-4o
export API_TYPE=""
export MODEL=""
export AZURE_ENDPOINT=""
export AZURE_API_KEY=""
export AZURE_API_VERSION=""
export AZURE_DEPLOYMENT=""

accelerate launch --num_processes 8 --main_process_port 8000 -m lmms_eval \
    --model gpt4o \
    --model_args model_version=$MODEL,max_frames_num=8 \
    --tasks videomme \
    --batch_size 1 \
    --log_samples \
    --log_samples_suffix gpt4o_videomme \
    --output_path ./logs/