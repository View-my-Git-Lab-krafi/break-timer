import subprocess
import time
# Run the script using subprocess.Popen
process = subprocess.Popen(['python', './break-timer/main.py'])

# Wait for 2 seconds
time.sleep(2)

# Terminate the process
process.terminate()
