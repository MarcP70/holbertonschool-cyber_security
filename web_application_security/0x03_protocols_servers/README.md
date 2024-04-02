Protocols and Servers
 Amateur
 By: Abderrahmen Hidoussi
 Weight: 1
 Migrated to checker v2:
 Your score will be updated as you progress.
Concepts
For this project, we expect you to look at these concepts:

Network File System (NFS)
Simple Mail Transfer Protocol (SMTP)
Simple Network Management Protocol (SNMP)


Resources
Read or watch:
Network Protocols Explained (TCP/IP, UDP, ICMP, DNS, DHCP)
What is SMTP? - Simple Mail Transfer Protocol Explained
SNMP Explained: Network Monitoring Protocol Made Easy
SMB Protocol Explained: File Sharing Between Devices
Understanding LDAP: Lightweight Directory Access Protocol
Remote Desktop Protocol (RDP) Explained
The Network Stack & Protocols Explained
Cybersecurity Protocols: Understanding HTTPS, SFTP, SSH
Understanding Network Protocols: A Beginner’s Guide
Network Protocols Explained: A Comprehensive Guide
References:
List of Network Protocols
Glossary of Cyber Security Terms
HackerOne Blog - Network Security Resources
Learning Objectives
At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

What is the purpose of the NSF protocol?
How does SMTP work to send emails?
What information does SNMP provide about network devices?
How does SMB enable file sharing between different operating systems?
What is the role of LDAP in authentication and authorization?
Explain the security risks associated with using RDP.
Differentiate between secure protocols like HTTPS and SFTP from their insecure counterparts.
Explain the benefits of using SSH for secure remote access.
Explain the concept of port numbers and their significance in network communication.
Differentiate between different types of network encryption protocols.
Explain the importance of keeping network protocols up-to-date and patched.
Requirements
General
All your files will be run on Kali Linux 2023.2
Allowed editors: vi, vim, emacs
You must substitute the IP range for $1.
The first line of all your files should be exactly #!/bin/bash.
All your files should end with a new line.
All your scripts should be less than 4 lines long $ wc -l file should print <= 4.
You are not allowed to use backticks, &&, || or ;.
Your code should use the Betty style. It will be checked using betty-style.pl and betty-doc.pl
Quiz questions
Great! You've completed the quiz successfully! Keep going! (Show quiz)
Tasks
0. Analyze `iptables` Rules
mandatory
Write a script to display all current iptables rules in a readable format, including line numbers.

$ sudo ./iptables.sh
Chain DOCKER-USER (1 references)
num   pkts bytes target     prot opt in     out     source               destination

1        0     0 RETURN     0    --  *      *       0.0.0.0/0            0.0.0.0/0
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x03_protocols_servers
File: iptables.sh

0/6 pts
1. Audit SSH Configuration
mandatory
Write a script to check for and report any non-standard SSH configuration settings in /etc/ssh/sshd_config.

$ sudo ./iptables.sh
Include /etc/ssh/sshdconfig.d/*.conf
KbdInteractiveAuthentication no
UsePAM yes
X11Forwarding yes
PrintMotd no
AcceptEnv LANG LC*
Subsystem       sftp    /usr/lib/openssh/sftp-server
PasswordAuthentication yes
PermitRootLogin yes
AuthorizedKeysFile .ssh/authorized_keys
TCPKeepAlive yes

Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x03_protocols_servers
File: audit.sh

0/4 pts
2. Harden Linux Server
mandatory
Write a script to list all world-writable directories and set their permissions to a more secure level.

Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x03_protocols_servers

0/6 pts
3. Identify Common Vulnerabilities
mandatory
Write a script to check for unpatched common vulnerabilities using lynis audit tool.

$ sudo ./identify.sh
[ Lynis 3.0.9 ]
################################################################################
  Lynis comes with ABSOLUTELY NO WARRANTY. This is free software, and you are
  welcome to redistribute it under the terms of the GNU General Public License.
  See the LICENSE file for details about using this software.
  2007-2021, CISOfy - https://cisofy.com/lynis/
  Enterprise support available (compliance, plugins, interface and tools)
################################################################################
[+] Initializing program
------------------------------------
  ###################################################################
  #                                                                 #
  #   NON-PRIVILEGED SCAN MODE                                      #
  #                                                                 #
  ###################################################################
  NOTES:
  --------------
  * Some tests will be skipped (as they require root permissions)
  * Some tests might fail silently or give different results
  - Detecting OS...                                           [ DONE ]
  - Checking profiles...                                      [ DONE ]
  ---------------------------------------------------
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x03_protocols_servers

0/6 pts
4. Identify Common Vulnerabilities
mandatory
Write a script to check for unpatched common vulnerabilities using lynis audit tool.

$sudo ./identify.sh
[ Lynis 3.0.9 ]
################################################################################
  Lynis comes with ABSOLUTELY NO WARRANTY. This is free software, and you are
  welcome to redistribute it under the terms of the GNU General Public License.
  See the LICENSE file for details about using this software.
  2007-2021, CISOfy - https://cisofy.com/lynis/
  Enterprise support available (compliance, plugins, interface and tools)
################################################################################
[+] Initializing program
------------------------------------
  ###################################################################
  #                                                                 #
  #   NON-PRIVILEGED SCAN MODE                                      #
  #                                                                 #
  ###################################################################
  NOTES:
  --------------
  * Some tests will be skipped (as they require root permissions)
  * Some tests might fail silently or give different results
  - Detecting OS...                                           [ DONE ]
  - Checking profiles...                                      [ DONE ]
  ---------------------------------------------------
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x03_protocols_servers
File: identify.sh

0/6 pts
5. Check for NFS Vulnerabilities
mandatory
Write a script to scan for NFS shares that are accessible by anyone on the network.

Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x03_protocols_servers

0/6 pts
6. Audit SNMP Configuration
mandatory
Write a script to find SNMP configurations that allow public access.

Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x03_protocols_servers

0/6 pts
7. Examine SMTP Server Settings
mandatory
Write a script to check the SMTP server configuration for lack of STARTTLS or other security features. If STARTTLS not configured return STARTTLS not configured

Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x03_protocols_servers

0/6 pts
8. Simulate DoS Attack on HTTP Server
mandatory
Write a script to simulate a basic Denial of Service attack on an HTTP server using hping3.

Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x03_protocols_servers

0/6 pts
9. Check for Weak SSL/TLS Ciphers
mandatory
Write a script to test an SSL/TLS server’s ciphers and report any weak ciphers using nmap.

Repo:

GitHub repository: holbertonschool-cyber_security
Directory: web_application_security/0x03_protocols_servers

0/6 pts
