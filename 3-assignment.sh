#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 mountpoint"
    exit 1
fi

mountpoint="$1"
mountpoint -q "$mountpoint"
if [ $? -eq 0 ]; then
    OUTPUT=$(df -h --output=used,avail "$mountpoint" | tail -n 1)
    USED_SPACE=$(echo "$OUTPUT" | awk '{print $1}')
    FREE_SPACE=$(echo "$OUTPUT" | awk '{print $2}')

    echo "Mount point or filesystem '$mountpoint' is mounted"
    echo "Used space: $USED_SPACE"
    echo "Free space: $FREE_SPACE"
else
    echo "Mount point or filesystem '$mountpoint' is not mounted"
    exit 2
fi
