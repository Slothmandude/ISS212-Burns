# ISS 212 CS Scripting - WK 8 TD 6- Python Suspicious IP Address Extraction
#refrence Sample script ip extraction

import re  # Importing the regular expressions module

# Open the 'auth.log' file in read mode and read its content into 'log_data'
with open('auth.log', 'r') as file:
	log_data = file.read()

# Define a regex pattern to match failed SSH login attempts and capture the attacking IP address
pattern = r"Failed password .* from (\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"

# Use re.findall to extract all IP addresses from the log that match the pattern
suspicious_ips = re.findall(pattern, log_data)

# Convert the list of suspicious IPs into a set to remove duplicates
unique_ips = set(suspicious_ips)

# Print the unique suspicious IP addresses
print("Suspicious IP addresses:")
for ip in unique_ips:
	print(ip)
