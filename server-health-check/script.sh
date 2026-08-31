#!/usr/bin/env bash

set -euo pipefail

SERVERS=("8.8.8.8" "192.0.2.1" "github.com")

COUNT_UNREACHABLE=0

for server in "${SERVERS[@]}";do

 if  !  ping -c 2 -W 2 "$server" &>/dev/null ;then  # send 2 packets and wait up to 2 seconds for a response
       echo " $server is unreachable "
       ((COUNT_UNREACHABLE+=1))
 fi
done
 
echo " the number of unreachable servers is $COUNT_UNREACHABLE "


if [[ $COUNT_UNREACHABLE -eq 0 ]];then # exit with error if any server is un reachable otherwise exit 0
  exit 0
else 
  exit 1
fi
