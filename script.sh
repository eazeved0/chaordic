#!/bin/bash

export NVM_DIR="/root/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

NVM=`nvm ls-remote |tail -n1`
nvm install $NVM
npm install express


PROC=`nproc`

#!/bin/bash
for (( c=1; c<=$PROC; c++ ))
do
echo "serve('0.0.0.0', 900$c);" >> /root/chaordic/clusterv4.js
echo "server web$c 127.0.0.1:900$c check" >> /etc/haproxy/haproxy.cfg 
done
