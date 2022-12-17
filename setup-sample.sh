#!/bin/bash

# Check if running as root
if [ $(id -u) -ne 0 ]; then 
    echo "Please run as root"
    exit
fi

path=/usr/bin

# Create an array of all the tools to be installed
tools=("amass" "crtsh" "assetfinder" "sublist3r" "findomain" "httprobe" "masscan" "dnsutils" "gowitness" "waybackurls" "autorecon")



# Loop through the array and install each tool
for tool in "${tools[@]}"; do
    if [ ! -f "$path/$tool" ]; then
        try:
            case $tool in
                "amass")
                    sudo apt-get install amass
                    ;;
                "crtsh")
                    git clone https://github.com/YashGoti/crtsh.py.git
                    cd crtsh.py
                    pip3 install -r requirements.txt
                    mv crtsh.py crtsh
                    chmod +x crtsh
                    cp crtsh /usr/bin/
                    cd ..
                    rm -rf crtsh.py
                    ;;
                "assetfinder")
                    sudo apt-get install assetfinder
                    ;;
                "sublist3r")
                    sudo apt-get install sublist3r
                    ;;
                "findomain")
                    wget https://github.com/Findomain/Findomain/releases/download/8.2.1/findomain-linux.zip
                    unzip findomain-linux.zip
                    chmod +x findomain
                    mv findomain /usr/bin/
                    rm findomain-linux.zip
                    ;;
                "httprobe")
                    sudo apt-get install httprobe
                    ;;
                "masscan")
                    sudo apt-get install masscan
                    ;;
                "dnsutils")
                    sudo apt-get install dnsutils
                    ;;
                "gowitness")
                    wget https://github.com/sensepost/gowitness/releases/download/2.4.2/gowitness-2.4.2-linux-amd64
                    chmod +x gowitness-2.4.2-linux-amd64
                    mv gowitness-2.4.2-linux-amd64 /usr/bin/gowitness
                    ;;
                "waybackurls")
                    wget https://github.com/tomnomnom/waybackurls/releases/download/v0.1.0/waybackurls-linux-amd64-0.1.0.tgz
                    tar -xvf waybackurls-linux-amd64-0.1.0.tgz
                    chmod +x waybackurls
                    mv waybackurls /usr/bin/
                    rm waybackurls-linux-amd64-0.1.0.tgz
                    ;;
                "autorecon")
                    chmod +x autorecon
                    cp autorecon /usr/bin
                    ;;
            esac
        fi
    done
        except Exception as e:
            print("An error occurred while installing tool:", tool)
            print(e)
