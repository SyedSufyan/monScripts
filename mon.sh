#!/bin/sh
#printf "Date \t\t\t\tMemory \t\t\tDisk \t\t\tCPU\n"
#Date MemUtil/MemTotal MemUtil% DiskUtil/DiskTotal DiskUtil% CPULoad%
now="$(date)"
printf "%s\t" "$now"
free -m | awk 'NR==2{printf "%s/%sMB\t %.2f%%", $3,$2,$3*100/$2 }'
df -h | awk '$NF=="/"{printf "\t %d/%dGB\t %s", $3,$2,$5}'
top -bn1 | grep load | awk '{printf "\t %.2f\n", $(NF-2)}'
