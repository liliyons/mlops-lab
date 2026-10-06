#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: ./create_user.sh <username>"
    exit 1
fi

USERNAME=$1

if id "$USERNAME" &>/dev/null; then
    echo "User $USERNAME already exists"
else
    sudo useradd -m "$USERNAME"
    echo "User $USERNAME created successfully"
    sudo passwd "$USERNAME"
fi
