#!/bin/sh

file="/tmp/pid.save"
sec=${1:-1}

if [ -f $file ]; then
    # echo "kill the process"
    kill $(cat $file)
    rm $file
  else
  # echo "create the process"
  while :; do
    sleep $sec
    pid=$(pidof i3lock)
    if [ $(echo $?) -eq 0 ]; then
      kill $pid 2>/dev/null
    fi
  done&
  echo "$!" > $file
fi
