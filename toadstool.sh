#!/bin/sh
#apt-get update && apt-get upgrade;

echo "        __.....__		";
echo "     .'' _  o    ''.	";
echo "   .' O (_)     () o'.	";
echo "  .           O       .	";
echo " . ()   o__...__    O  .	";
echo ". _.--'''       ''''--._ .";
echo ":'                     ';	";
echo " '-.__    :   :    __.-'	";
echo "      '''-:   :-''	";
echo "         J     L		";
echo "         :     :		";
echo "        J       L		";
echo "        :       :		";
echo "        '._____.' 	";
echo "  ---- Toadstool v.01 	";
# Menu Categories:
# Hash Cracking Tools
#  john -> Kali
#  hashcat -> here
#  cewl -> Kali 
#  jwt-cracker -> here
#  rarcrack -> 
#  stegcracker -> here

# Radio Frequency (Non-Wifi)
# Wifi  / Bluetooth Tools
# Forensics
# Static Analysis
# Fuzzing
# Reverse Engineering


# Kali Tools
echo "Downloading Kali Tools";
git clone https://github.com/LionSec/katoolin.git && sudo cp katoolin/katoolin.py /usr/bin/katoolin;
chmod +x /usr/bin/katoolin;

# Binary Analysis Tools
# Veles - 2018.05

wget https://github.com/codilime/veles/releases/download/2018.05.0.TIF/Veles_2018.05_64bit_Ubuntu1604.deb;
sudo dpkg -i Veles_2018.05_64bit_Ubuntu1604.deb;

echo "************** INSTALLING *****************";
echo "             -- ctf-tools --               ";
echo "from https://github.com/zardus/ctf-tools.git";
echo "*******************************************";
git clone https://github.com/zardus/ctf-tools.git; 
echo "************** INSTALLING *****************";
echo "             -- pwntools --                ";
echo "from https://github.com/Gallopsled/pwntools";
echo "*******************************************";
echo " ///// Installing Required Packages //////";
echo " ///   for pwntools                   ///";
apt-get install python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential;
pip install --upgrade pip;
echo " ==== Installing pwntools ==== ";
pip install --upgrade pwntools;
echo "************** INSTALLING *****************";
echo "            -- RSA CTF Tool --             ";
echo "from https://github.com/Ganapati/RsaCtfTool";
echo "*******************************************";
git clone https://github.com/Ganapati/RsaCtfTool.git
echo " ///// Installing Required Packages //////";
echo " ///   for RSA CTF Tool                ///";
sudo apt-get install libgmp3-dev libmpc-dev;
cd RsaCtfTool/;
pip install -r "requirements.txt";
cd ../;
echo "## SUCCESS: RSA CTF Tool ready to use ##";
echo "--> launch with: python2.7 RsaCtfTool.py";
echo "************** INSTALLING *****************";
echo "            -- shellpop --             	 ";
echo "from https://github.com/0x00-0x00/shellpop ";
echo "*******************************************";
git clone https://github.com/0x00-0x00/ShellPop.git
cd ShellPop;
echo " ///// Installing Required Packages //////";
echo " ///   for ShellPop                ///";
apt-get install python-argcomplete metasploit-framework -y;
pip install -r requirements.txt;
python setup.py install;
echo "## SUCCESS: ShellPop ##";
echo "--> launch with: shellpop";
echo "restart terminal to get autocomplete";
echo "************** INSTALLING *****************";
echo "                -- isf --             	 ";
echo "from https://github.com/dark-lbp/isf	 ";
echo "*******************************************";
git clone https://github.com/dark-lbp/isf/;
cd isf;
pip install -r "requirements.txt";
echo "## SUCCESS: isf ##";
echo "--> launch with: python isf.py";
echo "************** INSTALLING *****************";
echo "             -- ida demo --             	 ";
echo "from https://out7.hex-rays.com/files/idafree70_linux.run ";
echo "*******************************************";
wget -c https://out7.hex-rays.com/files/idafree70_linux.run; 
chmod +x idafree70_linux.run;
./idafree70_linux.run;
echo "## SUCCESS: ida ##";
echo "************** INSTALLING *****************";
echo "             -- pyrebox --             	 ";
echo "from https://github.com/Cisco-Talos/pyrebox/ ";
echo "*******************************************";
git clone https://github.com/Cisco-Talos/pyrebox.git;
cd pyrebox;
echo " ///// Installing Required Packages //////";
echo " ///   for pyrebox                ///";
sudo apt-get install build-essential zlib1g-dev pkg-config libglib2.0-dev binutils-dev libboost-all-dev autoconf libtool libssl-dev libpixman-1-dev libpython-dev python-pip virtualenv python-capstone; 
./build.sh;
cd ../;
echo "************** INSTALLING *****************";
echo "       -- unix privesc check --        	 ";
echo "from https://github.com/pentestmonkey/ ";
echo "*******************************************";
git clone https://github.com/pentestmonkey/unix-privesc-check.git;
echo "## SUCCESS: unix privesc checker  ##";
echo "--> launch with: ./upc.sh";

