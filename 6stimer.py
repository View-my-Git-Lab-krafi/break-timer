import subprocess
import time
# Run the script using subprocess.Popen
process = subprocess.Popen(['python', 'main.py'])

# Wait for 6 seconds
time.sleep(6)

# Terminate the process
process.terminate()
