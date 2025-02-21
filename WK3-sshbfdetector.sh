#!C:\Program Files\Git\bin\sh.exe
#ref ISS 212 CS Scripting - WK 3 - Assignment 3 sample script
# Define the log file path
log_file="sim_auth.log"
# Define an array of suspicious IP addresses to check for
suspicious_ips=("199.203.100.13" "10.0.0.35" "192.168.1.50")

# Print a message indicating that the log analysis is starting
echo "Analyzing logs for suspicious activity..."
# Read each line from the log file
while IFS= read -r line; do
   # Iterate through each suspicious IP address in the array
  for suspicious_ip in "${suspicious_ips[@]}"; do
    # Check if the current line contains the suspicious IP address
    if [[ "$line" == *"$suspicious_ip"* ]]; then
      # If a suspicious IP is found, print the detected activity
      echo "Suspicious activity detected: $line"
    fi
  done
  # Provide the log file path for input
done < "$log_file"

