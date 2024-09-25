train=True
file_path="/workspace/immo/work_dirs/5_nusc_centerpoint_voxelnet_0075voxel_fix_bn_z/eval_on_seed/infos_train_10sweeps_withvelo_filter_True.json"
detection_name="cp_5_seed"

obj_types='car,bus,trailer,truck,pedestrian,bicycle,motorcycle,construction_vehicle,barrier,traffic_cone'

python preparedata/nuscenes/detection.py --file_path $file_path --det_name $detection_name --train $train && \
python main_nuscenes.py --name $detection_name --det_name $detection_name --config_path configs/nu_configs/immortal.yaml --process 15 --train $train && \
python ./evaluation/nuscenes/result_creation.py --name $detection_name --obj_types $obj_types --train $train && \
python ./evaluation/nuscenes/type_merge.py --name $detection_name --obj_types $obj_types --train $train
