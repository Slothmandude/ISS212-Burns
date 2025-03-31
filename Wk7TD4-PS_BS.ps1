# Maxwell Burns - ISS212 - Tool Development Exercise 4
# Refrence ISS212 Week 7 Tool Development Sample script

# Define the log file path
$logFilePath = "D:\THE BACKUP\class scripts\ISS212\W7TD4\WK7LOG.txt"

# Check if the log file exists; if not, print a message and exit the script
if (-Not (Test-Path $logFilePath)) {
    Write-Host "Log file not found!"
    exit
}

# Read the contents of the log file into an array
$logEntries = Get-Content $logFilePath

# Initialize a hashtable to store log level statistics
$logStats = @{}

# Initialize an array to store failed login attempts
$failedLogins = @()

# Loop through each entry in the log file
foreach ($entry in $logEntries) {
    # Use regex to extract log level, IP address, and message from log entries
    if ($entry -match "^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2} \[(.*?)\] (.*?) - (.*)$") {
        $logLevel = $matches[1]  # Extract the log level
        $ipAddress = $matches[2]  # Extract the IP address
        $message = $matches[3]    # Extract the log message

        # Increment the count for the corresponding log level in the hashtable
        if ($logStats.ContainsKey($logLevel)) {
            $logStats[$logLevel]++
        } else {
            $logStats[$logLevel] = 1
        }

        # If the log message contains "failed authentication", add it to the failed logins list
        if ($message -like "*failed authentication*") {
            $failedLogins += "$ipAddress - $entry"
        }
    }
}

# Print the breakdown of log levels and their occurrences
Write-Host "Log Level Breakdown:"
$logStats.GetEnumerator() | ForEach-Object { Write-Host "$($_.Key): $($_.Value)" }

# Print the first 10 failed login attempts
Write-Host "`nFirst 10 Failed Login Attempts:"
$failedLogins | Select-Object -First 10


