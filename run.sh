#!/bin/bash

dir=$(dirname "$0")
notify-send "===> Focus <===" &&
sleep 18m &&
notify-send "===========> Break time <==========" &&
sleep 9s &&
python3 "$dir/2stimer.py"  && 
python3 "$dir/6stimer.py"  &&
python3 "$dir/6stimer.py" &&
python3 "$dir/6stimer.py" &&
python3 "$dir/6stimer.py" &&
python3 "$dir/6stimer.py" &&
python3 "$dir/6stimer.py" &&

# run script again
exec "$0" "$@"
