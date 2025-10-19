#!/bin/bash
# Check if sshd service is running; if not, print a warning.

service="sshd"

while true
do
status=$(systemctl is-active "$service")

    if [[ "$status" == "active" ]]; then
         echo "✅ $service is running."
    else
         echo "⚠️ WARNING: $service is not running!"
    fi

    sleep 5
    
done