from PIL import Image
import os

if __name__ == "__main__":
    root_dir = '/shared/xudongliu/code/f_server/dla_bdd100k/vis_out/dla102_up_768x768_500e/dla102up_029_val_color/images/val'
    fn_list = os.listdir(root_dir)
    out_dir = '/shared/xudongliu/code/f_server/dla_bdd100k/vis_out/dla102_up_768x768_500e_new'
    for fn in fn_list:
        image_path = os.path.join(root_dir, fn)
        img = Image.open(image_path)
        new_img = img.crop((0, 280, 1280, 1000))
        out_path = os.path.join(out_dir, fn)
        img.save(out_path)
