#!/bin/bash
# save as time-signal.sh
# gives a time signal every hour when connected to cron
time=$(date +%I)
count=0
while test $count -lt $time; do
        echo -e "\a"
        sleep 1 # sleep for one second
        count=$[$count+1]
done
sleep 3
checkMin=$(date +%M)
countMin=0
echo "Checking Min...."
sleep 1
if ( [ $checkMin -gt 15 ] && [ $checkMin -lt 30 ] )
then
 while test $countMin -lt 1; do
     echo -e "\a"
 sleep 1
     countMin=$[countMin+1]
 done
elif ( [ $checkMin -gt 30 ] && [ $checkMin -lt 45 ] )
then
 while test $countMin -lt 2; do
    echo -e "\a"
    sleep 1
    countMin=$[countMin+1]
 done
elif ( [ $checkMin -gt 45 ] && [ $checkMin -lt 60 ])
then
 while test $countMin -lt 3; do
    echo -e "\a"

    sleep 1
    countMin=$[countMin+1]
done
fi
