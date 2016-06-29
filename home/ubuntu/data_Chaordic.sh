#!/bin/bash

add-apt-repository -y ppa:vbernat/haproxy-1.5 -y
apt-get update -y && apt-get install -y haproxy htop build-essential libssl-dev git
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh |sh
cd /root && mv /.nvm .
git clone https://github.com/eazeved0/chaordic.git && cd chaordic
mv .bashrc /root && source /root/.bashrc
mv haproxy.cfg /etc/haproxy/haproxy.cfg
mv haproxy.conf /etc/rsyslog.d/haproxy.conf
mv nodes.conf /etc/init/nodes.conf
chmod +x script.sh && ./script.sh
chmod +x monitor.sh
service haproxy restart
service rsyslog restart
service nodes start
echo '* * * * * /root/monitor.sh' | crontab -
