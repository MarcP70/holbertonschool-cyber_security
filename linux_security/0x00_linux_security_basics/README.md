Linux Security Basics

    Amateur
    By: Maroua Alaya
    Weight: 1
    Your score will be updated once you launch the project review.

Resources
Read or watch:

    What is the Shell
    What is kali linux
    File System Hierarchy
    Linux file system
    Linux Security Command
    What are the Advantages of Using Linux for Cybersecurity

man or help:
Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

    What is Linux
    What is a Linux Command
    What is the structure of the Linux operating system
    What is the purpose of the FHS and what are the benefits of using it
    What are the different directories in the Linux file system, and what are their purposes
    How to protect files and directories
    How to monitor and investigate system activity
    How to securely transfer files and data
    How to configure and manage a firewall
    How to identify and terminate malicious processes

Working with Commands:

    How to use the ps and kill commands to identify and terminate malicious processes
    How to use the netstat and ss commands to monitor network traffic for suspicious activity
    How to use the nmap, lynis and tcpdump commands to analyze network traffic for suspicious behavior
    How to use iptables and ufw to manage the firewall rules on Linux systems

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

Quiz questions
Great! You've completed the quiz successfully! Keep going! (Show quiz)
Tasks
0. What secrets hold
mandatory

Write a bash script that show you the last 5 logins session for users with their corresponding dates.

    You should run your code as privileged user. root or sudoers.

Depending on your machine, the output could change.

┌──(maroua㉿HBTN-LAB)-[~/Linux Security Basics]
└─🏴 ./0-login.sh
[sudo] password for maroua:
root     tty1                          Thu Oct 12 10:08:24 2023   still logged in
root     ttyS0                         Thu Oct 12 10:08:23 2023   still logged in
reboot   system boot  6.5.0-kali1-clou Thu Oct 12 10:08:10 2023   still running
root     tty1                          Tue Oct 10 15:08:21 2023 - down                      (19:26)
root     ttyS0                         Tue Oct 10 15:08:21 2023 - down                      (19:26)

wtmp begins Mon Sep 25 16:29:08 2023

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: linux_security/0x00_linux_security_basics
    File: 0-login.sh

0/8 pts
1. Shows your Linux connections, not your social status!
mandatory

Write a bash script that display a list of network socket connections

    You should run your code as privileged user. root or sudoers.
    You should Show all sockets, including listening and non-listening sockets.
    You should Display numerical addresses (IP addresses and port numbers).
    You should Limit the output to TCP sockets.
    You should Display the process information associated with each socket.

Depending on your machine, the output could change.

┌──(maroua㉿HBTN-LAB)-[~/Linux Security Basics]
└─🏴 ./1-active-connections.sh
[sudo] password for maroua:
State   Recv-Q   Send-Q     Local Address:Port   Peer Address:Port   Process
LISTEN  0        128                                          0.0.0.0:22                                           0.0.0.0:*
LISTEN  0        100                                          0.0.0.0:5000                                         0.0.0.0:*
LISTEN  0        5                                          127.0.0.1:5901                                         0.0.0.0:*                      users:(("Xtigervnc",pid=923,fd=9))
ESTAB   0        0                                          127.0.0.1:5901                                       127.0.0.1:36828                  users:(("Xtigervnc",pid=923,fd=38))
ESTAB   0        0                                          127.0.0.1:36828                                      127.0.0.1:5901
ESTAB   0        0                                         6.19.156.8:5000                                      6.19.0.167:60812
LISTEN  0        128                                             [::]:22                                              [::]:*
LISTEN  0        5                                              [::1]:5901                                            [::]:*                      users:(("Xtigervnc",pid=923,fd=10))

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: linux_security/0x00_linux_security_basics
    File: 1-active-connections.sh

0/4 pts
2. Firewall rules: Your network's first line of defense!
mandatory

Write a bash script that allow only incoming connections with the TCP protocol through port 80.

    You should run your code as privileged user. root or sudoers.

Depending on your machine, the output could change.

┌──(maroua㉿HBTN-LAB)-[~/Linux Security Basics]
└─🏴 ./2-incoming-connections.sh
[sudo] password for maroua:
Rules updated
Rules updated (v6)

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: linux_security/0x00_linux_security_basics
    File: 2-incoming-connections.sh

0/8 pts
3. Securing your network, one rule at a time!
mandatory

Write a bash script that list all the rules in the security table of the firewall.

    You should run your code as privileged user. root or sudoers.
    You should use the verbose mode.

Depending on your machine, the output could change.

