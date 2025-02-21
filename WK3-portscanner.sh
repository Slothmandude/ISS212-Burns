#!C:\Program Files\Git\bin\sh.exe
# 
# Ref WK3-portscan.sh

# Prompt the user to input the target IP address
read -p "Enter target IP address: " target_ip

# Prompt the user to input the starting port for scanning
read -p "Enter starting port: " start_port

# Prompt the user to input the ending port for scanning
read -p "Enter ending port: " end_port

# Output message to indicate the start of the port scanning process
echo "Scanning open ports on $target_ip from $start_port to $end_port..."

# Loop through each port in the range from start_port to end_port
for port in $(seq $start_port $end_port); do
    # Use PowerShell (pwsh.exe) to attempt to connect to the target IP and port
    result=$(powershell.exe -Command "(New-Object System.Net.Sockets.TcpClient).Connect('$target_ip', $port) 2>$null; if (\$?) {echo 'open'} else {echo 'closed'}")

    # Check if the result indicates the port is open
       # Check if the result indicates the port is open
    if [[ "$result" == "open" ]]; then
        # If the port is open, output the open port information
        echo "Port $port is open"
    else
        # If the port is closed, output the closed port information
        echo "Port $port is closed"
    fi
done