#!/bin/bash

# Script to generate security events on Kali Linux for Elastic SIEM

echo "Generating security events on Kali Linux..."

# Define the target IP address (change as needed)
TARGET_IP="192.168.1.1"  # Replace with the actual IP of the machine you want to scan

# Run various Nmap scans to simulate attacks
echo "Running basic Nmap scan..."
sudo nmap $TARGET_IP -oN nmap_basic_scan.log

echo "Running SYN scan..."
sudo nmap -sS $TARGET_IP -oN nmap_syn_scan.log

echo "Running TCP Connect scan..."
sudo nmap -sT $TARGET_IP -oN nmap_tcp_connect_scan.log

echo "Running full port scan..."
sudo nmap -p- $TARGET_IP -oN nmap_full_port_scan.log

echo "Running OS detection scan..."
sudo nmap -O $TARGET_IP -oN nmap_os_detection.log

# Simulating a failed SSH login attempt
echo "Simulating failed SSH login attempt..."
ssh invaliduser@$TARGET_IP

# Simulating a web request with curl to test web application logs
echo "Testing web access with curl..."
curl -I http://$TARGET_IP > web_request.log

# Simulating a brute-force attempt by running multiple SSH login attempts
echo "Simulating SSH brute force attack..."
for i in {1..5}; do
    ssh invaliduser@$TARGET_IP
done

echo "Security events generated! Check the log files in the current directory."

# End of script
