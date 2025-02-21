# ISS 212 CS Scripting - WK 3 - Assignment 3 sample script
#
# Be sure to cite your sources!
import time
def analyze_logs(file_path, suspicious_ips):
    # Iterate through each line in the file
    with open(file_path, 'r') as file:
        # Check each suspicious IP address to see if it's mentioned in the line
        for line in file:
            for ip in suspicious_ips:
                if ip in line:
                    # If suspicious activity is detected, print the IP and the corresponding line
                    print(f"Suspicious activity detected from {ip}: {line.strip()}")
# List of suspicious IP addresses to look for in the logs
suspicious_ips = ["203.0.113.12", "172.16.0.22", "199.203.100"]
log_file = "sim_auth.log"
analyze_logs(log_file, suspicious_ips)
def template():

    print("--------------------------------------")
    #prints authors name and class
    print("Maxwell Burns")
    print("ISS 212")
    #this function will print the current date and time
    print (time.ctime())

template()