#!/bin/bash
resize -s 28 88 > /dev/null 2>&1;
clear
banner(){
	tput setaf 208; tput bold
	echo -n '                      ';
	echo '-= Juke Security Network by Red Team CSS  Ã‚Â©2020 =-' ;
	tput setaf 48;

	echo $'\n      _  _____ _   _      _  \n     | |/ ____| \ | |    | |  \n     | | (___ |  \| | ___| |_ \n _   | |\___ \| . ` |/ _ \ __|\n| |__| |____) | |\  |  __/ |_ \n \____/|_____/|_| \_|\___|\__|\n';

	tput sgr0;
	tput setaf 50;
	echo -en '     ';
	echo $'Welcome to Juke Security Network Testing Ver 2.0!\n' ;
	tput setaf 48;
	tput setaf 50;echo -en '**************';
	tput setaf 48;echo -en 'MENU';
	tput setaf 50;echo '***************';
	tput setaf 50;echo -en '*';tput setaf 154;             echo -en '  1. Whois information       ';
	tput setaf 50;echo '  *';echo -en '*';tput setaf 197;echo -en '  2. DNS Lookup              ';
	tput setaf 50;echo '  *';echo -en '*';tput setaf 3;  echo -en '  3. Web Technology Detection';
	tput setaf 50;echo '  *';echo -en '*';tput setaf 51; echo -en '  4. IP Locator              ';
	tput setaf 50;echo '  *';echo -en '*';tput setaf 33; echo -en '  5. NMAP                    ';
	tput setaf 50;echo '  *';echo -en '*';tput setaf 208;echo -en '  6. Check Subdomain Web     ';
	tput setaf 50;echo '  *';echo -en '*';tput setaf 118;echo -en '  7. Check WAF               ';
	tput setaf 50;echo '  *';echo -en '*';tput setaf 248;echo -en '  8. Tools SQlMap            ';
	tput setaf 50;echo '  *';echo -en '*';tput setaf 105;echo -en '  9. Tools XSS               ';
	tput setaf 50;echo '  *';echo -en '*';tput setaf 10; echo -en ' 10. HTTP Header             ';
	tput setaf 50;echo '  *';echo -en '*';tput setaf 9;  echo -en ' 11. Traceroute              ';
	tput setaf 50;echo '  *';echo -en '*';tput setaf 11; echo -en ' 12. Testing DDOS            ';
	tput setaf 50;echo '  *';echo -en '*';tput setaf 12; echo -en ' 13. Check Vuln DDOS         ';
	tput setaf 50;echo '  *';echo -en '*';tput setaf 12; echo -en ' 14. Reload                  ';
	tput setaf 50;echo '  *';echo -en '*';tput setaf 1;  echo -en ' 15. exit                    ';
	tput setaf 50;echo -en '  *';echo $'\n*********************************';
	tput setaf 50;echo -en "Choose Number : ";
	tput sgr0;
}
banner
tput setaf 50;
read opt;
 if [[ opt -eq '1' ]]; # WHOIS
 then tput setaf 154;
echo -en "Enter the Website or IP Address: ";
read site;
whois $site;
tput smso;
tput blink;
tput setaf 1;
tput bold;
echo "Press any key to continue";
tput sgr0;
read key;
clear
/opt/JSNet/JSNet/JSNet.sh;
elif [[ opt -eq '2' ]]; # DNS LOOKUP
then tput setaf 197;
echo -en "Enter the Website or IP Address: ";
tput setaf 50;
read site;
tput sgr0
dig  $site;
tput smso;
 tput blink;
tput setaf 1;
tput bold;
echo "Press any key to continue";
tput sgr0;
read key;
clear
/opt/JSNet/JSNet/JSNet.sh;
 elif [[ opt -eq '3' ]]; # WHATWEB
then tput setaf 197;
echo -en "Enter the Website or IP Address: ";
tput setaf 50;
read site;
tput sgr0;
whatweb  $site;
tput smso;
 tput blink;
tput setaf 1;
tput bold;
echo "Press any key to continue";
tput sgr0;
read key;
clear
/opt/JSNet/JSNet/JSNet.sh;
 elif [[ opt -eq '4' ]]; # IP LOCATOR
 then tput setaf 51;
echo -en "Enter the IP address: ";
read ip;
curl ipinfo.io/$ip;
tput smso;
 tput blink;
tput setaf 1;
tput bold;
echo "Press any key to continue";
tput sgr0;
read key;
clear
/opt/JSNet/JSNet/JSNet.sh;
 elif [[ opt -eq '5' ]]; #NMAP
 then tput setaf 33;

tput setaf 50;echo '  *';echo -en '*';tput setaf 197;echo -en '  Press 1 for basic scan             ';
	tput setaf 50;echo '  *';echo -en '*';tput setaf 3;  echo -en ' 2 for extensive scan: ';
