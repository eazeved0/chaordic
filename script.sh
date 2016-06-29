#!/bin/bash

PROC=`nproc`

#!/bin/bash
for (( c=1; c<=$PROC; c++ ))
do
echo "serve('0.0.0.0', 900$c);" >> /root/clusterv4.js
echo "server web$c 127.0.0.1:900$c check" >> /etc/haproxy/haproxy.cfg 
done
