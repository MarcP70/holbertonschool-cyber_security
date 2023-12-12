Nmap Live Host Discovery

    Amateur
    By: Yosri Ghorbel
    Weight: 2
    Your score will be updated once you launch the project review.

Resources
Read or watch:

    Nmap documentation
    Nmap Description
    Nmap Options Summary
    Target Specification

References:

    Host Discovery

Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

    What is nmap.
    How to use nmap.
    How does nmap scan work
    What is Subnetworks.
    How to enumerate Targets.
    What is ARP Scan
    What is ICMP Echo Scan
    What is ICMP Timestamp Scan
    What is ICMP Address Mask Scan
    What is TCP SYN Ping Scan
    What is TCP ACK Ping Scan
    What is UDP Ping Scan
    What can nmap detect
    How to scan an IP address with nmap.
    How to check ports with nmap.

Requirements
General

    Allowed editors: vi, vim, emacs.
    All your scripts will be tested on Kali Linux.
    All your scripts should be exactly two lines long ($ wc -l file should print 2)
    You must substitute the IP range for $1.
    All your files should end with a new line (Why?)
    The first line of all your files should be exactly #!/bin/bash.
    A README.md file, at the root of the folder of the project, is mandatory
    You are not allowed to use backticks, &&, || or ;.
    Your code should use the Betty style. It will be checked using betty-style.pl and betty-doc.pl
    All your files must be executable

More Info
Install nmap.

If nmap is not already installed on your terminal

$ sudo apt-get update
$ sudo apt-get install nmap

Basic usage nmap.

$ nmap <IP address>

Quiz questions
Great! You've completed the quiz successfully! Keep going! (Show quiz)
Tasks
0. Will arp be enough ?
mandatory

Write a bash script that scan a subnetwork to discover live host using ARP scan.

    You should use nmap.
    Your code should tell nmap not to do a port scan after host discovery.
    You should run your code as privileged user. root or sudoers.
    Your script should accept a subnetwork as an arguments $1.

Depending on the scanned subnetwork, the output could change.
We can’t expect to learn about the Target MAC Address, unless we are in the the same subnetwork.

