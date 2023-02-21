# AutoRecon

## Description

Automation recon tool for small, medium and large scope.



## Functionality

Reconnaissance or Information Gathering is the initial step of the Penetration Testing or Bug Bounty process. Knowing about the target is very important while performing penetration testing. The information about the target collected serves as the milestone while penetrating the target.

- Automates the process on all domains provided.

- Gathers subdomains of each domain using different tools.

- Combines all subdomains, remove duplicates and checks for alive targets.

- Scans for open ports.

- Collects archives of all subdomains.

- Takes screenshots of each subdomain.



## Installation

Before installation switch to ROOT user if not.

```bash
chmod +x setup.sh
./setup.sh
```

## Usage

1. Feed all domains to a text file.

2. Run the script.
   
   ```bash
   autorecon -r root_domains.txt
   ```

3. Results for each root-domain will be saved under root_domains directory.

                                       AND

1. To check recent alive targets:
   ```bash
   autorecon -a root_domains.txt
   ```   



## Tools Used

- amass

- crtsh

- assetfinder

- sublist3r

- findomain

- httprobe

- masscan

- waybackurls

- dig

- gowitness
