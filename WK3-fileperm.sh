#!C:\Program Files\Git\bin\sh.exe
#
# ref WK3-fileperm.sh
for file in *; do
    # Check if the current item is a regular file (not a directory or other type)
    if [ -f "$file" ]; then
        # Use ls -l to get the permissions of the file and extract the permissions field using awk
        perms=$(ls -l "$file" | awk '{print $1}')
        # Check if the permissions string contains 'w' (write permission) and specifically 'rw-' (read-write without execute)
        if [[ "$perms" == *"w"* && "$perms" == *"rw-"* ]]; then
            # If the file has writable permissions, output a warning with the file name and permissions
            echo "Warning: $file has writable permissions ($perms)."
        fi
    fi
done
