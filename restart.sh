#!/bin/bash

# Find the process ID of the run.sh script in the ~/bin/break-timer directory
PID=$(ps aux | grep './run.sh' | grep -v grep | awk '{print $2}')

if [[ -z "$PID" ]]; then
  echo "run.sh is not currently running"
  exit 1
else
  echo "Stopping run.sh (PID $PID)"
  kill $PID
fi

# Start the run.sh script
echo "Starting run.sh"
./run.sh
