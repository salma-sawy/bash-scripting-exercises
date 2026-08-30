#!/usr/bin/env bash

set -euo pipefail

help()
{
 echo "Usage $0 <directory>"
 echo 
}

if [[ "$#" -eq 0 ]];then # if there is no arguments
 help
 exit 1
fi


if [[ "$1" == "-h"  ]];then  # call help function
 help
 exit 1
fi


readonly DIRPATH="$1"   # the directory


if [[ ! -d "$DIRPATH" ]];then 
 echo " the dir not found "
  exit 1
fi

echo " Number of log files are older than 7 days :  $( find "$DIRPATH" -type f -mtime +7 | grep "\.log" | wc -l) "

