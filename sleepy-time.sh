#!/bin/sh

echo "Gonna take a nap for $1, nighty night."

wake_time=$(date '+%s' -d "+ $1")
sudo rtcwake --verbose --mode mem --time "${wake_time}"