echo "************** INSTALLING *****************";
echo "     		 -- Hwacha --        	 ";
echo "from https://github.com/n00py/Hwacha/ ";
echo "*******************************************";
git clone https://github.com/n00py/Hwacha.git;
pip install paramiko;
echo "## SUCCESS: Hwacha  ##";
echo "--> launch with: python hwacha.py "

echo "************** INSTALLING *****************";
echo "     	 -- Shellter --        	 ";
echo "from https://www.shellterproject.com/ ";
echo "*******************************************";
sudo apt-get install shellter;

echo "************** INSTALLING *****************";
echo "     	 -- Avet --        	 ";
echo "from https://github.com/govolution/avet ";
echo "*******************************************";
git clone https://github.com/govolution/avet.git;
cd avet;
./install.sh;
echo "## SUCCESS: Hwacha  ##";
echo "--> launch with: python hwacha.py "
echo "************** INSTALLING *****************";
echo "     	 -- Hashcat --        	 ";
echo "from https://hashcat.net/files/ ";
echo "*******************************************";
wget https://hashcat.net/files/hashcat-5.0.0.7z; 
7z x hashcat-5.0.0.7z;
echo "## SUCCESS: Hashcat  ##";
echo "--> launch with: ./hashcat64.bin "

echo "************** INSTALLING *****************";
echo "     	 -- pupy --        	 ";
echo "from https://github.com/n1nj4sec/pupy ";
echo "*******************************************";
echo " ///// Installing Required Packages //////";
echo " ///   for pupy                ///";
sudo apt-get install git libssl1.0-dev libffi-dev python-dev python-pip tcpdump python-virtualenv;
git clone --recursive https://github.com/n1nj4sec/pupy;
cd pupy;
python create-workspace.py -DG pupyw;
export PATH=$PATH:~/.local/bin;
echo "## SUCCESS: Pupy  ##";
echo "--> launch with: pupysh, pupygen or pupysh-update "
echo "************** INSTALLING *****************";
echo "     	 -- Autosploit --        	 ";
echo "from https://github.com/NullArray/Autosploit ";
echo "*******************************************";
sudo -s << EOF
git clone https://github.com/NullArray/Autosploit.git
cd AutoSploit
chmod +x install.sh
./install.sh
python2 autosploit.py
EOF
echo "## SUCCESS: autosploit  ##";
echo "--> launch with: python autosploit.py "
echo "************** INSTALLING *****************";
echo "     	 -- scapy --        	 ";
echo "from https://github.com/secdev/scapy ";
echo "*******************************************";
git clone https://github.com/secdev/scapy
echo "## SUCCESS: scapy  ##";
echo "--> launch with: python ./run_scapy ";
echo "************** INSTALLING *****************";
echo "     	 -- crackmapexec --        	 ";
echo "from https://github.com/byt3bl33d3r/CrackMapExec/wiki/Installation#debianubuntu ";
echo "*******************************************";
sudo apt-get install -y libssl-dev libffi-dev python-dev build-essential;
pip install crackmapexec;
echo "## SUCCESS: crackmapexec  ##";
echo "--> launch with: cme ";
echo "************** INSTALLING *****************";
echo "     	 -- bettercap --        	 ";
echo "from github.com/bettercap/bettercap ";
echo "*******************************************";
go get github.com/bettercap/bettercap
echo "## SUCCESS: bettercap  ##";
echo "--> launch with: bettercap ";
echo "************** INSTALLING *****************";
echo "     	 -- fluxion --        	 ";
echo "from github.com/FluxionNetwork/fluxion ";
echo "*******************************************";
git clone https://www.github.com/FluxionNetwork/fluxion.git
echo "## SUCCESS: fluxion  ##";
echo "--> launch with: sudo ./fluxion.sh -i";

