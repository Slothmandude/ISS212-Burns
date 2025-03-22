#!/bin/bash

# SP25 - ISS 212 Week 4 Tool Dev 2
# refrence system healthcheck script
#I moddifed it to run on my windows system

# Display the current username
echo "Current User: $USERNAME"  # $USERNAME works in Git Bash/WSL, but not plain Bash

# Show disk space usage (Windows alternative)
echo "Disk Space Usage:"
powershell -Command "Get-PSDrive C | Select-Object Used,Free"

# Show running processes using PowerShell
echo "Running Processes:"
powershell -Command "Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 5"

# Show currently logged-in users
echo "Logged-in Users:"
powershell -Command "Get-WmiObject Win32_ComputerSystem | Select-Object -ExpandProperty UserName"

# Pause before closing
read -p "Press Enter to exit..."
