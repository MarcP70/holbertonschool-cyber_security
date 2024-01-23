# Passive Reconnaissance

    Amateur
    By: Yosri Ghorbel
    Weight: 1
    Your score will be updated once you launch the project review.
    Manual QA review must be done (request it when you are done with the project)


#### Concepts

*For this project, we expect you to look at this concept:*

- [Passive Reconnaissance](./Passive_Reconnaissance.pdf)

## Resources
#### Read or watch:

- [What is passive reconnaissance ?](https://www.techtarget.com/whatis/definition/passive-reconnaissance)
- [WHOIS](https://en.wikipedia.org/wiki/WHOIS)
- [What is DNS ?](https://www.cloudflare.com/learning/dns/what-is-dns/)
- [What is a DNS server ?](https://www.cloudflare.com/learning/dns/what-is-a-dns-server/)

#### References

- [Unified Kill Chain](https://www.unifiedkillchain.com/assets/The-Unified-Kill-Chain.pdf)
- [RFC-3912](https://www.ietf.org/rfc/rfc3912.txt)
- [whois](https://www.ibm.com/docs/en/aix/7.1?topic=w-whois-command)
- [dig](https://www.ibm.com/docs/en/aix/7.1?topic=d-dig-command)
- [dnslookup](https://www.ibm.com/docs/en/aix/7.1?topic=n-nslookup-command)
- [shodan.io](https://www.shodan.io/about/products)
- [DNSDumpster](https://dnsdumpster.com/footprinting-reconnaissance/)
- [Google Hacking](https://www.acunetix.com/websitesecurity/google-hacking/)

## Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

- What can we learn about a `Server`
- What is a `DNS server`
- What happens when we type `www.holbertonschool.com` and press `ENTER`
- How can we find the owner information for a `domain name`
- What is `dig`
- What is `nslookup`
- What are the different types of `DNS RECORDS`
- What is `DNS Dumpster`
- What is `Shodan.io`
- How can we find `subdomains`
- What is `subfinder`
- What is the difference between `Active reconnaissance` and `Passive reconnaissance`

## Requirements
### General

- Allowed editors: `vi`, `vim`, `emacs`.
- All your scripts will be tested on `Kali Linux`.
- All your scripts should be exactly two lines long (`$ wc -l` file should print 2)
- You must substitute the IP range for `$1`.
- All your files should end with a new line (Why?)
- The first line of all your files should be exactly `#!/bin/bash`.
- A `README.md` file, at the root of the folder of the project, is mandatory
- Your code should use the `Betty` style. It will be checked using `betty-style.pl` and `betty-doc.pl`
- All your files must be executable

<details>
<summary>Quiz Questions</summary>

Great! You've completed the quiz successfully! Keep going! (Show quiz)

##### Question #0

What activities are considered passive reconnaissance?

&#9745;    Retrieving the DNS records of a domain using a public DNS server.

&#9745;    Browsing job listings associated with the desired website.

&#9745;    Perusing news articles concerning the target company.

&#9744;    Contacting the company to gather information through social engineering tactics.

&#9744;    Gaining access to the company’s premises by posing as a repairman.

##### Question #1

What type of information can be obtained using the whois command?

&#9744;    The operating system of a remote host.

&#9745;    The registration information of a domain.

&#9744;    The DNS records of a domain.

&#9744;    The open ports on a remote host.

##### Question #2

What type of DNS record is used to map a domain name to an IP address?

&#9744;    MX record.

&#9744;    CNAME record.

&#9745;    A record.

&#9744;    TXT record.

##### Question #3

Which of the following tools can be used for passive reconnaissance?

&#9744;    Nmap

&#9744;    Metasploit

&#9744;    John The Ripper

&#9744;    Bettercap

&#9745;    dig

&#9745;    nslookup

##### Question #4

What is the difference between the dig and nslookup commands?

&#9744;    dig is used for DNS lookups, while nslookup is used for network scanning

&#9745;    dig provides more detailed information than nslookup

&#9744;    nslookup is used for DNS lookups, while dig is used for network scanning

&#9744;    nslookup provides more detailed information than dig

##### Question #5

Which Advanced Operator should we use in Google to search only for .tn domains ?

&#9744;    inurl:tn

&#9745;    site:tn

&#9744;    link:tn

&#9744;    intext:tn

##### Question #6

A tool that queries databases of domain names, IP addresses, and other information about the owners and registrars of websites.

&#9745;    whois

&#9744;    nmap

&#9744;    metasploit

&#9744;    gobuster

</details>

## Tasks
#### 0. Who is it ?
mandatory

Write a bash script that extract using `whois` scan in csv format:

- Registrar Information
- Admin Information
- Tech Information

*You are only allowed to use `awk` to format your output*
```
┌──(yosri㉿HBTN-LAB)-[~/holbertonschool-cyber_security/network_security/0x01_passive_reconnaissance]
└─$ ./0-whois.sh holbertonschool.com
┌──(yosri㉿HBTN-LAB)-[~/holbertonschool-cyber_security/network_security/0x01_passive_reconnaissance]
└─$ cat holbertonschool.com.csv
Registrant Name, Holberton Inc
Registrant Organization, Holberton Inc
Registrant Street, 5670 Wilshire Blvd suite 1802
Registrant City, Los Angeles
Registrant State/Province,
Registrant Postal Code, 90036
Registrant Country, US
Registrant Phone, +1.4156227634
Registrant Phone Ext,
Registrant Fax,
Registrant Fax Ext,
Registrant Email, 7da97d10931ddb501d08b8f88c7384bc-37846707@contact.gandi.net
Admin Name, Holberton Inc
Admin Organization, Holberton Inc
Admin Street, 5670 Wilshire Blvd Suite 1802
Admin City, Los Angeles
Admin State/Province, California
Admin Postal Code, 90036
Admin Country, US
Admin Phone, +1.4153580819
Admin Phone Ext,
Admin Fax,
Admin Fax Ext,
Admin Email, 624a82de74a4fa2b64fb39bbe08b290d-37876671@contact.gandi.net
Tech Name, Holberton Inc
Tech Organization, Holberton Inc
Tech Street, 5670 Wilshire Blvd Suite 1802
Tech City, Los Angeles
Tech State/Province, California
Tech Postal Code, 90036
Tech Country, US
Tech Phone, +1.4153580819
Tech Phone Ext,
Tech Fax,
Tech Fax Ext,
Tech Email, 2c420b43d982c37b7621f2015f3e107b-37876677@contact.gandi.net
```
**Repo**:

- GitHub repository: `holbertonschool-cyber_security`
- Directory: `network_security/0x01_passive_reconnaissance`
- File: `0-whois.sh`

0/8 pts
#### 1. A record
mandatory

Write a bash script that retrieve the **A record** of a specified domain using `nslookup` command:
```
┌──(yosri㉿HBTN-LAB)-[~/holbertonschool-cyber_security/network_security/0x01_passive_reconnaissance]
└─$ ./1-a_record.sh holbertonschool.com
Server:         8.8.8.8
Address:        8.8.8.8#53

Non-authoritative answer:
Name:   holbertonschool.com
Address: 75.2.70.75
Name:   holbertonschool.com
Address: 99.83.190.102
```
**Repo**:

- GitHub repository: `holbertonschool-cyber_security`
- Directory: `network_security/0x01_passive_reconnaissance`
- File: `1-a_record.sh`

0/8 pts
#### 2. MX Record
mandatory

Write a bash script that retrieve the **MX record** of a specified domain using `nslookup` command:
```
┌──(yosri㉿HBTN-LAB)-[~/holbertonschool-cyber_security/network_security/0x01_passive_reconnaissance]
└─$ ./2-mx_record.sh holbertonschool.com
Server:         8.8.8.8
Address:        8.8.8.8#53

Non-authoritative answer:
holbertonschool.com     mail exchanger = 1 aspmx.l.google.com.
holbertonschool.com     mail exchanger = 10 alt3.aspmx.l.google.com.
holbertonschool.com     mail exchanger = 10 alt4.aspmx.l.google.com.
holbertonschool.com     mail exchanger = 5 alt1.aspmx.l.google.com.
holbertonschool.com     mail exchanger = 5 alt2.aspmx.l.google.com.
```
**Repo**:

- GitHub repository: `holbertonschool-cyber_security`
- Directory: `network_security/0x01_passive_reconnaissance`
- File: `2-mx_record.sh`

0/8 pts
#### 3. Check the TXT
mandatory

Write a bash script that retrieve the **TXT record** of a specified domain using `nslookup` command:
```
┌──(yosri㉿HBTN-LAB)-[~/holbertonschool-cyber_security/network_security/0x01_passive_reconnaissance]
└─$ ./3-txt_record.sh holbertonschool.com
;; Truncated, retrying in TCP mode.
Server:         8.8.8.8
Address:        8.8.8.8#53

Non-authoritative answer:
holbertonschool.com     text = "1C8BC5F558"
holbertonschool.com     text = "MS=BB8A869E4E8A47D208F560DE7D83F199D1BB8F4F"
holbertonschool.com     text = "apple-domain-verification=sqTGlUgV9vVTnBuB"
holbertonschool.com     text = "dropbox-domain-verification=pvxn88z3e06i"
holbertonschool.com     text = "google-site-verification=lnffgexG_GGal6Fa53z0Ve4dJY4z4GXAmy1I2_ldotk"
holbertonschool.com     text = "intacct-esk=A3E9DCEA8FB6B747E0539A220D0A9719"
holbertonschool.com     text = "loaderio=67a0fbf5fb42755902d5415639d826a6"
holbertonschool.com     text = "v=spf1 include:mailgun.org include:_spf.google.com include:spf.exclaimer.net include:mail.zendesk.com include:servers.mcsv.net include:_spf.intacct.com ip4:104.209.35.28 ip4:191.237.4.149 ~all"
```
**Repo**:

- GitHub repository: `holbertonschool-cyber_security`
- Directory: `network_security/0x01_passive_reconnaissance`
- File: `3-txt_record.sh`

0/8 pts
#### 4. Dig it all !
mandatory

Write a bash script that retrieve All record of a specified domain using `dig` command:

*Your output should contains answers only, `noall`*
```
┌──(yosri㉿HBTN-LAB)-[~/holbertonschool-cyber_security/network_security/0x01_passive_reconnaissance]
└─$ ./4-dig_all.sh holbertonschool.com
holbertonschool.com.    300     IN      A       99.83.190.102
holbertonschool.com.    300     IN      A       75.2.70.75
holbertonschool.com.    300     IN      NS      ns-1455.awsdns-53.org.
holbertonschool.com.    300     IN      NS      ns-1619.awsdns-10.co.uk.
holbertonschool.com.    300     IN      NS      ns-176.awsdns-22.com.
holbertonschool.com.    300     IN      NS      ns-792.awsdns-35.net.
holbertonschool.com.    300     IN      SOA     ns-1455.awsdns-53.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400
holbertonschool.com.    300     IN      MX      1 aspmx.l.google.com.
holbertonschool.com.    300     IN      MX      10 alt3.aspmx.l.google.com.
holbertonschool.com.    300     IN      MX      10 alt4.aspmx.l.google.com.
holbertonschool.com.    300     IN      MX      5 alt1.aspmx.l.google.com.
holbertonschool.com.    300     IN      MX      5 alt2.aspmx.l.google.com.
holbertonschool.com.    60      IN      TXT     "1C8BC5F558"
holbertonschool.com.    60      IN      TXT     "MS=BB8A869E4E8A47D208F560DE7D83F199D1BB8F4F"
holbertonschool.com.    60      IN      TXT     "apple-domain-verification=sqTGlUgV9vVTnBuB"
holbertonschool.com.    60      IN      TXT     "dropbox-domain-verification=pvxn88z3e06i"
holbertonschool.com.    60      IN      TXT     "google-site-verification=lnffgexG_GGal6Fa53z0Ve4dJY4z4GXAmy1I2_ldotk"
holbertonschool.com.    60      IN      TXT     "intacct-esk=A3E9DCEA8FB6B747E0539A220D0A9719"
holbertonschool.com.    60      IN      TXT     "loaderio=67a0fbf5fb42755902d5415639d826a6"
holbertonschool.com.    60      IN      TXT     "v=spf1 include:mailgun.org include:_spf.google.com include:spf.exclaimer.net include:mail.zendesk.com include:servers.mcsv.net include:_spf.intacct.com ip4:104.209.35.28 ip4:191.237.4.149 ~all"
```
**Repo**:

- GitHub repository: `holbertonschool-cyber_security`
- Directory: `network_security/0x01_passive_reconnaissance`
- File: `4-dig_all.sh`

0/8 pts
#### 5. Find the sub !
mandatory

Write a bash script that fetch subdomains of given domain using `subfinder` command:

- Show only subdomains in output
- Write output in `Host,IP` format
- File to write output to `<domain>.txt`
```
┌──(yosri㉿HBTN-LAB)-[~/holbertonschool-cyber_security/network_security/0x01_passive_reconnaissance]
└─$ ./5-subfinder.sh holbertonschool.com
www.holbertonschool.com
yriry2.holbertonschool.com
read.holbertonschool.com
apply.holbertonschool.com
rails-assets.holbertonschool.com
staging-rails-assets-apply.holbertonschool.com
staging-apply-forum.holbertonschool.com
staging-apply.holbertonschool.com
apply-staging.holbertonschool.com
webflow.holbertonschool.com
blog.holbertonschool.com
support.holbertonschool.com
fr.holbertonschool.com
smile2021.holbertonschool.com
assets.holbertonschool.com
fr.webflow.holbertonschool.com
v3.holbertonschool.com
v2.holbertonschool.com
v1.holbertonschool.com
lvl2-discourse-staging.holbertonschool.com
beta.holbertonschool.com
hippokampoi.holbertonschool.com
holbertonschool.com
alpha.holbertonschool.com
en.fr.holbertonschool.com
blog-new.holbertonschool.com
help.holbertonschool.com
22support.holbertonschool.com

┌──(yosri㉿HBTN-LAB)-[~/holbertonschool-cyber_security/network_security/0x01_passive_reconnaissance]
└─$ cat holbertonschool.com.txt
fr.webflow.holbertonschool.com,151.139.128.10
en.fr.holbertonschool.com,151.139.128.10
alpha.holbertonschool.com,54.157.56.129
rails-assets.holbertonschool.com,52.85.96.82
read.holbertonschool.com,13.37.98.87
blog.holbertonschool.com,192.0.78.131
assets.holbertonschool.com,52.85.96.95
smile2021.holbertonschool.com,63.35.51.142
webflow.holbertonschool.com,63.35.51.142
v2.holbertonschool.com,34.203.198.145
holbertonschool.com,99.83.190.102
staging-apply-forum.holbertonschool.com,13.38.122.220
fr.holbertonschool.com,63.35.51.142
www.holbertonschool.com,63.35.51.142
v1.holbertonschool.com,54.86.136.129
lvl2-discourse-staging.holbertonschool.com,13.38.216.13
v3.holbertonschool.com,54.89.246.137
apply.holbertonschool.com,13.36.10.99
support.holbertonschool.com,104.16.53.111
yriry2.holbertonschool.com,52.47.143.83
help.holbertonschool.com,75.2.70.75
staging-apply.holbertonschool.com,35.180.20.42
staging-rails-assets-apply.holbertonschool.com,18.66.196.8
beta.holbertonschool.com,44.214.9.111
```
**Repo**:

- GitHub repository: `holbertonschool-cyber_security`
- Directory: `network_security/0x01_passive_reconnaissance`
- File: `5-subfinder.sh`

0/8 pts
#### 6. Search for us
mandatory

For this task, we need you to gather as much information as possible about the holbertonschool.com domain using `Shodan`*:

- Collect all ip ranges within `holbertonschool.com` domaine
- Collect Technologies and frameworks used within all subdomains of holbertonschool.com
- Write up your notes as a report in markdown format.

**Repo**:

- GitHub repository: `holbertonschool-cyber_security`
- Directory: `network_security/0x01_passive_reconnaissance`
- File: `holbertonschool_report.md`

0/5 pts
#### 7. Catch The flag - TXT
mandatory

Here we come to our first CTF within this module. **\o/**

For this challenge we are expecting you to:

- Target Domain `passive.hbtn`
- Connect to the VPN server
- Get a *Target Machine*
- Use this <target IP> as a dns resolver within `dig` command
```
    dig @<target IP> passive.hbtn
```
*Hints*

- The flag is hidden within `TXT record`

**Repo**:

- GitHub repository: `holbertonschool-cyber_security`
- Directory: `network_security/0x01_passive_reconnaissance`
- File: `100-flag.txt`

0/5 pts
#### 8. Catch The flag - NS
mandatory

For this challenge we are expecting you to:

- Target Domain `passive.hbtn`
- Connect to the VPN server
- Get a *Target Machine*
- Use this <target IP> as a dns resolver within `dig` command
```
    dig @<target IP> passive.hbtn
```
*Hints*

- The flag is hidden within `TXT record`
- Try to search within `nameserver` domains

**Repo**:

- GitHub repository: `holbertonschool-cyber_security`
- Directory: `network_security/0x01_passive_reconnaissance`
- File: `101-flag.txt`

0/5 pts
#### 9. Catch the flag - MX
mandatory

For this challenge we are expecting you to:
- Target Domain passive.hbtn
- Connect to the VPN server
- Get a Target Machine
- Use this <target IP> as a dns resolver within dig command
```
    dig @<target IP> `passive.hbtn`
```
*Hints*

- The flag is hidden within `TXT record`
- Try to search within `mail server` domains

**Repo**:

- GitHub repository: `holbertonschool-cyber_security`
- Directory: `network_security/`
- File: `102-flag.txt`

0/5 pts