read scan;
 	if [[ scan -eq "1" ]];
 	then echo -en "Enter the website or the IP address: ";
	read site;
	nmap $site;
	tput smso;
 	tput blink;
	tput setaf 1;
	tput bold;
	echo "If the Host is down or blocking the ping probes, try the extensive scan(option 2). Press any key to continue";
	tput sgr0;
	read key;
	clear
	/opt/JSNet/JSNet/JSNet.sh;
 	elif [[ scan -eq "2" ]];
 	then echo -en "Enter the website or the IP address: ";
	read site;
	echo "THIS SCAN is RUNNING, Sabar Kang!";
	sudo nmap -sS -sV -vv --top-ports 1000 -T4 -O $site;
	tput smso;
 	tput blink;
	tput setaf 1;
	tput bold;
	echo "Press any key to continue";
	tput sgr0;
	read key;
	clear
	/opt/JSNet/JSNet/JSNet.sh
	else
	tput smso;
	tput blink;
	tput setaf 1;
	tput bold;
	echo "Please choose a valid option! Press Enter to continue";
	tput sgr0;
	read key;
	clear
	/opt/JSNet/JSNet/JSNet.sh 
 	fi;
 elif [[ opt -eq '6' ]]; # SubDomain
then tput setaf 197;
echo -en "Enter the Website: ";
tput setaf 50;
read site;
tput sgr0;
python /opt/JSNet/JSNet/Sublist3r/sublist3r.py -d  $site;
tput smso;
 tput blink;
tput setaf 1;
tput bold;
echo "Press any key to continue";
tput sgr0;
read key;
clear
/opt/JSNet/JSNet/JSNet.sh;
 elif [[ opt -eq '7' ]]; # Cek Firewall
then tput setaf 197;
echo -en "Enter the Website or IP Address: ";
tput setaf 50;
read site;
tput sgr0;
wafw00f $site;
tput smso;
 tput blink;
tput setaf 1;
tput bold;
echo "Press any key to continue";
tput sgr0;
read key;
clear
/opt/JSNet/JSNet/JSNet.sh;
elif [[ opt -eq '8' ]]; # SQLMap 
then tput setaf 190;
echo -en "Enter the Website or IP Address Vuln SQL Injection : ";
read site;
sqlmap -u $site --dbs;
tput smso;
tput blink;
tput setaf 1;
tput bold;
echo $'\nPress any key to continue';
tput sgr0;
read key;
clear
/opt/JSNet/JSNet/JSNet.sh;
 elif [[ opt -eq '9' ]]; # XSS
 then tput setaf 7;
echo -en "Enter the Website or IP Address Vuln XSS : ";
read site;
XSpear -u "$site" -v 1;
tput smso;
 tput blink;
tput setaf 1;
tput bold;
echo $'\nPress any key to continue';
tput sgr0;
read key;
clear
/opt/JSNet/JSNet/JSNet.sh;
 elif [[ opt -eq '10' ]]; # HTTP HEADER
 then tput setaf 10;
echo -en "Enter the website address (without http://): ";
read site;
curl -I $h$site;
tput smso;
 tput blink;
tput setaf 1;
tput bold;
echo "Press any key to continue";
tput sgr0;
read key;
clear
/opt/JSNet/JSNet/JSNet.sh;
 elif [[ opt -eq '11' ]]; # TRACEROUTE
 then tput setaf 9;
echo -en "Enter the Website or IP Address: ";
read site;
traceroute $site;
tput smso;
tput blink;
tput setaf 1;
tput bold;
echo "Press any key to continue";
tput sgr0;
read key;
clear
/opt/JSNet/JSNet/JSNet.sh;
 elif [[ opt -eq '12' ]]; # DDOS
then tput setaf 197;
echo -en "Enter the Website or IP Address with http:// or https:// : ";
tput setaf 50;
read site;
tput sgr0;
slowhttptest -c 10000 -H -g -o apache_no_mitigation -i 10 -r 200 -t GET -u $site;
tput smso;
 tput blink;
tput setaf 1;
tput bold;
echo "Press any key to continue";
tput sgr0;
read key;
clear
/opt/JSNet/JSNet/JSNet.sh;
 elif [[ opt -eq '13' ]]; # Checking DDOS
then tput setaf 197;
echo -en "Enter the Website or IP Address: ";
tput setaf 50;
read site;
tput sgr0;
nmap --script http-slowloris-check $site;
tput smso;
 tput blink;
tput setaf 1;
tput bold;
echo "Press any key to continue";
tput sgr0;
read key;
clear
/opt/JSNet/JSNet/JSNet.sh;
 elif [[ opt -eq '14' ]]; #RELOAD
 then clear
/opt/JSNet/JSNet/JSNet.sh;
 elif [[ opt -eq '15' ]]; #EXIT
 then clear;
 exit;
else
	tput smso;
	tput blink;
	tput setaf 1;
	tput bold;
	echo "Please Choose a valid option! Press Enter to continue";
	tput sgr0;
	read key;
	clear
	/opt/JSNet/JSNet/JSNet.sh;
 fi;
