#!/bin/bash

for i in {1..254}
do
# echo 172.40.56.$i
        ping   -i0.1  -c2 W 1 172.40.56.$i &>/dev/null
        if [ $? -eq 0 ];then
          echo "172.40.56.$i is up"
        else
          echo "172.40.56.$i is down"
        fi
done