┌──(yosri)-[~/0x04_nmap_live_hosts_discovery]
└─🏴 ./0-arp_scan.sh 192.168.65.0/24
[sudo] password for yosri:
Starting Nmap 7.93 ( https://nmap.org ) at 2023-05-22 05:02 CDT
Nmap scan report for 192.168.65.1
Host is up (0.00064s latency).
MAC Address: C6:91:0C:4B:4E:64 (Unknown)
Nmap scan report for 192.168.65.2
Host is up.
Nmap done: 256 IP addresses (2 hosts up) scanned in 2.03 seconds

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: network_security/0x04_nmap_live_hosts_discovery
    File: 0-arp_scan.sh

0/8 pts
1. Host, do you hear me ?
mandatory

Write a bash script that scan a subnetwork to discover live host using ICMP Echo scan.

    You should use nmap.
    Your code should tell nmap not to do a port scan after host discovery.
    You should run your code as privileged user. root or sudoers.
    Your script should accept a subnetwork as an arguments $1.

Depending on the scanned subnetwork, the output could change.

┌──(yosri)-[~/0x04_nmap_live_hosts_discovery]
└─🏴 ./1-icmp_echo_scan.sh 6.19.100.0/24
[sudo] password for yosri:
Starting Nmap 7.93 ( https://nmap.org ) at 2023-05-21 14:02 CDT
Nmap scan report for 6.19.100.2
Host is up (0.14s latency).
Nmap done: 256 IP addresses (1 host up) scanned in 19.03 seconds

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: network_security/0x04_nmap_live_hosts_discovery
    File: 1-icmp_echo_scan.sh

0/8 pts
2. Time always matter
mandatory

Write a bash script that scan a subnetwork to discover live host using ICMP Timestamp scan.

    You should use nmap.
    Your code should tell nmap not to do a port scan after host discovery.
    You should run your code as privileged user. root or sudoers.
    Your script should accept a subnetwork as an arguments $1.

Depending on the scanned subnetwork, the output could change.

┌──(yosri)-[~/0x04_nmap_live_hosts_discovery]
└─🏴 ./2-icmp_timestamp_scan.sh 6.19.100.0/24
[sudo] password for yosri:
Starting Nmap 7.93 ( https://nmap.org ) at 2023-05-21 14:17 CDT
Nmap scan report for 6.19.100.2
Host is up (0.16s latency).
Nmap done: 256 IP addresses (1 host up) scanned in 19.93 seconds

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: network_security/0x04_nmap_live_hosts_discovery
    File: 2-icmp_timestamp_scan.sh

0/8 pts
3. Sometimes we need Masks !
mandatory

Write a bash script that scan a subnetwork to discover live host using ICMP Address Mask scan.

    You should use nmap.
    Your code should tell nmap not to do a port scan after host discovery.
    You should run your code as privileged user. root or sudoers.
    Your script should accept a subnetwork as an arguments $1.

Depending on the scanned subnetwork, the output could change.

┌──(yosri)-[~/0x04_nmap_live_hosts_discovery]
└─🏴 ./3-icmp_address_mask_scan.sh 6.19.100.0/24
[sudo] password for yosri
Starting Nmap 7.93 ( https://nmap.org ) at 2023-05-10 15:15 CDT
Nmap done: 254 IP address (0 hosts up) scanned in 53.01 seconds

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: network_security/0x04_nmap_live_hosts_discovery
    File: 3-icmp_address_mask_scan.sh

0/8 pts
4. SYN Scan me
mandatory

Write a bash script that scan a subnetwork to discover live host using TCP SYN Ping scan.

    You should use nmap.
    Your code should tell nmap not to do a port scan after host discovery.
    Your code should scan for those ports22,80,443.
    Your script should accept a subnetwork as an arguments $1.

Depending on the scanned subnetwork, the output could change.

┌──(yosri)-[~/0x04_nmap_live_hosts_discovery]
└─🏴 ./4-tcp_syn_ping.sh 6.19.100.0/24
Starting Nmap 7.93 ( https://nmap.org ) at 2023-05-21 14:40 CDT
Nmap scan report for 6.19.100.2
Host is up (0.12s latency).
Nmap done: 256 IP addresses (1 host up) scanned in 22.42 seconds

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: network_security/0x04_nmap_live_hosts_discovery
    File: 4-tcp_syn_ping.sh

0/8 pts
5. Are your privileged enough to scan me ?
mandatory

Write a bash script that scan a subnetwork to discover live host using *TCP ACK Ping * scan.

    You should use nmap.
    Your code should tell nmap not to do a port scan after host discovery.
    Your code should scan for those ports 22,80,443.
    You should run your code as privileged user. root or sudoers.
    Your script should accept a subnetwork as an arguments $1.

Depending on the scanned subnetwork, the output could change. Unprivileged users have no choice but to complete the 3-way handshake if the port is open.

┌──(yosri)-[~/0x04_nmap_live_hosts_discovery]
└─🏴 ./5-tcp_ack_ping.sh 6.19.100.0/24
[sudo] password for yosri:
Starting Nmap 7.93 ( https://nmap.org ) at 2023-05-10 15:15 CDT
Nmap done: 256 IP addresses (0 hosts up) scanned in 154.50 seconds

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: network_security/0x04_nmap_live_hosts_discovery
    File: 5-tcp_ack_ping.sh

0/8 pts
6. UDP is our last hope
mandatory

Write a bash script that scan a subnetwork to discover live host using UDP Ping scan.

    You should use nmap.
    Your code should tell nmap not to do a port scan after host discovery.
    Your code should scan for those ports 53,161,162.
    You should run your code as privileged user. root or sudoers.
    Your script should accept a subnetwork as an arguments $1.

┌──(yosri)-[~/0x04_nmap_live_hosts_discovery]
└─🏴 ./6-udp_ping_scan.sh 6.19.100.0/24
[sudo] password for yosri:
Starting Nmap 7.93 ( https://nmap.org ) at 2023-05-21 15:10 CDT
Nmap scan report for 6.19.100.2
Host is up (0.13s latency).
Nmap done: 256 IP addresses (1 host up) scanned in 23.39 seconds

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: network_security/0x04_nmap_live_hosts_discovery
    File: 6-udp_ping_scan.sh

0/8 pts
7. Simple Catch, is it mimicked ?
mandatory

Time To Ping The Target

Catch the flag time is on, here is some tips:

    You should run your scan as privileged user. root or sudoers.
    The Current Flag is hidden within UDP opened port service VERSION
    Two hundred, Three hundred but no more. -p200-300

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: network_security/0x04_nmap_live_hosts_discovery
    File: 100-flag.txt

0/5 pts 
