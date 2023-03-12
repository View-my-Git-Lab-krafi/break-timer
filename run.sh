notify-send "===========> Break time <==========" &&
sleep 3s &&
python3 2stimer.py  && 
sleep 9s &&
python3 6stimer.py  &&
python3 6stimer.py &&
python3 6stimer.py &&
python3 6stimer.py &&
python3 6stimer.py &&
python3 6stimer.py &&
sleep 10m &&
# run script again
exec "$0" "$@"
