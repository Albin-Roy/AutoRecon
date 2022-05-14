apt-get install amass

git clone https://github.com/YashGoti/crtsh.py.git
cd crtsh.py
pip install -r requirements.txt
mv crtsh.py crtsh
chmod +x crtsh
cp crtsh /usr/bin/
cd ..
rm -rf crtsh.py


apt-get install assetfinder

apt-get install sublist3r

wget https://github.com/findomain/findomain/releases/latest/download/findomain-linux
chmod +x findomain-linux
mv findomain-linux /usr/bin/

apt-get install httprobe

apt-get install nmap

apt-get install eyewitness

chmod +x autorecon
cp autorecon /usr/bin