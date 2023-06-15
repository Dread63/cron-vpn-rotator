#!/bin/bash

# Array of VPN server locations
servers=("United_States dallas" "United_States miami" "United_States chicago" "United_Kingdom london" "Canada montreal")

# Read the last connected server from a file
last_server=$(cat /path/to/last_server.txt)

# Remove the last connected server from the array
servers=("${servers[@]/$last_server}")

# Randomly select a server from the remaining array
server=${servers[$RANDOM % ${#servers[@]}]}

# Connect to the selected server
nordvpn connect $server

# Save the selected server as last connected server
echo "$server" > /path/to/last_server.txt
