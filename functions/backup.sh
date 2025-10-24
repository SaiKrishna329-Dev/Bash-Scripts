#Write a function backup() that takes a directory name and creates a timestamped .tar.gz backup.

#!/bin/bash

backup() {
    local dir="$1"

    if [[ ! -d "$dir" ]]; then
        echo "Directory '$dir' does not exist."
        return 1
    fi

    local timestamp
    timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

    local backup_name="${dir}_$timestamp.tar.gz"

    tar -cvzf "$backup_name" "$dir"

    echo "Backup created: $backup_name"
}

read -p "Enter directory to backup: " dir_name
backup "$dir_name"