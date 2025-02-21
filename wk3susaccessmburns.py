
#refrence WK3-susaccess
import time
def analyze_logs(log_file):
    suspicious_ips = {}  # Dictionary to store IP addresses and their suspicious event counts
    
    # Open the log file in read mode
    with open(log_file, 'r') as file:
        # Iterate over each line in the log file
        for line in file:
            # Check if the line contains the phrases that indicate suspicious activity
            if "401 - Failed login attempt" in line or "Suspicious activity detected" in line:
                # Extract the first word from the line, which is assumed to be the IP address
                ip = line.split()[0]
                # Increment the suspicious activity count for this IP address
                suspicious_ips[ip] = suspicious_ips.get(ip, 0) + 1
    
    # Iterate over the dictionary of suspicious IPs and their activity counts
    for ip, count in suspicious_ips.items():
        # Print a warning message with the IP address and the number of suspicious occurrences
        print(f"Suspicious activity  has been detected from {ip}: {count} occurrences")

# Example usage
log_file = "sim_access.log"  # Replace with the actual log file path if needed
analyze_logs(log_file)  # Call the function to analyze the log file


def template():

    print("--------------------------------------")
    #prints authors name and class
    print("Maxwell Burns")
    print("ISS 212")
    #this function will print the current date and time
    print (time.ctime())

template()
