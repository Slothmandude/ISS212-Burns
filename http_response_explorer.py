
#Week 10 - Tool Development 6 Walkthrough | Socket & HTTP Exercise
#Maxwell Burns
# ref http_response_explorer.py sample script

# Import the urllib.request module to make HTTP requests
import urllib.request

print("---------------------------------")
# Task 1: Request headers from example.com
print("\nRequesting headers from example.com...")

# Create a request to example.com without modifying User-Agent
req_example = urllib.request.Request('http://example.com')

# Open the connection and fetch the response
with urllib.request.urlopen(req_example) as response:
    # Print the HTTP status code
    print("Status:", response.status)
    # Print all headers received from the server
    print("Response Headers for example.com:")
    for header, value in response.getheaders():
        print(f"{header}: {value}")

print("---------------------------------")
# Task 2: Request headers from uma.edu
print("\nRequesting headers from uma.edu...")

# Create a request to uma.edu without modifying User-Agent
req_uma = urllib.request.Request('http://uma.edu')

# Open the connection and fetch the response
with urllib.request.urlopen(req_uma) as response:
    # Print the HTTP status code
    print("Status:", response.status)
    # Print all headers received from the server
    print("Response Headers for uma.edu:")
    for header, value in response.getheaders():
        print(f"{header}: {value}")

print("---------------------------------")
# Task 3: Modify User-Agent and request uma.edu again
print("\nRequesting uma.edu with a Custom User-Agent...")

# Define custom headers with a different User-Agent
custom_headers = {'User-Agent': 'CustomBrowser/1.0'}

# Create a new request to uma.edu with a modified User-Agent
req_uma_custom = urllib.request.Request('http://uma.edu', headers=custom_headers)

# Open the connection and fetch the response
with urllib.request.urlopen(req_uma_custom) as response:
    # Print the HTTP status code
    print("Status:", response.status)
    # Print all headers received from the server with custom User-Agent
    print("Response Headers for uma.edu with Custom User-Agent:")
    for header, value in response.getheaders():
        print(f"{header}: {value}")

print("---------------------------------")
# Task 4: Request cookies from httpbin.org/cookies
print("\nRequesting cookies from httpbin.org/cookies...")

# Create a request to httpbin.org/cookies with the custom User-Agent
req_cookies = urllib.request.Request('http://httpbin.org/cookies', headers=custom_headers)

# Open the connection and fetch the response
with urllib.request.urlopen(req_cookies) as response:
    # Print the HTTP status code
    print("Status:", response.status)
    # Print only the headers related to cookies (Set-Cookie)
    found_cookie = False
for header, value in response.getheaders():
    if 'Set-Cookie' in header:
        print(f"{header}: {value}")
        found_cookie = True

if not found_cookie:
    print("No Set-Cookie headers were found.")
