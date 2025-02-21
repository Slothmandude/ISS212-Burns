# ref: ISS 212 CS Scripting - WK 3 - Assignment 3 sample script
import time
import re
# Prompt user to enter a password to check
password = input("Enter a password to check: ")
# Function to check the strength of the password
def check_password_strength(password):
    # Check password length
    if len(password) < 8:
        return "Weak: Password too short!"  # Password is too short
    # Check for at least one uppercase letter
    if not re.search(r"[A-Z]", password):
        return "Weak: Must include at least one uppercase letter!"  # No uppercase letter found
    # Check for at least one lowercase letter
    if not re.search(r"[a-z]", password):
        return "Weak: Must include at least one lowercase letter!"  # No lowercase letter found
    # Check for at least one number
    if not re.search(r"[0-9]", password):
        return "Weak: Must include at least one number!"  # No number found
    # Check for at least one special character
    if not re.search(r"[!@#$%^&*()_+=]", password):
        return "Weak: Must include at least one special character!"  # No special character found

    return "Strong Password!"  # All conditions met, password is strong

# Evaluate and print password strength
print(check_password_strength(password))

def template():
    print("--------------------------------------")
    print("Maxwell Burns")
    print("ISS 212")
    print(time.ctime())  # Current date and time
template()
