#!/bin/sh

POOL6=${1:-"64:ff9b::/96"}

jool instance add --iptables --pool6 ${POOL6} default

iptables -t mangle -A PREROUTING -j JOOL
ip6tables -t mangle -A PREROUTING -j JOOL
