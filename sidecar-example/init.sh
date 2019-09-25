#!/bin/bash
echo set up iptables
# Forward TCP traffic on port 80 to port 8000 on the eth0 interface.
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 80 -j REDIRECT --to-port 8000

echo list iptables
# List all iptables rules.
iptables -t nat --list

