#!/usr/bin/perl
# Maximboot.

print "Set update NODE JS\n";
print "install the required packages? [Y/n]\n";
chomp($req=<STDIN>);
if(lc ($req) eq "y" || $req eq ""){
	print "Installing required packages...\n";
	sleep(2);
	system("sudo apt update && sudo apt upgrade");
	system("sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates");
	system("curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -");	
	system("sudo apt -y install nodejs");
	system("sudo apt -y install gcc g++ make");
	system("sudo apt -y install npm");
	system("npm install http tls fs cluster url random-ua sync-request axios fake-useragent random-useragent fake-useragent cloudscraper request fs url randomstring axios cluster http2");
    system("npm install -g npm");
	system("npm update -g http tls fs cluster url random-ua sync-request axios fake-useragent random-useragent fake-useragent cloudscraper request fs url randomstring axios cluster http2");  
	system("npm install playwright-extra colors playwright-core");
	system("npx playwright install");
	system("npx playwright install-deps");
	
	system("sudo ufw disable");
	
	print "LL7Sussess!\n";

}

