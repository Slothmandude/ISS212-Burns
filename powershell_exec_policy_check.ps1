# SP25 - ISS 212 Week 4 Tool Dev 2
# refrence powershell exec policy check sample script

# Display the current execution policy
Write-Host "Current Execution Policy: $(Get-ExecutionPolicy)"

# Check if the execution policy is set to "Unrestricted" or "Bypass"
if ((Get-ExecutionPolicy) -in "Unrestricted", "Bypass") {
    # Warn the user that all scripts can run without restrictions
    Write-Host "WARNING: Your execution policy allows all scripts to run. Ensure you trust the source."
}
# Check if the execution policy is "Restricted"
elseif ((Get-ExecutionPolicy) -eq "Restricted") {
    # Inform the user that script execution is completely disabled
    Write-Host "Scripts cannot be executed on this system."
}
