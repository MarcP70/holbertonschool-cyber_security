# Introduction to Cyber Security

- Amateur
- By: Yosri Ghorbel
- Weight: 1
- Your score will be updated as you progress.

## Resources
##### Important:

- [Kali Setup - Virtual Machine](https://www.kali.org/docs/virtualization)
- [Kali Setup - desktops & laptops](https://www.kali.org/docs/installation)

##### Read or watch:

- [What is Cybersecurity?](https://www.cisco.com/c/en/us/products/security/what-is-cybersecurity.html)
- [The 5 Types of Cybersecurity](https://www.officesolutionsit.com.au/blog/five-types-of-cyber-security)
- [The 5 Most Important Cybersecurity Concepts](https://securitymisunderstood.com/5-essential-cybersecurity-concepts-everyone-should-know)
- [Cybersecurity Basics: A Hands-on Approach](https://www.youtube.com/watch?v=inWWhr5tnEA)
- [Understanding Cybersecurity Threats](https://www.ibm.com/blog/types-of-cyberthreats)
- [Understanding the Fundamentals of Cybersecurity Frameworks](https://securityboulevard.com/2021/05/understanding-the-fundamentals-of-cybersecurity-frameworks)
- [The CIA Triad](https://www.techtarget.com/whatis/definition/Confidentiality-integrity-and-availability-CIA)
- [Cyber Security Risk Management](https://www.mbccs.com/what-is-cyber-security-risk-management)

##### References:

- [CISA](https://www.cisa.gov)
- [NIST](https://www.nist.gov)
- [OWASP](https://owasp.org)
- [SANS](https://www.sans.org)
- [ISF](https://www.securityforum.org)
- [ISC²](https://www.isc2.org)

## Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

- What is Cybersecurity?
- What are the core principles of cybersecurity? (CIA Triad)
- How does encryption contribute to security?
- What is risk management in cybersecurity?
- What are the different types of cybersecurity threats?
- What is the difference between a virus and a worm?
- What is social engineering in the context of security?
- What are the key components of an information security program?
- How do security policies and frameworks contribute to an organization’s security posture?
- What is the purpose of the OWASP Top Ten?
- What is the role of access control in cybersecurity?
- How does multi-factor authentication enhance security?
- What are the common methods for securing a network?

## Requirements
#### General

- All your files will be run on Kali Linux 2023.2
- Allowed editors: vi, vim, emacs
- You must substitute the IP range for $1.
- The first line of all your files should be exactly #!/bin/bash.
- All your files should end with a new line.
- All your scripts should be less than 4 lines long ($ wc -l file should print <= 4).
- You are not allowed to use backticks, &&, || or ;.
- Your code should use the Betty style. It will be checked using betty-style.pl and betty-doc.pl

<details>
<summary>Quiz questions</summary>

##### Question #0
>What is ethical hacking?
&#9744;    Unauthorized access to computer systems
&#9744;    Illegally exploiting vulnerabilities for personal gain
&#9745;    Testing computer systems for security vulnerabilities with permission
&#9744;    Creating and spreading computer viruses

##### Question #1
>Which of the following is NOT a phase in the ethical hacking process?
&#9744;    Reconnaissance
&#9745;    Exploitation
&#9744;    Patching
&#9744;    Reporting

##### Question #2
>What is the main goal of penetration testing in ethical hacking?
&#9744;    Destroying data
&#9744;    Identifying and exploiting vulnerabilities
&#9745;    Securing systems and networks
&#9744;    Encrypting sensitive information

##### Question #3
>What is social engineering in the context of ethical hacking?
&#9744;    Hacking social media accounts
&#9745;    Manipulating people to gain unauthorized access
&#9744;    Encrypting sensitive information
&#9744;    Bypassing firewalls

##### Question #4
>What is a ‘zero-day’ vulnerability in ethical hacking?
&#9744;    A vulnerability that has been exploited for zero days
&#9744;    A flaw that has been present for zero days
&#9745;    A vulnerability that is unknown to the software vendor
&#9744;    A flaw that is present in software for zero days

##### Question #5
>What is the role of a ‘white hat’ hacker in ethical hacking?
&#9744;    Maliciously exploiting vulnerabilities
&#9745;    Performing ethical hacking with permission
&#9744;    Creating and spreading malware
&#9744;    Engaging in cyber espionage

##### Question #6
>What is the difference between vulnerability assessment and penetration testing in ethical hacking?
&#9744;    They are the same thing
&#9744;    Vulnerability assessment identifies weaknesses, while penetration testing exploits them
&#9745;    Penetration testing identifies weaknesses, while vulnerability assessment patches them
&#9744;    Both are focused on fixing vulnerabilities

##### Question #7
>What is the first step in the ethical hacking process?
&#9744;    Reporting
&#9744;    Exploitation
&#9745;    Reconnaissance
&#9744;    Patching

##### Question #8
>What is the primary purpose of Kali Linux?
&#9744;    Office Productivity
&#9745;    Ethical Hacking and Penetration Testing
&#9744;    Graphic Design
&#9744;    Gaming

##### Question #9
>Which of the following tools is used for network scanning and enumeration in Kali Linux?
&#9744;    John the Ripper
&#9744;    Wireshark
&#9745;    Nmap
&#9744;    Hashcat

##### Question #10
>What does the Metasploit Framework provide in Kali Linux?
&#9745;    Exploit Development and Testing
&#9744;    Web Development Environment
&#9744;    Password Management
&#9744;    Network Traffic Analysis

##### Question #11
>What is the purpose of John the Ripper in Kali Linux?
&#9744;    Web Application Security Testing
&#9744;    Network Mapping
&#9744;    Wireless Network Analysis
&#9745;    Password Cracking

##### Question #12
>What type of analysis is Wireshark used for in Kali Linux?
&#9745;    Network Protocol Analysis
&#9744;    Password Cracking
&#9744;    Web Application Security Testing
&#9744;    Wireless Network Security

##### Question #13
>In Kali Linux, which tool is often used for web application security testing?
&#9744;    Hashcat
&#9745;    Burp Suite
&#9744;    Nmap
&#9744;    Aircrack-ng

##### Question #14
>Which of the following is a feature of Kali Linux that allows running it without installation?
&#9745;    Live Boot
&#9744;    Stealth Mode
&#9744;    Virtualization
&#9744;    Sandbox Environment
</details>

## Tasks
#### 0. Did you install kali ?
mandatory

Write a bash script that display the ``distributor ID`` in a concise single-line output.
```
┌──(yosri㉿hbtn-lab)-[…/cybersecurity_basics/0x00_cybersecurity_basics]
└─$ ./0-release.sh
Kali
```
##### Repo:

- GitHub repository: ``holbertonschool-cyber_security``
- Directory: ``cybersecurity_basics/0x00_introduction_cybersecurity``
- File: ``0-release.sh``

0/6 pts

#### 1. We always need strong Passwords
mandatory

Create a Bash script that generates a strong random password:

- Your script should be less than 3 lines long.
- You should accept password length as an args.
- You should use ``[:graph:]`` as character classes.

_The output may vary for each execution_
```
┌──(yosri㉿hbtn-lab)-[…/cybersecurity_basics/0x00_introduction_cybersecurity]
└─$ ./0-gen_password.sh 20
rg)A0UPL0^BQrvWa!1`1
```
##### Repo:

- GitHub repository: ``holbertonschool-cyber_security``
- Directory: ``cybersecurity_basics/0x00_introduction_cybersecurity``
- File: ``1-gen_password.sh``

0/6 pts

#### 2. Verify the integrity of a file
mandatory

Create a Bash script that validate the integrity of a file:

- Your script should be less than 3 lines long.
```
┌──(yosri㉿hbtn-lab)-[…/cybersecurity_basics/0x00_introduction_cybersecurity]
└─$ ./2-sha256_validator.sh test_file e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
test_file: OK
```
##### Repo:

- GitHub repository: ``holbertonschool-cyber_security``
- Directory: ``cybersecurity_basics/0x00_introduction_cybersecurity``
- File: ``2-sha256_validator.sh``

0/6 pts

#### 3. We need an SSH key pair!
mandatory

Create a Bash script that generates an RSA SSH key pair.

- Your key size should be ``4096``
```
┌──(yosri㉿hbtn-lab)-[…/cybersecurity_basics/0x00_introduction_cybersecurity]
└─$ ./3-gen_key.sh new_key
Generating public/private rsa key pair.
Your identification has been saved in new_key
Your public key has been saved in new_key.pub
The key fingerprint is:
SHA256:aq73wv2/5u6k/qoGF83U3DZNsy5jg7Omv+zCSHkdbUM yosri@hbtn-lab
The key's randomart image is:
+---[RSA 4096]----+
|           o . +.|
|          . oE+ +|
|         +  o. o |
|        . o..+.  |
|        S..oo=.. |
|      .+.. .+ +  |
|     .+++  o.    |
|     o+.oo+o.    |
|    .o.+o=O&O.   |
+----[SHA256]-----+

┌──(yosri㉿hbtn-lab)-[…/cybersecurity_basics/0x00_introduction_cybersecurity]
└─$ ls -l new_key*
-rw------- 1 yosri yosri 3381 Dec 19 18:50 new_key
-rw-r--r-- 1 yosri yosri  740 Dec 19 18:50 new_key.pub
```
##### Repo:

-  GitHub repository: ``holbertonschool-cyber_security``
- Directory: ``cybersecurity_basics/0x00_introduction_cybersecurity``
- File: ``3-gen_key.sh``

0/8 pts

#### 4. Let's Monitor root activity
mandatory

Create a Bash script that monitors all processes started by specified user.

- Your script should accept ``user`` as 1st agrs.
- Your script should only print processes that have both ``VSZ`` and ``RSS`` greater than 0.

_The output may vary depending on your active processes_
```
┌──(yosri㉿hbtn-lab)-[…/cybersecurity_basics/0x00_introduction_cybersecurity]
└─$ ./4-root_process.sh root
root           1  0.0  0.0  21172 12376 ?        Ss   07:38   0:01 /sbin/init splash
root         598  0.0  0.1  66380 19908 ?        Ss   07:39   0:00 /lib/systemd/systemd-journald
root         614  0.0  0.0 152264  1548 ?        Ssl  07:39   0:00 vmware-vmblock-fuse /run/vmblock-fuse -o rw,subtype=vmware-vmblock,default_permissions,allow_other,dev,suid
root         619  0.0  0.0  28688  8192 ?        Ss   07:39   0:00 /lib/systemd/systemd-udevd
root         768  0.0  0.0   8264  5304 ?        Ss   07:39   0:00 /usr/sbin/haveged --Foreground --verbose=1
root         779  0.0  0.0 315484 12708 ?        Ssl  07:39   0:30 /usr/bin/vmtoolsd
root        1005  0.0  0.0 311384  9268 ?        Ssl  07:39   0:00 /usr/libexec/accounts-daemon
root        1006  0.0  0.0   7032  2432 ?        Ss   07:39   0:00 /usr/sbin/cron -f
root        1014  0.0  0.0  17592  8320 ?        Ss   07:39   0:00 /lib/systemd/systemd-logind
root        1048  0.0  0.1 333664 20784 ?        Ssl  07:39   0:02 /usr/sbin/NetworkManager --no-daemon
root        1056  0.0  0.0 392124 11992 ?        Ssl  07:39   0:00 /usr/sbin/ModemManager
root        1119  0.0  0.0 382288  8900 ?        SLsl 07:39   0:00 /usr/sbin/lightdm
root        1121  0.0  0.2 2091040 44628 ?       Ssl  07:39   0:41 /usr/bin/containerd
root        1605  0.0  0.0 314176 12784 ?        Ssl  07:39   0:00 /usr/libexec/upowerd
root        1838  0.0  0.1 471588 18520 ?        Ssl  07:39   0:00 /usr/libexec/udisks2/udisksd
```
##### Repo:

- GitHub repository: ``holbertonschool-cyber_security``
- Directory: ``cybersecurity_basics/0x00_introduction_cybersecurity``
- File: ``4-root_process.sh``

0/6 pts
