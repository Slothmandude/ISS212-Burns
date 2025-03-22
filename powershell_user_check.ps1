# SP25 - ISS 212 Week 4 Tool Dev 2
#refrence User Privilage Level check sample script

if (([System.Security.Principal.WindowsIdentity]::GetCurrent()).Groups -contains "S-1-5-32-544") {
    Write-Host "Administrator Privileges: Yes"
    # Check if the current user belongs to the Administrators group
} else {
    Write-Host "Administrator Privileges: No"
}
# If the user is not an administrator, print no
