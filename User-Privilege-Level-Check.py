 #SP25 - ISS 212 Week 4 Tool Dev 2
 #refrence User Privilege Level Check sample script

# Prompt the user to enter their role
role = input("Enter your role (admin, user, guest): ").strip().lower()
# The input() function asks the user to enter their role.
# .strip() removes any leading or trailing spaces to prevent input errors.
# .lower() converts the input to lowercase to ensure case-insensitive comparison.

# Determine access level based on role
if role == "admin":  # If the user enters 'admin', grant full privileges.
    print("Access Level: Full privileges granted.")
elif role == "user":  # If the user enters 'user', grant limited privileges.
    print("Access Level: Limited privileges granted.")
elif role == "guest":  # If the user enters 'guest', grant read-only access.
    print("Access Level: Read-only access granted.")
else:
    # If the input doesn't match any of the expected roles, show an error message.
    print("Invalid role entered. Please choose from admin, user, or guest.")