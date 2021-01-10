export CUDA_VISIBLE_DEVICES=6,7,8,9
python3 segment.py train -d /shared/xudongliu/bdd100k/seg/seg -c 19 -s 768 --arch dla34up \
    --batch-size 16 --lr 0.005 --momentum 0.9 --lr-mode poly \
    --epochs 500 --bn-sync --random-scale 2 --random-rotate 0 \
    --random-color --pretrained-base imagenet -o out/dla34_up_768x768_bs8_500e_new_pretrained