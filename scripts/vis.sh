export CUDA_VISIBLE_DEVICES=4,5,6,7
python3 segment.py test --phase val  --ms -d /shared/xudongliu/bdd100k/seg/seg -c 19 -s 0 --arch dla102up \
    --batch-size 8 --lr 0.01 --momentum 0.9 --lr-mode poly \
    --epochs 500 --bn-sync --random-scale 2 --random-rotate 0 \
    --random-color --pretrained-base imagenet -o vis_out/dla102_up_768x768_500e  -e --resume out/dla102_up_768x768_500e/checkpoint_28.pth.tar