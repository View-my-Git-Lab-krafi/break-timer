import subprocess
import time
import sys

# Get the directory path from the command line arguments
dir_path = sys.argv[1]
# Run the script using subprocess.Popen
process = subprocess.Popen(['python', f'{dir_path}/main.py', dir_path])

# Wait for 2 seconds
time.sleep(2)

# Terminate the process
process.terminate()
