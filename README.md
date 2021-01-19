Blacklist ipv4 addresses from a list within a text file. 

Blacklist many key ip nodes of China, Russia, and North Korea from your web server (or, just your Linux desktop environment)

Not all of the ip addresses in the blacklist.txt file have been tested extensively for geolocation, so use the list at your own risk.

That being said, any list you come up with yourself can be used in its place, as long as the file name and format is the same.

Enter the following commands in your Linux terminal within the directory of the cloned repository: 

• “sudo apt-get install ipset”

• Create a new directory called blackList in your home directory

• Copy or move blacklist.txt to the blackList directory

• Make add2Blacklist.sh executable “sudo chmod a+x add2Blacklist.sh”

• Copy or move add2Blacklist.sh to bin, so it can be run from anywhere

• If /etc/rc.local does not exist, create it

• Write the following to /etc/rc.local:

#!/bin/bash -e

add2Blacklist.sh;
exit 0;

• Now, "sudo chmod a+x /etc/rc.local" and it will run every time you restart your server

• To block additional ip addresses, enter "echo 'ip.add.re.ss' >> ~/blackList/blacklist.txt" and they will be blocked upon next reboot

• Some additional troublesome ip addresses which I have had to ban are included in the blistFromFail2Ban text file

• The ip nodes from associated countries were gathered from the country.db file which I retrieved from some site out there somewhere...

• Other countries can be blocked by utilizing the grep command with the appropriate country code.

• For example, "grep sg ~/blackList/country.db | xargs awk '{print $1}' >> ~/blackList/blacklist.txt" will append Singapore's 
relevant ip nodes to the blacklist file.

• EZ...

