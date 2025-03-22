# SP25 - ISS 212 Week 4 Tool Dev 2
# Jenn Moody
# ref enviroment variable inspector sample script

# Display the current logged-in username
Write-Host "Username: $env:USERNAME"

# Display the user's domain (useful in networked environments)
Write-Host "User Domain: $env:USERDOMAIN"

# Display the name of the computer
Write-Host "Computer Name: $env:COMPUTERNAME"

# Display the system PATH environment variable (lists directories where executables can be found)
Write-Host "System Path: $env:Path"

