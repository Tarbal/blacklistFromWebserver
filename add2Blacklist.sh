#!/bin/bash
for i in `cat blacklist.txt`; do
	ipset add blacklist $i
done
