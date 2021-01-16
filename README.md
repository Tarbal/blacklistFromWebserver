Blacklist China, Russia, and North Korea from your web server

Guide to Blocking IP Addresses of China, Russia, and North Korea

Obviously, this is not foolproof, because they can always use a VPN located elsewhere, but it’s better than nothing… since our government turns the blind eye...

This guide will show you how to block direct connections from China, Russia, and North Korea by entering the following commands in quotes on your Linux server.

• “sudo apt-get install ipset”
• “ipset create blacklist hash:ip hashsize 4096”
• Make add2Blacklist.sh executable “sudo chmod a+x add2Blacklist.sh”
• Run add2Blacklist.sh from the same directory as blacklist.txt “sudo ./add2Blacklist.sh”
• That is all...

