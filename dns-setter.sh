#!/bin/bash

#a simple script that sets OpenDNS 
echo nameserver 208.67.222.222 | sudo cat>> /etc/resolvconf/resolv.conf.d/tail
sudo resolvconf -u

exit

