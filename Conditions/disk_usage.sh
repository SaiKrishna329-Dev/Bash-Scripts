# Write a script that checks disk usage and warns if it exceeds 80%

#!/bin/bash

threshold="80"
Alert_mail="DevOps@xperi.com"

 # Loop through each filesystem (skip header)
df -h | awk 'NR>1 print{ $5, $6}' | while read output
do 
   usage=$(echo $output | awk '{ print $1}' | tr -d '%')
   mount_point=$(echo $output | awk '{ print $2}')

    if [[ "$usage" -ge "$threshold" ]]; then
      message="Warning: Disk usage on $mount_point has reached ${usage}%"
        echo "$message"
        
        # Send email alert (if mail is configured)
        echo "$message" | mail -s "Disk Usage Alert: $mount_point at ${usage}%" "$ALERT_mail"
    fi  
done

# Slack webhook URL
WEBHOOK_URL="https://hooks.slack.com/services/XXXXXXXX/XXXXXXX/XXXXXXXXXXXX"

if [ "$usage" -ge "$THRESHOLD" ]; then
    message=":warning: Disk usage alert on *$(hostname)* — $mount_point is at ${usage}%"
    payload=$(jq -n --arg text "$message" '{text: $text}')
    curl -s -X POST -H 'Content-type: application/json' --data "$payload" "$WEBHOOK_URL" > /dev/null
fi
