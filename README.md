# AutoRecon

## Description

Automation recon tool for small, medium and large scope.



## Functionality

Reconnaissance or Information Gathering is the initial step of the Penetration Testing or Bug Bounty process. Knowing about the target is very important while performing penetration testing. The information about the target collected serves as the milestone while penetrating the target.

- Automates the process on all root domains provided.

- Gathers subdomains of each root domain using different tools.

- Combines all subdomains, remove duplicates and checks for alive targets.

- Scans for open ports.

- Takes screenshots of each subdomain.



## Installation

Before installation switch to ROOT user if not.

```bash
chmod +x install.sh
./install.sh
```

## Usage

1. Feed all root domains to a text file.

2. Run the script.
   
   ```bash
   autorecon root_domains.txt
   ```

3. Results for each root-domain will be saved under root_domains directory.



## Tools Used

- amass

- crtsh

- assetfinder

- sublist3r

- findomain

- httprobe

- nmap

- eyewitness
