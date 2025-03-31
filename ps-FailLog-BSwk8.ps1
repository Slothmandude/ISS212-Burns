# ISS 212 CS Scripting - WK 8 TD 6- PowerShell - Event Log Monitoring
# PS script using Regex -- Redacting data using pattern matching
# Refrence ISS 212 - CS Scripting - PowerShell Script: ps-FailLog.ps1
#Maxwell Burns

# Define the log file to analyze
$logFile = "security.log"

# Search the log file for failed login attempts and extract the IP addresses
# - Select-String scans the file for lines matching the pattern
# - The regex captures IPv4 addresses from failed login messages
# - -AllMatches ensures it captures all occurrences
$failedAttempts = Select-String -Path $logFile -Pattern "Login attempt failed from IP (\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" -AllMatches

# Create an empty hashtable to store IP addresses and their failed attempt counts
$ipCounts = @{}

# Iterate over the failed attempts and count occurrences of each IP
foreach ($match in $failedAttempts) {
    $ip = $match.Matches.Groups[1].Value  # Extract the captured IP address

    # Check if the IP is already in the hashtable
    if ($ipCounts.ContainsKey($ip)) {
        $ipCounts[$ip] += 1  # Increment the count if the IP already exists
    } else {
        $ipCounts[$ip] = 1  # Initialize the count for a new IP
    }
}

# Display potentially malicious IPs that have failed more than 3 times
Write-Host "Potentially Malicious IPs:"
foreach ($ip in $ipCounts.Keys) {
    if ($ipCounts[$ip] -gt 3) {  # Check if an IP has more than 3 failed attempts
        Write-Host "$ip has $($ipCounts[$ip]) failed login attempts"
    }
}
