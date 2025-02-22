#ref Data Security Tax Calculation sample script
data_usage = float(input("Enter your annual data usage in MB: "))

if data_usage <= 85528:
    tax = (0.18 * data_usage) - 556.02
else:
    tax = 14839.02 + 0.32 * (data_usage - 85528)

tax = max(tax, 0)  # Ensure the tax is not negative

print(f"Your Data Security Tax is: {round(tax)} MB")
