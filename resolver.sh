#!/bin/bash
# Resolve a list of domains given in a file (input) and resolve their IP in output file. 
# It uses the host command
# Example: sh resolver.sh domains.txt resolved.txt

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_file> <output_file>"
    exit 1
fi

input_file="$1"
output_file="$2"

> "$output_file"

while IFS= read -r domain
do
    host "$domain" | awk '/has address/ { print $4 }' >> "$output_file"
done < "$input_file"

echo "Domain resolution completed. IP addresses are in $output_file."
