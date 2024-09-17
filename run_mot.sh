config=configs/waymo_configs/immortal_for_ctrl_keep10.yaml
name=immortal
det_name=CTRL_FSD_TTA
obj_type=vehicle
# obj_type=pedestrian
# obj_type=cyclist
process=1
split=training
# split=validation
# split=testing
# python main_waymo.py --name immortal --det_name CTRL_FSD_TTA --config_path configs/waymo_configs/immortal_for_ctrl_keep10.yaml --process 1 --obj_type vehicle --split training
python main_waymo.py --name $name --det_name $det_name --config_path $config --process $process --obj_type $obj_type --split $split

obj_types=vehicle
# obj_types=pedestrian
# obj_types=cyclist
# python evaluation/waymo/pred_bin.py --name immortal --det_name CTRL_FSD_TTA --config_path configs/waymo_configs/immortal_for_ctrl_keep10.yaml --split training --obj_types vehicle --no-eval
python evaluation/waymo/pred_bin.py --name $name --det_name $det_name --config_path $config --split $split --obj_types $obj_types --no-eval


# split=validation

# python main_waymo.py --name $name --det_name $det_name --config_path $config --process $process --obj_type $obj_type --split $split

# python evaluation/waymo/pred_bin.py --name $name --det_name $det_name --config_path $config --split $split --obj_types $obj_types --no-eval