echo "************** INSTALLING *****************";
echo "     	 -- veil --        	 ";
echo "from github.com/Veil-Framework/Veil ";
echo "*******************************************";
sudo apt -y install veil;
/usr/share/veil/config/setup.sh --force --silent
echo "## SUCCESS: veil  ##";
echo "--> launch with: sudo ./etc/veil/Veil.py";

echo "************** INSTALLING *****************";
echo "     	 -- jwt-cracker --        	 ";
echo "from github.com/lmammino/jwt-cracker ";
echo "*******************************************";
npm install --global jwt-cracker;
echo "## SUCCESS: jwt-cracker  ##";
echo "--> launch with: jwt-cracker <token> [<alphabet>] [<maxLength>]"; 
echo "************** INSTALLING *****************";
echo "     	 -- StegCracker --        	 ";
echo "from github.com/Paradoxis/StegCracker/ ";
echo "*******************************************";
sudo apt-get install steghide -y;
sudo curl https://raw.githubusercontent.com/Paradoxis/StegCracker/master/stegcracker > /usr/local/bin/stegcracker;
sudo chmod +x /usr/local/bin/stegcracker;
echo "## SUCCESS: stegcracker  ##";
echo "--> launch with: stegcracker <file> [<wordlist>]";
echo "************** INSTALLING *****************";
echo "     	 -- Tor --        	 ";
echo "from torproject.org ";
echo "*******************************************";
wget https://www.torproject.org/dist/torbrowser/8.0.6/tor-browser-linux64-8.0.6_en-US.tar.xz
tar -xvf tor-browser-linux64-8.0.6_en-US.tar.xz;
echo "## SUCCESS: tor  ##";
echo "--> launch with: ##";
echo "************** INSTALLING *****************";
echo "     	 -- scanless --        	 ";
echo "from github.com/vesche/scanless ";
echo "*******************************************";
pip install scanless --user;
echo "## SUCCESS: scanless  ##";
echo "--> launch with: scanless ";

echo "************** INSTALLING *****************";
echo "     	 -- masscan --        	 ";
echo "from github.com/robertdavidgraham/masscan ";
echo "*******************************************";
echo " ///// Installing Required Packages //////";
echo " ///   for massscan              ///";
sudo apt-get install git gcc make libpcap-dev;
cd masscan;
make -j 2;
echo "## SUCCESS: massscan  ##";
echo "--> launch with: bin/massscan ";
cd ../;
echo "************** INSTALLING *****************";
echo "     	 -- smbmap --        	 ";
echo "from github.com/ShawnDEvans/smbmap.git ";
echo "*******************************************";
git clone https://github.com/ShawnDEvans/smbmap.git;
cd smbmap;
pip install -r requirements.txt;
echo "## SUCCESS: smbmap  ##";
echo "--> launch with: python smbmap.py ";
echo "************** INSTALLING *****************";
echo "     	 -- xray --        	 ";
echo "from github.com/evilsocket/xray ";
echo "*******************************************";
go get github.com/evilsocket/xray;
cd $GOPATH/src/github.com/evilsocket/xray/;
make;
cd ../;
echo "## SUCCESS: xray  ##";
echo "--> launch with: xray -shodan-key YOUR_SHODAN_API_KEY -domain TARGET_DOMAIN ";
echo "************** INSTALLING *****************";
echo "     	 -- fierce --        	 ";
echo "from github.com/mschwager/fierce ";
echo "*******************************************";
pip3 install fierce;
echo "## SUCCESS: fierce  ##";
echo "--> launch with: fierce -h ";
echo "************** INSTALLING *****************";
echo "     	 -- RootHelper --        	 ";
echo "from github.com/NullArray/RootHelper ";
echo "*******************************************";
git clone https://github.com/NullArray/RootHelper.git
echo "## SUCCESS: RootHelper  ##";
echo "--> launch with: ./roothelper.sh ";

echo "You can install Kali tools with: sudo katoolin";
echo "You can install CTF tools individually by navigating to ctf-tools/";


# Frida
pip install frida-tools;

#apt-get install <package name> -y
