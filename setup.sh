if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
    exit
else
    path=/usr/bin
    if [ ! -f "$path/amass" ]; then
        sudo apt-get install amass
    fi

    git clone https://github.com/YashGoti/crtsh.py.git
    cd crtsh.py
    pip install -r requirements.txt
    mv crtsh.py crtsh
    chmod +x crtsh
    cp crtsh /usr/bin/
    cd ..
    rm -rf crtsh.py

    if [ ! -f "$path/assetfinder" ]; then
        sudo apt-get install assetfinder
    fi
    
    if [ ! -f "$path/sublist3r" ]; then
        sudo apt-get install sublist3r
    fi

    wget https://github.com/findomain/findomain/releases/latest/download/findomain-linux
    chmod +x findomain-linux
    mv findomain-linux /usr/bin/

    if [ ! -f "$path/httprobe" ]; then
        sudo apt-get install httprobe
    fi

    if [ ! -f "$path/masscan" ]; then
        sudo apt-get install masscan
    fi

    if [ ! -f "$path/dig" ]; then
        sudo apt-get install dnsutils
    fi

    if [ ! -f "$path/gowitness" ]; then
        wget https://github.com/sensepost/gowitness/releases/download/2.4.2/gowitness-2.4.2-linux-amd64
        chmod +x gowitness-2.4.2-linux-amd64
        mv gowitness-2.4.2-linux-amd64 /usr/bin/gowitness
    fi

    if [ ! -f "$path/waybackurls" ]; then
        wget https://github.com/tomnomnom/waybackurls/releases/download/v0.1.0/waybackurls-linux-amd64-0.1.0.tgz
        tar -xvf waybackurls-linux-amd64-0.1.0.tgz
        chmod +x waybackurls
        mv waybackurls /usr/bin/
        rm waybackurls-linux-amd64-0.1.0.tgz
    fi

    chmod +x autorecon
    cp autorecon /usr/bin
fi