┌──(maroua㉿HBTN-LAB)-[~/Linux Security Basics]
└─🏴 ./3-firewall_rules.sh
[sudo] password for maroua:
Chain INPUT (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               destination



Chain FORWARD (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               destination


Chain OUTPUT (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               destination

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: linux_security/0x00_linux_security_basics
    File: 3-firewall_rules.sh

0/8 pts
4. See what's talking, and who's listening!
mandatory

Write a bash script that list services, their current state, and their corresponding ports.

    You should run your code as privileged user. root or sudoers.

Depending on your machine, the output could change.

┌──(maroua㉿HBTN-LAB)-[~/Linux Security Basics]
└─🏴 ./4-network-services.sh
[sudo] password for maroua:
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name

tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      881/sshd: /usr/sbin
tcp        0      0 0.0.0.0:5000            0.0.0.0:*               LISTEN      913/python3

tcp        0      0 127.0.0.1:5901          0.0.0.0:*               LISTEN      923/Xtigervnc

tcp6       0      0 :::22                   :::*                    LISTEN      881/sshd: /usr/sbin
tcp6       0      0 ::1:5901                :::*                    LISTEN      923/Xtigervnc

udp        0      0 0.0.0.0:68              0.0.0.0:*                           525/dhclient

udp6       0      0 fe80::85e:34ff:fea6:546 :::*                                622/dhclient

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: linux_security/0x00_linux_security_basics
    File: 4-network-services.sh

0/4 pts
5. Where it talks, we all listen!
mandatory

Write a bash script that initiate a system audit for scanning the machine.

    You should run your code as privileged user. root or sudoers.

Depending on your machine, the output could change.

┌──(maroua㉿HBTN-LAB)-[~/Linux Security Basics]
└─🏴 ./5-audit-system.sh
[sudo] password for maroua:



[ Lynis 3.0.8 ]


################################################################################
  Lynis comes with ABSOLUTELY NO WARRANTY. This is free software, and you are
  welcome to redistribute it under the terms of the GNU General Public License.
  See the LICENSE file for details about using this software.


2007-2021, CISOfy - https://cisofy.com/lynis/
  Enterprise support available (compliance, plugins, interface and tools)
################################################################################


[+] Initializing program



    Detecting OS...                                           [ DONE ]

    Checking profiles...                                      [ DONE ]





Program version:           3.0.8
  Operating system:          Linux
  Operating system name:     Kali Linux
  Operating system version:  Rolling release
  Kernel version:            6.5.0
  Hardware platform:         x86_64
  Hostname:                  kali




Profiles:                  /etc/lynis/default.prf
  Log file:                  /var/log/lynis.log
  Report file:               /var/log/lynis-report.dat
  Report version:            1.0
  Plugin directory:          /etc/lynis/plugins




Auditor:                   [Not Specified]
  Language:                  en
  Test category:             all
  Test group:                all


...


================================================================================


Lynis 3.0.8


Auditing, system hardening, and compliance for UNIX-based systems
  (Linux, macOS, BSD, and others)


2007-2021, CISOfy - https://cisofy.com/lynis/
  Enterprise support available (compliance, plugins, interface and tools)


================================================================================


[TIP]: Enhance Lynis audits by adding your settings to custom.prf (see /etc/lynis/default.prf for all settings)

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: linux_security/0x00_linux_security_basics
    File: 5-audit-system.sh

0/4 pts
6. Your eyes and ears on the network!
mandatory

Write a bash script that capture and analyze network traffic going through the system.

    You should run your code as privileged user. root or sudoers.
    You should limit the number of packets captured to 5

Depending on your machine, the output could change.

┌──(maroua㉿HBTN-LAB)-[~/Linux Security Basics]
└─🏴 ./6-capture-analyze.sh
[sudo] password for maroua:
tcpdump: data link type LINUXSLL2
tcpdump: verbose output suppressed, use -v[v]... for full protocol decode
listening on any, link-type LINUXSLL2 (Linux cooked v2), snapshot length 262144 bytes
09:10:03.397281 eth0  In  IP ip-6-19-0-167.eu-central-1.compute.internal.36014 > ip-6-19-156-8.eu-central-1.compute.internal.5000: Flags [P.], seq 3466652703:3466652721, ack 3521647673, win 24559, options [nop,nop,TS val 17390194 ecr 4276499227], length 18
09:10:03.397474 lo    In  IP localhost.34870 > localhost.5901: Flags [P.], seq 4075666532:4075666544, ack 2019255620, win 24573, options [nop,nop,TS val 1065549505 ecr 1065549431], length 12
09:10:03.398937 eth0  In  IP ip-6-19-0-167.eu-central-1.compute.internal.36014 > ip-6-19-156-8.eu-central-1.compute.internal.5000: Flags [P.], seq 18:66, ack 1, win 24559, options [nop,nop,TS val 17390195 ecr 4276499227], length 48
09:10:03.398990 eth0  In  IP ip-6-19-0-167.eu-central-1.compute.internal.36014 > ip-6-19-156-8.eu-central-1.compute.internal.5000: Flags [P.], seq 66:82, ack 1, win 24559, options [nop,nop,TS val 17390195 ecr 4276499227], length 16
09:10:03.399029 eth0  Out IP ip-6-19-156-8.eu-central-1.compute.internal.5000 > ip-6-19-0-167.eu-central-1.compute.internal.36014: Flags [.], ack 82, win 455, options [nop,nop,TS val 4276499301 ecr 17390194], length 0
5 packets captured
27 packets received by filter
0 packets dropped by kernel

Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: linux_security/0x00_linux_security_basics
    File: 6-capture-analyze.sh

0/4 pts
7. So fast, it'll make your router sweat!
mandatory

Write a bash script that scan a subnetwork to discover live host using scan.

    You should run your code as privileged user root or sudoers.
    Your script should accept a subnetwork as an arguments $1.

Depending on the scanned subnetwork, the output could change.

┌──(maroua㉿HBTN-LAB)-[~/Linux Security Basics]
└─🏴 ./7-scan.sh www.holbertonschool.com
[sudo] password for maroua:
[sudo] password for maroua:
Starting Nmap 7.94 ( https://nmap.org ) at 2023-10-19 15:46 UTC
Nmap scan report for www.holbertonschool.com (34.249.200.254)
Host is up (0.026s latency).
Other addresses for www.holbertonschool.com (not scanned): 52.17.119.105 63.35.51.142
rDNS record for 34.249.200.254: ec2-34-249-200-254.eu-west-1.compute.amazonaws.com
Not shown: 998 filtered tcp ports (no-response)
PORT    STATE SERVICE
80/tcp  open  http
443/tcp open  https



Nmap done: 1 IP address (1 host up) scanned in 4.23 seconds


Repo:

    GitHub repository: holbertonschool-cyber_security
    Directory: linux_security/0x00_linux_security_basics
    File: 7-scan.sh

0/4 pts 
