# SP25 - ISS 212 Week 4 Tool Dev 2
#ref Powershell portscanner sample script

# Prompt the user to enter an IP address
$ip = Read-Host "Enter IP Address"

# Define an array of common ports to check (22 = SSH, 80 = HTTP, 443 = HTTPS)
$ports = @(22, 80, 443)

# Loop through each port in the array
foreach ($port in $ports) {
    # Use Test-NetConnection to check if the port is open on the specified IP
    # -ComputerName specifies the target IP address
    # -Port specifies the port number to check
    # -WarningAction SilentlyContinue suppresses unnecessary warnings
    $result = Test-NetConnection -ComputerName $ip -Port $port -WarningAction SilentlyContinue

    # Check if the TCP connection was successful
    if ($result.TcpTestSucceeded) {
        # If successful, print that the port is OPEN
        Write-Host "Port $($port): OPEN"
    } else {
        # If unsuccessful, print that the port is CLOSED
        Write-Host "Port $($port): CLOSED"
    }
}

