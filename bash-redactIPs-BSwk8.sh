#! C:\Program Files\Git\bin

# ISS 212 CS Scripting - WK 8 TD 6 - Bash & Regex - IP Redaction
# Bash script using Regex -- Redacting data using pattern matching
#refrence  Bash & Regex - IP Redaction sample script

# Use sed to search and replace all IPv4 addresses in 'access.log' with '[REDACTED]'
sed -E 's/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/[REDACTED]/g' access.log > access_redacted.log

# Print a message indicating that the IP addresses have been redacted and saved
echo "Redacted IP addresses in access.log and saved as access_redacted.log"
