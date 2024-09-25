name=$1
obj_types='car,bus,trailer,truck,pedestrian,bicycle,motorcycle,construction_vehicle,barrier,traffic_cone'
python ./evaluation/nuscenes/result_creation.py --name "${name}" --obj_types $obj_types
python ./evaluation/nuscenes/type_merge.py --name "${name}" --obj_types $obj_types
#bash ./evaluation/nuscenes/eval.sh "${name}"