#!/bin/bash
dir=$(dirname "$0")
pkill -f "$dir/run-break-timer.sh"
#!/bin/bash

script_name=$(basename "$0")
lock_file="/tmp/${script_name}.lock"

# Check if the lock file exists and if the process is still running
if [ -f "$lock_file" ]; then
    pid=$(cat "$lock_file")
    if ps -p "$pid" > /dev/null; then
        echo "Previous instance of $script_name is still running with PID $pid"
        dir=$(dirname "$0")
        ./dir/run.sh
        notify-send "task killed, Run again"
        notify-send "Waring! , Its not running anymore"
        pkill -f "$dir/restart_to_extend_time.sh" 
        exit 0
    else
 
       rm "$lock_file"
    fi
fi

# Create a lock file with the current PID
echo "$$" > "$lock_file"

echo "Starting $script_name"
while true; do
    dir=$(dirname "$0")
        python3 "$dir/2stimer.py"  &&
    notify-send "===> break-time is working! <===" &&
    sleep 18m &&
    notify-send "===========> Break time <==========" &&
    sleep 9s &&
    python3 "$dir/2stimer.py"  && 
    python3 "$dir/6stimer.py"  &&
    python3 "$dir/6stimer.py" &&
    python3 "$dir/6stimer.py" &&
    python3 "$dir/6stimer.py" &&
    python3 "$dir/6stimer.py" &&
    python3 "$dir/6stimer.py" 
done

# Remove the lock file when the script exits
rm "$lock_file"
