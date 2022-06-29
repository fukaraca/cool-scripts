#!/bin/bash

# a simple script that removes dns settings. 
sed '/208.67.222.222/d' /etc/resolvconf/resolv.conf.d/tail > tempch && sudo mv tempch /etc/resolvconf/resolv.conf.d/tail
sudo resolvconf -u
exit
