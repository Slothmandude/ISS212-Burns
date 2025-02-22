
#ref Patch Cycle Python Script sample script
year = int(input("Enter the year to check the patch cycle: "))

print("Not within the managed patch period.")  # If the year is before 2019, output this message.
else:
    # If the year is divisible by 4, check further conditions
    if year % 4 != 0:
        print("Standard Year")  # If not divisible by 4, it's a standard year.
    elif year % 100 != 0:
        print("Patch Year")  # If divisible by 4 but not by 100, it's a patch year.
    elif year % 400 != 0:
        print("Standard Year")  # If divisible by 100 but not by 400, it's a standard year.
    else:
        print("Patch Year")  # If divisible by 400, it's a patch year.
