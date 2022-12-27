#!/bin/bash
read -p "Are you ready to install it ? (y/n): " choise
case $choise in
	[yY]*)
		sudo apt install golang -y
		sudo apt update
		clear
		echo "Install HTTPX"
		go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
		echo "HTTPX has been installed"
		sleep 1
		echo "Install Subfinder"
		go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
		echo "Subfinder has been installed"
		sleep 1
		echo "Install Nuclei"
		go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
		echo "Nuclei has been installed"
		sleep 1
		sudo mv ~/go/bin/httpx /usr/bin/
		sudo mv ~/go/bin/subfinder /usr/bin/
		sudo mv ~/go/bin/nuclei /usr/bin/
		;;
	[nN]*)	
		echo "exit"
		exit;;
	*) exit;;
esac
