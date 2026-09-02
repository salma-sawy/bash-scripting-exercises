#!/usr/bin/env bash

# scriptname -e (environment) and -v (version)

set -euo pipefail

help()
{
   echo " Usage $0 -e (environment) and -v (version) " 
}

environment=""
version=""

while getopts ":e:v:" opt;
do

 case $opt in 
  
  e)
   if [[ "$OPTARG" == -* ]];then
      echo " missing val" 
      exit 1
  fi
  environment="$OPTARG" ;;
  v)
   if [[ "$OPTARG" == -* ]];then
      echo " missing val" 
      exit 1
   fi
   version="$OPTARG" ;;
  :)
        echo "Option -$OPTARG requires a value"
        help
        exit 1
         ;;
  \?)
        echo "Invalid option: -$OPTARG"
        help
        exit 1
        ;;
esac
done

if [[ -z "$environment" ]];then
 echo " environment val is empty"
 help
 exit 1
fi

if [[ -z "$version" ]];then
 echo " version val is empty"
 help
 exit 1
fi

echo " environment is $environment version is $version "


