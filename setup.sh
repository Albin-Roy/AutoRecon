if [ $(id -u) -ne 0 ]; then 
    echo "Please run as root"
    exit
else
    path=/usr/bin
    if [ ! -f "$path/amass" ]; then
        sudo apt-get install amass
    else
        echo "amass already installed!"
    fi

    if [ ! -f "$path/crtsh" ]; then
        git clone https://github.com/YashGoti/crtsh.py.git
        cd crtsh.py
        pip3 install -r requirements.txt
        mv crtsh.py crtsh
        chmod +x crtsh
        cp crtsh /usr/bin/
        cd ..
        rm -rf crtsh.py
    else
        echo "crtsh already installed!"
    fi

    if [ ! -f "$path/assetfinder" ]; then
        sudo apt-get install assetfinder
    else
        echo "assetfinder already installed!"    
    fi
    
    if [ ! -f "$path/sublist3r" ]; then
        sudo apt-get install sublist3r
    else
        echo "sublist3r already installed!"
    fi

    if [ ! -f "$path/findomain" ]; then
        wget https://github.com/Findomain/Findomain/releases/download/8.2.1/findomain-linux.zip
        unzip findomain-linux.zip
        chmod +x findomain
        mv findomain /usr/bin/
        rm findomain-linux.zip
    else
        echo "findomain already installed!"
    fi

    if [ ! -f "$path/httprobe" ]; then
        sudo apt-get install httprobe
    else
        echo "httprobe already installed!"
    fi

    if [ ! -f "$path/masscan" ]; then
        sudo apt-get install masscan
    else
        echo "masscan already installed!"
    fi

    if [ ! -f "$path/dig" ]; then
        sudo apt-get install dnsutils
    else
        echo "dig already installed!"
    fi

    if [ ! -f "$path/gowitness" ]; then
        wget https://github.com/sensepost/gowitness/releases/download/2.4.2/gowitness-2.4.2-linux-amd64
        chmod +x gowitness-2.4.2-linux-amd64
        mv gowitness-2.4.2-linux-amd64 /usr/bin/gowitness
    else
        echo "gowitness already installed!"
    fi

    if [ ! -f "$path/waybackurls" ]; then
        wget https://github.com/tomnomnom/waybackurls/releases/download/v0.1.0/waybackurls-linux-amd64-0.1.0.tgz
        tar -xvf waybackurls-linux-amd64-0.1.0.tgz
        chmod +x waybackurls
        mv waybackurls /usr/bin/
        rm waybackurls-linux-amd64-0.1.0.tgz
    else
        echo "waybackurls already installed!"
    fi

    if [ ! -f "$path/autorecon" ]; then
    chmod +x autorecon
    cp autorecon /usr/bin
    else
        echo "autorecon already installed!"
    fi
fi