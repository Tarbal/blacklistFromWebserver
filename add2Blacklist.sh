#!/bin/bash
ipset create blacklist hash:ip hashsize 256000
for i in `cat ~/blackList/blacklist.txt`; do
	ipset add blacklist $i
done
