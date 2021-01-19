Blacklist China, Russia, and North Korea from your web server

Guide to Blocking IP Addresses of China, Russia, and North Korea

Obviously, this is not foolproof, because they can always use a VPN located elsewhere, but it’s better than nothing…

This guide will show you how to block direct connections from China, Russia, and North Korea by entering the following commands in quotes on your Linux server.

• “sudo apt-get install ipset”
• Create a new directory called blackList in your home directory
• Copy or move blacklist.txt to the blackList directory
• Make add2Blacklist.sh executable “sudo chmod a+x add2Blacklist.sh”
• Copy or move add2Blacklist.sh to bin, so it can be run from anywhere
• If /etc/rc.local does not exist, create it
• Put the following command at the end of /etc/rc.local: add2Blacklist.sh
• Now, it will run every time you restart your server
• To block additional ip addresses, enter "echo 'ip.add.re.ss' >> ~/blackList/blacklist.txt" and they will be blocked upon next reboot
• EZ...

