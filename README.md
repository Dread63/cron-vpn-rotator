# NordVPN-Server-Rotation-Script-with-Cron-Job
This script automates the rotation of NordVPN connections on linux using a cron job. By periodically changing the VPN server, it enhances privacy and security by diversifying the server locations.
The script randomly selects a VPN server from a predefined array of server locations. It then uses the NordVPN command-line interface to establish a connection to the selected server. The last connected server is tracked using the last_server.txt file, ensuring that the script connects to a different server each time it runs.

By setting up a cron job with this script, you can schedule the rotation of your NordVPN connection at regular intervals. The cron job executes the script automatically, allowing you to hop vpn connections connection without manual intervention.

Features:
1. Randomly selects a VPN server from a predefined array of locations.
2. Uses the NordVPN command-line interface to connect to the selected server.
3. Tracks the last connected server using the last_server.txt file which ensures that each script execution connects to a different server than the last one.
4. Can be scheduled as a cron job to rotate the NordVPN connection automatically.
5. Enhances anonimity and security by periodically changing the server location.

Instructions:

1. Install NordVPN on your Linux machine.
2. Download the vpn_rotation.sh script.
3. Modify the script to include your preferred server locations, if needed.
4. Place the last_server.txt file in the same directory as the script.
5. Make the script executable using the chmod +x vpn_rotation.sh command.
6. Set up a cron job using crontab -e and add the appropriate entry to execute the script at your desired interval.
7. Save the changes to the cron table and exit the text editor.
8. Enjoy automated rotation of your NordVPN connection for enhanced anonimity and security, with each connection being different from the last one.
