#!/bin/bash

dir=$(dirname "$0")
notify-send "===> Focus <===" &&
echo "$dir" &&
python3 "$dir/2stimer.py" "$dir" && 
touch dir_path 
echo "$dir">dir_path
sleep 18m &&
notify-send "===========> Break time <==========" &&
sleep 9s &&
python3 "$dir/2stimer.py" "$dir" && 
python3 "$dir/6stimer.py" "$dir" &&
python3 "$dir/6stimer.py" "$dir" &&
python3 "$dir/6stimer.py" "$dir" &&
python3 "$dir/6stimer.py" "$dir" &&
python3 "$dir/6stimer.py" "$dir" &&
python3 "$dir/6stimer.py" "$dir" &&

# run script again
exec "$0" "$@"
