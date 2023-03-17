#!/bin/bash

# Get the absolute path to the directory where the script is located
dirpath=$(realpath "$(dirname "$0")")

# Construct the exec command with the full path to the script
exec_command="exec --no-startup-id '$dirpath/run-break-timer.sh'"
exec_command_two="bindsym Mod1+Mod4+period exec '$dirpath/restart_to_extend_time.sh'"

# Check if the exec command exists in the i3 config file
if ! grep -q "$exec_command" ~/.config/i3/config; then
    echo "Adding"
    # If the command doesn't exist, add it to the end of the file
    echo "$exec_command" >> ~/.config/i3/config
    echo "$exec_command_two" >> ~/.config/i3/config
fi
echo "Nothing to do, now"