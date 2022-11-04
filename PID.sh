#! /bin/bash

pid=$1
function PROC()
{
   #echo $pid	
   while true;
   do 
    procc=$(ps -ax | awk '{print $1}' | grep ^$pid$)
     #echo procc = $procc
    if [[ $procc != $pid ]]; then
    	echo pid $pid is down > /home/nbesman/warning-pid:$pid:is-down.txt
    else
    	echo pid $pid is up 
    fi
   sleep 10
   done 
}
